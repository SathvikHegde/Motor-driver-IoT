#include "modbus_driver.h"
#include <SoftwareSerial.h>

// SoftwareSerial instance for RS485 communication
static SoftwareSerial rs485Serial(RS485_RX_PIN, RS485_TX_PIN);

void ModbusDriver::begin() {
    pinMode(RS485_RX_PIN, INPUT_PULLUP);
    pinMode(RS485_TX_PIN, OUTPUT);
    digitalWrite(RS485_TX_PIN, HIGH);

    rs485Serial.begin(MODBUS_BAUD_RATE, SWSERIAL_8N1, RS485_RX_PIN, RS485_TX_PIN, false, 256);
    rs485Serial.listen();

    Serial.println(F("[Modbus] Initialized on SoftwareSerial with INPUT_PULLUP"));
    Serial.printf("[Modbus] RX=D%d (GPIO%d) TX=D%d (GPIO%d) Baud=%d\n",
                  RS485_RX_PIN == 12 ? 6 : RS485_RX_PIN, RS485_RX_PIN,
                  RS485_TX_PIN == 13 ? 7 : RS485_TX_PIN, RS485_TX_PIN,
                  MODBUS_BAUD_RATE);
}

void ModbusDriver::printHex(const char* label, const uint8_t* data, uint8_t len) {
    Serial.printf("[Modbus %s] (%d bytes):", label, len);
    for (uint8_t i = 0; i < len; i++) {
        Serial.printf(" %02X", data[i]);
    }
    Serial.println();
}

bool ModbusDriver::readRegisters(uint16_t startReg, uint16_t numRegs, uint16_t* values) {
    uint8_t reqFrame[8];
    uint8_t reqLen;
    uint8_t respBuf[64];

    buildReadFrame(MODBUS_SLAVE_ADDR, startReg, numRegs, reqFrame, reqLen);
    uint8_t respLen = sendRequest(reqFrame, reqLen, respBuf, sizeof(respBuf));

    // Expected response: [addr][0x03][byteCount = numRegs * 2][data...][crcLo][crcHi]
    uint8_t expectedBytes = 3 + (numRegs * 2) + 2;
    if (respLen < expectedBytes) {
        return false;
    }

    if (respBuf[1] & 0x80) {
        Serial.printf("[Modbus] Read exception for reg 0x%04X: 0x%02X\n", startReg, respBuf[2]);
        return false;
    }

    if (respBuf[2] != (numRegs * 2)) {
        Serial.printf("[Modbus] Unexpected byte count %d (expected %d)\n", respBuf[2], numRegs * 2);
        return false;
    }

    for (uint16_t i = 0; i < numRegs; i++) {
        values[i] = (respBuf[3 + i * 2] << 8) | respBuf[3 + i * 2 + 1];
    }

    return true;
}

bool ModbusDriver::readSingleRegister(uint16_t regAddress, uint16_t& value) {
    uint16_t val;
    if (readRegisters(regAddress, 1, &val)) {
        value = val;
        return true;
    }
    return false;
}

