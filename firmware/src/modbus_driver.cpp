#include "modbus_driver.h"
#include <SoftwareSerial.h>

// SoftwareSerial instance for RS485 communication
static SoftwareSerial rs485Serial(RS485_RX_PIN, RS485_TX_PIN);

void ModbusDriver::begin() {
    rs485Serial.begin(MODBUS_BAUD_RATE);
    Serial.println(F("[Modbus] Initialized on SoftwareSerial"));
    Serial.printf("[Modbus] RX=D%d TX=D%d Baud=%d\n",
                  RS485_RX_PIN == 12 ? 6 : RS485_RX_PIN,
                  RS485_TX_PIN == 13 ? 7 : RS485_TX_PIN,
                  MODBUS_BAUD_RATE);
}

bool ModbusDriver::readStatus(VFDStatus& status) {
    status.commOk = false;

    // ── Read contiguous monitoring block: 0x3000–0x3004 (5 registers) ──
    uint8_t reqFrame[8];
    uint8_t reqLen;
    uint8_t respBuf[32];

    buildReadFrame(MODBUS_SLAVE_ADDR, REG_MONITOR_START, REG_MONITOR_COUNT,
                   reqFrame, reqLen);

    uint8_t respLen = sendRequest(reqFrame, reqLen, respBuf, sizeof(respBuf));

    // Expected response: [addr][func][byteCount][data...][crcLo][crcHi]
    // For 5 registers: 1 + 1 + 1 + 10 + 2 = 15 bytes
    if (respLen < 15) {
        Serial.println(F("[Modbus] Monitor block read failed"));
        return false;
    }

    if (!validateCRC(respBuf, respLen)) {
        Serial.println(F("[Modbus] Monitor block CRC error"));
        return false;
    }

    // Check for Modbus exception (function code has bit 7 set)
    if (respBuf[1] & 0x80) {
        Serial.printf("[Modbus] Exception code: 0x%02X\n", respBuf[2]);
        return false;
    }

    // Parse register values (big-endian 16-bit)
    uint16_t regValues[REG_MONITOR_COUNT];
    for (int i = 0; i < REG_MONITOR_COUNT; i++) {
        regValues[i] = (respBuf[3 + i * 2] << 8) | respBuf[3 + i * 2 + 1];
    }

    status.operationFrequency = regValues[0] / 100.0f;  // 0x3000
    // regValues[1] is setting frequency (0x3001) — we don't use it
    status.busVoltage         = regValues[2] / 10.0f;    // 0x3002
    status.outputVoltage      = regValues[3] / 10.0f;    // 0x3003
    status.outputCurrent      = regValues[4] / 10.0f;    // 0x3004

    // ── Read output power: 0x3006 (1 register, separate read) ──
    buildReadFrame(MODBUS_SLAVE_ADDR, REG_OUTPUT_POWER, 1, reqFrame, reqLen);
    respLen = sendRequest(reqFrame, reqLen, respBuf, sizeof(respBuf));

    if (respLen >= 7 && validateCRC(respBuf, respLen) && !(respBuf[1] & 0x80)) {
        int16_t rawPower = (respBuf[3] << 8) | respBuf[4];
        status.outputPower = rawPower / 10.0f;  // % of rated
    } else {
        status.outputPower = 0.0f;
        Serial.println(F("[Modbus] Power register read failed"));
    }

    // ── Read fault code: 0x2102 (1 register) ──
    buildReadFrame(MODBUS_SLAVE_ADDR, REG_FAULT_CODE, 1, reqFrame, reqLen);
    respLen = sendRequest(reqFrame, reqLen, respBuf, sizeof(respBuf));

    if (respLen >= 7 && validateCRC(respBuf, respLen) && !(respBuf[1] & 0x80)) {
        status.faultCode = (respBuf[3] << 8) | respBuf[4];
    } else {
        status.faultCode = 0;
        Serial.println(F("[Modbus] Fault register read failed"));
    }

    // Determine running state from frequency
    // (if freq > 0 and no fault, drive is running)
    status.isRunning = (status.operationFrequency > 0.01f && status.faultCode == 0);
    status.commOk = true;

    return true;
}

bool ModbusDriver::sendCommand(uint16_t command) {
    uint8_t reqFrame[8];
    uint8_t reqLen;
    uint8_t respBuf[16];

    buildWriteFrame(MODBUS_SLAVE_ADDR, REG_CONTROL_COMMAND, command,
                    reqFrame, reqLen);

    uint8_t respLen = sendRequest(reqFrame, reqLen, respBuf, sizeof(respBuf));

    // Write Single Register echo: [addr][func][regHi][regLo][valHi][valLo][crcLo][crcHi]
    if (respLen < 8) {
        Serial.printf("[Modbus] Command 0x%04X write failed\n", command);
        return false;
    }

    if (!validateCRC(respBuf, respLen)) {
        Serial.println(F("[Modbus] Command response CRC error"));
        return false;
    }

    if (respBuf[1] & 0x80) {
        Serial.printf("[Modbus] Command exception: 0x%02X\n", respBuf[2]);
        return false;
    }

    Serial.printf("[Modbus] Command 0x%04X sent OK\n", command);
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

        // Inter-frame delay (silence before sending)
        delay(MODBUS_FRAME_DELAY_MS);

        // Send the request frame
        rs485Serial.write(request, requestLen);
        rs485Serial.flush();  // Wait for TX to complete

        // Small delay to let the auto-direction converter switch to RX mode
        delay(MODBUS_FRAME_DELAY_MS);

        // Wait for response with timeout
        unsigned long startTime = millis();
        uint8_t bytesRead = 0;

        while ((millis() - startTime) < MODBUS_TIMEOUT_MS) {
            if (rs485Serial.available()) {
                if (bytesRead < maxResponseLen) {
                    response[bytesRead++] = rs485Serial.read();
                } else {
                    rs485Serial.read();  // Discard overflow
                }
                startTime = millis();  // Reset timeout on each byte
            }
            yield();  // Let ESP8266 handle WiFi/system tasks
        }

        if (bytesRead > 0) {
            return bytesRead;
        }

        Serial.printf("[Modbus] Attempt %d/%d: no response\n",
                      attempt + 1, MODBUS_RETRIES + 1);
    }

    return 0;  // All retries exhausted
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
