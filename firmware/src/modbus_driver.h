#pragma once
#include <Arduino.h>
#include "config.h"

/// Live data snapshot from the VFD.
struct VFDStatus {
    bool     isRunning;
    float    operationFrequency;  // Hz
    float    busVoltage;          // V
    float    outputVoltage;       // V
    float    outputCurrent;       // A
    float    outputPower;         // % of rated
    uint16_t faultCode;
    bool     commOk;              // true if last Modbus read succeeded
};

/// Modbus RTU master driver for the Goodrive200A VFD.
/// Uses SoftwareSerial with an auto-direction TTL-to-RS485 converter.
class ModbusDriver {
public:
    void begin();

    /// Read all monitoring registers and fault code. Returns true on success.
    bool readStatus(VFDStatus& status);

    /// Read a single 16-bit register.
    bool readSingleRegister(uint16_t regAddress, uint16_t& value);

    /// Read N consecutive 16-bit registers.
    bool readRegisters(uint16_t startReg, uint16_t numRegs, uint16_t* values);

    /// Write a control command to register 0x2000.
    bool sendCommand(uint16_t command);

    /// Convenience wrappers
    bool startDrive()  { return sendCommand(CMD_RUN_FORWARD); }
    bool stopDrive()   { return sendCommand(CMD_STOP); }

private:
    /// Send a Modbus RTU request frame and read & parse the response.
    /// Extracts response, strips any TX echo, validates CRC.
    /// Returns length of valid response frame starting at response[0], or 0 on error.
    uint8_t sendRequest(uint8_t* request, uint8_t requestLen,
                        uint8_t* response, uint8_t maxResponseLen);

    /// Build a Read Holding Registers (0x03) request frame.
    void buildReadFrame(uint8_t slaveAddr, uint16_t startReg,
                        uint16_t numRegs, uint8_t* frame, uint8_t& frameLen);

    /// Build a Write Single Register (0x06) request frame.
    void buildWriteFrame(uint8_t slaveAddr, uint16_t reg,
                         uint16_t value, uint8_t* frame, uint8_t& frameLen);

    /// Modbus CRC16 calculation.
    uint16_t crc16(const uint8_t* data, uint8_t len);

    /// Validate response CRC.
    bool validateCRC(const uint8_t* data, uint8_t len);

    /// Debug hex printing helper.
    void printHex(const char* label, const uint8_t* data, uint8_t len);
};