bool ModbusDriver::readStatus(VFDStatus& status) {
    status.commOk = false;

    // 1. Try reading the block 0x3000..0x3004 (5 registers)
    uint16_t regBlock[5];
    bool blockSuccess = readRegisters(REG_MONITOR_START, REG_MONITOR_COUNT, regBlock);

    if (blockSuccess) {
        status.operationFrequency = regBlock[0] / 100.0f;  // 0x3000
        // regBlock[1] is setting frequency (0x3001)
        status.busVoltage         = regBlock[2] / 10.0f;   // 0x3002
        status.outputVoltage      = regBlock[3] / 10.0f;   // 0x3003
        status.outputCurrent      = regBlock[4] / 10.0f;   // 0x3004
    } else {
        // Fallback: Try reading monitoring registers individually
        Serial.println(F("[Modbus] Block read failed, trying individual registers..."));
        uint16_t rawFreq = 0, rawBusV = 0, rawOutV = 0, rawOutI = 0;

        bool freqOk = readSingleRegister(REG_OP_FREQUENCY, rawFreq);
        if (!freqOk) {
            Serial.println(F("[Modbus] Individual read 0x3000 failed"));
            return false;
        }

        readSingleRegister(REG_BUS_VOLTAGE, rawBusV);
        readSingleRegister(REG_OUTPUT_VOLTAGE, rawOutV);
        readSingleRegister(REG_OUTPUT_CURRENT, rawOutI);

        status.operationFrequency = rawFreq / 100.0f;
        status.busVoltage         = rawBusV / 10.0f;
        status.outputVoltage      = rawOutV / 10.0f;
        status.outputCurrent      = rawOutI / 10.0f;
    }

    // 2. Read output power: 0x3006
    uint16_t rawPower = 0;
    if (readSingleRegister(REG_OUTPUT_POWER, rawPower)) {
        status.outputPower = ((int16_t)rawPower) / 10.0f;  // % of rated
    } else {
        status.outputPower = 0.0f;
    }

    // 3. Read fault code: 0x2102
    uint16_t rawFault = 0;
    if (readSingleRegister(REG_FAULT_CODE, rawFault)) {
        status.faultCode = rawFault;
    } else {
        status.faultCode = 0;
    }

    // Determine running state
    status.isRunning = (status.operationFrequency > 0.01f && status.faultCode == 0);
    status.commOk = true;

    return true;
}

bool ModbusDriver::sendCommand(uint16_t command) {
    uint8_t reqFrame[8];
    uint8_t reqLen;
    uint8_t respBuf[32];

    buildWriteFrame(MODBUS_SLAVE_ADDR, REG_CONTROL_COMMAND, command,
                    reqFrame, reqLen);

    uint8_t respLen = sendRequest(reqFrame, reqLen, respBuf, sizeof(respBuf));

    if (respLen < 8) {
        Serial.printf("[Modbus] Command 0x%04X response timeout/error\n", command);
        return false;
    }

    if (respBuf[1] & 0x80) {
        Serial.printf("[Modbus] Command exception: 0x%02X\n", respBuf[2]);
        return false;
    }

    Serial.printf("[Modbus] Command 0x%04X executed successfully\n", command);
    return true;
}

// ─────────────────────────────────────────────────────────────
//  Low-level Modbus frame construction and I/O
// ─────────────────────────────────────────────────────────────

