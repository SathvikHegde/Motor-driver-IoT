#include <Arduino.h>
#include <ESP8266WiFi.h>
#include "config.h"
#include "modbus_driver.h"
#include "data_logger.h"
#include "auth.h"
#include "web_server.h"

// ── Global instances ──
ModbusDriver modbus;
DataLogger   logger;
Auth         auth;
WebServer    webServer(modbus, logger, auth);

// ── Timing ──
unsigned long lastStatusPoll = 0;
unsigned long lastLogWrite   = 0;
VFDStatus     currentStatus;

// ─────────────────────────────────────────────────────────────
void setupWiFiAP() {
    WiFi.mode(WIFI_AP);
    WiFi.softAP(WIFI_AP_SSID, WIFI_AP_PASSWORD,
                WIFI_AP_CHANNEL, false, WIFI_AP_MAX_CLIENTS);

    IPAddress ip = WiFi.softAPIP();
    Serial.println(F("\n╔═══════════════════════════════════════╗"));
    Serial.println(F("║   Goodrive200A VFD Controller         ║"));
    Serial.println(F("╠═══════════════════════════════════════╣"));
    Serial.printf( "║   SSID:  %-28s ║\n", WIFI_AP_SSID);
    Serial.printf( "║   Pass:  %-28s ║\n", WIFI_AP_PASSWORD);
    Serial.printf( "║   IP:    %-28s ║\n", ip.toString().c_str());
    Serial.printf( "║   Port:  %-28d ║\n", HTTP_PORT);
    Serial.println(F("╠═══════════════════════════════════════╣"));
    Serial.printf( "║   Modbus Slave: %-21d ║\n", MODBUS_SLAVE_ADDR);
    Serial.printf( "║   Baud Rate:    %-21d ║\n", MODBUS_BAUD_RATE);
    Serial.println(F("╚═══════════════════════════════════════╝\n"));
}

// ─────────────────────────────────────────────────────────────
void setup() {
    // USB Serial for debugging
    Serial.begin(115200);
    Serial.println(F("\n\n[Boot] Starting..."));

    // Random seed for token generation
    randomSeed(analogRead(A0) ^ micros());

    // Initialize components
    modbus.begin();

    if (!logger.begin()) {
        Serial.println(F("[Boot] WARNING: Logger failed to initialize!"));
    }

    auth.begin();

    // Start WiFi AP
    setupWiFiAP();

    // Start web server
    webServer.begin();

    // Initialize status
    memset(&currentStatus, 0, sizeof(currentStatus));

    Serial.println(F("[Boot] System ready. Waiting for connections..."));
}

// ─────────────────────────────────────────────────────────────
void loop() {
    unsigned long now = millis();

    // ── Poll VFD status ──
    if (now - lastStatusPoll >= STATUS_POLL_MS) {
        lastStatusPoll = now;

        bool ok = modbus.readStatus(currentStatus);

        // Update web server's cached status
        webServer.updateStatus(currentStatus);

        // Check for new faults
        if (ok && currentStatus.faultCode > 0) {
            logger.logFault(currentStatus.faultCode);
        }
    }

    // ── Write periodic log entries ──
    if (now - lastLogWrite >= logger.getLogIntervalMs()) {
        lastLogWrite = now;

        if (currentStatus.commOk) {
            logger.logEntry(
                currentStatus.operationFrequency,
                currentStatus.busVoltage,
                currentStatus.outputVoltage,
                currentStatus.outputCurrent,
                currentStatus.outputPower,
                currentStatus.faultCode,
                currentStatus.isRunning
            );
        }
    }

    // Yield to ESP8266 WiFi/system tasks
    yield();
}
