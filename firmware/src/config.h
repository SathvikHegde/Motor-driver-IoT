#pragma once
// ─────────────────────────────────────────────────────────────
//  Configuration for NodeMCU Goodrive200A VFD Controller
// ─────────────────────────────────────────────────────────────

// ── Hardware Pins ──
// SoftwareSerial for RS485 (auto-direction TTL converter, no DE/RE pin)
#define RS485_RX_PIN    12  // D6 — receives data from converter RX
#define RS485_TX_PIN    13  // D7 — sends data to converter TX

// ── Modbus Settings ──
#define MODBUS_SLAVE_ADDR     1       // VFD P14.00 must match
#define MODBUS_BAUD_RATE      9600    // VFD P14.01 = 3 (9600)
#define MODBUS_TIMEOUT_MS     200     // Response timeout per attempt
#define MODBUS_RETRIES        2       // Retry count on failure
#define MODBUS_FRAME_DELAY_MS 5       // Inter-frame silence (3.5 char times at 9600 ≈ 4ms)

// ── Modbus Register Addresses (GD200A) ──
// Control registers (R/W) — Function 0x06 (Write Single Register)
#define REG_CONTROL_COMMAND   0x2000  // 0x0001=Fwd, 0x0005=Stop
#define REG_SPEED_REFERENCE   0x2001  // 0-6000 (0.00-60.00Hz, ×100)

// Status registers (R) — Function 0x03 (Read Holding Registers)
#define REG_STATUS_WORD       0x2100  // Run/Stop/Fault status word
#define REG_FAULT_CODE        0x2102  // Active fault code

// Monitoring registers (R) — contiguous block 0x3000–0x3004
#define REG_MONITOR_START     0x3000  // First monitoring register
#define REG_MONITOR_COUNT     5       // 0x3000–0x3004 (freq, set freq, bus V, out V, out I)
#define REG_OP_FREQUENCY      0x3000  // ÷100 → Hz
#define REG_SET_FREQUENCY     0x3001  // ÷100 → Hz
#define REG_BUS_VOLTAGE       0x3002  // ÷10 → V
#define REG_OUTPUT_VOLTAGE    0x3003  // ÷10 → V
#define REG_OUTPUT_CURRENT    0x3004  // ÷10 → A
#define REG_OUTPUT_POWER      0x3006  // ÷10 → % of rated power

// Control command values
#define CMD_RUN_FORWARD       0x0001
#define CMD_RUN_REVERSE       0x0002
#define CMD_STOP              0x0005
#define CMD_COAST_STOP        0x0006
#define CMD_FAULT_RESET       0x0007

// ── WiFi Access Point ──
#define WIFI_AP_SSID          "DriveController_AP"
#define WIFI_AP_PASSWORD      "drive1234"
#define WIFI_AP_CHANNEL       6
#define WIFI_AP_MAX_CLIENTS   2

// ── Web Server ──
#define HTTP_PORT             80

// ── Data Logging ──
#define LOG_INTERVAL_MS       10000   // Default: log every 10 seconds
#define LOG_MAX_AGE_DAYS      7       // Delete logs older than 7 days
#define LOG_DIR               "/logs"
#define FAULT_FILE            "/faults.csv"
#define CONFIG_FILE           "/config.json"

// ── Authentication ──
#define DEFAULT_PIN           "1234"
#define TOKEN_LENGTH          16      // Hex chars in session token

// ── Polling ──
#define STATUS_POLL_MS        1000    // Poll VFD status every 1 second