uint8_t ModbusDriver::sendRequest(uint8_t* request, uint8_t requestLen,
                                   uint8_t* response, uint8_t maxResponseLen) {
    for (int attempt = 0; attempt <= MODBUS_RETRIES; attempt++) {
        // Flush any stale data in the receive buffer
        while (rs485Serial.available()) {
            rs485Serial.read();
        }

        // Modbus inter-frame silence (3.5 char times ≈ 4ms at 9600)
        delay(MODBUS_FRAME_DELAY_MS);

        // Send request
        printHex("TX", request, requestLen);
        rs485Serial.write(request, requestLen);
        rs485Serial.flush();

        // Collect incoming bytes
        // Auto-direction module might echo TX bytes, or VFD responds
        uint8_t rawBuf[64];
        uint8_t rawLen = 0;
        unsigned long startTime = millis();
        unsigned long lastByteTime = 0;

        while ((millis() - startTime) < MODBUS_TIMEOUT_MS) {
            while (rs485Serial.available()) {
                if (rawLen < sizeof(rawBuf)) {
                    rawBuf[rawLen++] = rs485Serial.read();
                } else {
                    rs485Serial.read();
                }
                lastByteTime = millis();
            }

            // If we have received bytes and there's 10ms of line silence, frame is complete
            if (rawLen > 0 && (millis() - lastByteTime) > 10) {
                break;
            }

            yield();
        }

        if (rawLen > 0) {
            printHex("RX (raw)", rawBuf, rawLen);

            // Check if raw buffer starts with an echo of the request frame
            uint8_t offset = 0;
            if (rawLen >= requestLen && memcmp(rawBuf, request, requestLen) == 0) {
                Serial.println(F("[Modbus] Echo detected, stripping request echo"));
                offset = requestLen;
            }

            // Search for valid response frame starting at or after offset
            for (uint8_t start = offset; start < rawLen; start++) {
                if (rawBuf[start] == MODBUS_SLAVE_ADDR) {
                    uint8_t func = (start + 1 < rawLen) ? rawBuf[start + 1] : 0;
                    uint8_t expectedFunc = request[1];

                    if (func == expectedFunc || func == (expectedFunc | 0x80)) {
                        uint8_t frameLen = 0;

                        if (func & 0x80) {
                            // Exception frame: [addr][func|0x80][excCode][crcLo][crcHi] = 5 bytes
                            frameLen = 5;
                        } else if (func == 0x03) {
                            // Read response: [addr][0x03][byteCount][data...][crcLo][crcHi]
                            if (start + 2 < rawLen) {
                                uint8_t byteCount = rawBuf[start + 2];
                                frameLen = 3 + byteCount + 2;
                            }
                        } else if (func == 0x06) {
                            // Write response: [addr][0x06][regH][regL][valH][valL][crcLo][crcHi] = 8 bytes
                            frameLen = 8;
                        }

                        if (frameLen > 0 && (start + frameLen) <= rawLen) {
                            if (validateCRC(&rawBuf[start], frameLen)) {
                                uint8_t copyLen = min((int)frameLen, (int)maxResponseLen);
                                memcpy(response, &rawBuf[start], copyLen);
                                printHex("RX (valid)", response, copyLen);
                                return copyLen;
                            } else {
                                Serial.println(F("[Modbus] CRC validation failed for frame"));
                            }
                        }
                    }
                }
            }

            // Fallback: If no structured frame matched but CRC is valid on entire payload
            if (rawLen <= maxResponseLen && validateCRC(rawBuf, rawLen)) {
                memcpy(response, rawBuf, rawLen);
                return rawLen;
            }
        }

        Serial.printf("[Modbus] Attempt %d/%d: no valid response\n",
                      attempt + 1, MODBUS_RETRIES + 1);
    }

    return 0;
}

void ModbusDriver::buildReadFrame(uint8_t slaveAddr, uint16_t startReg,
                                   uint16_t numRegs, uint8_t* frame,
                                   uint8_t& frameLen) {
    frame[0] = slaveAddr;
    frame[1] = 0x03;  // Read Holding Registers
    frame[2] = (startReg >> 8) & 0xFF;
    frame[3] = startReg & 0xFF;
    frame[4] = (numRegs >> 8) & 0xFF;
    frame[5] = numRegs & 0xFF;

    uint16_t crc = crc16(frame, 6);
    frame[6] = crc & 0xFF;        // CRC low byte first (Modbus convention)
    frame[7] = (crc >> 8) & 0xFF;

    frameLen = 8;
}

void ModbusDriver::buildWriteFrame(uint8_t slaveAddr, uint16_t reg,
                                    uint16_t value, uint8_t* frame,
                                    uint8_t& frameLen) {
    frame[0] = slaveAddr;
    frame[1] = 0x06;  // Write Single Register
    frame[2] = (reg >> 8) & 0xFF;
    frame[3] = reg & 0xFF;
    frame[4] = (value >> 8) & 0xFF;
    frame[5] = value & 0xFF;

    uint16_t crc = crc16(frame, 6);
    frame[6] = crc & 0xFF;
    frame[7] = (crc >> 8) & 0xFF;

    frameLen = 8;
}

uint16_t ModbusDriver::crc16(const uint8_t* data, uint8_t len) {
    uint16_t crc = 0xFFFF;
    for (uint8_t i = 0; i < len; i++) {
        crc ^= data[i];
        for (uint8_t j = 0; j < 8; j++) {
            if (crc & 0x0001) {
                crc >>= 1;
                crc ^= 0xA001;
            } else {
                crc >>= 1;
            }
        }
    }
    return crc;
}

bool ModbusDriver::validateCRC(const uint8_t* data, uint8_t len) {
    if (len < 3) return false;
    uint16_t received = data[len - 2] | (data[len - 1] << 8);
    uint16_t calculated = crc16(data, len - 2);
    return received == calculated;
}
