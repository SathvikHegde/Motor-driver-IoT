# Motor Driver IoT — Goodrive200A VFD Controller

IoT system for monitoring and controlling an **Invt Goodrive200A** Variable Frequency Drive (VFD) remotely via a mobile app.

## Architecture

```
┌──────────────┐     WiFi (AP)     ┌──────────────┐    RS485/Modbus    ┌──────────────┐
│  Android App │ ◄──────────────► │   NodeMCU    │ ◄────────────────► │ Goodrive200A │
│  (Flutter)   │    HTTP REST      │  (ESP8266)   │       RTU          │     VFD      │
└──────────────┘                   └──────────────┘                    └──────────────┘
```

- **App** connects to NodeMCU's WiFi hotspot (no internet required)
- **NodeMCU** reads VFD parameters via Modbus RTU and logs data to LittleFS flash
- User visits periodically to sync data, view interactive graphs, export CSV, and control the drive

## Features

### Mobile App (`app/`)
- 📊 **Live Monitoring** — Real-time radial gauges for frequency, bus voltage, output voltage, current, and power
- 📈 **Dynamic Charts** — Butter-smooth timeline charts with pinch-to-zoom, pan, auto-scaling Y-axis, and double-tap to reset
- 📥 **CSV Data Export** — Export historical logs and fault history to CSV via system share sheet
- 🎛️ **Drive Control** — Start and stop commands with confirmation dialogs
- ⚠️ **Fault Tracking** — Real-time fault banner and persistent historical fault log with GD200A code descriptions
- 📱 **Offline Viewing** — Synced data stored locally in SQLite database
- 🔒 **PIN Authentication**

### Monitored Parameters
| Parameter | Modbus Register | Unit | Scaling |
|---|---|---|---|
| Operation Frequency | `0x3000` | Hz | ÷100 |
| Bus Voltage | `0x3002` | V | ÷10 |
| Output Voltage | `0x3003` | V | ÷10 |
| Output Current | `0x3004` | A | ÷10 |
| Output Power | `0x3006` | % | ÷10 |
| Fault Code | `0x2102` | — | Direct |

---

## Hardware Wiring

Connect the **NodeMCU (ESP8266)** to the **Auto-Direction TTL-to-RS485 Converter**, and the converter to the **GD200A VFD**:

```
NodeMCU (ESP8266)          TTL-to-RS485 Converter          Goodrive200A VFD
─────────────────          ──────────────────────          ────────────────
D6 (GPIO12, RX)  ◄───────  RX / RO
D7 (GPIO13, TX)  ────────► TX / DI
3.3V (or 5V)     ────────► VCC
GND              ────────► GND
                           A (RS485+) ───────────────► A (RS485+)
                           B (RS485-) ───────────────► B (RS485-)
```

---

## VFD Keypad Configuration (GD200A)

Set these parameters on the VFD keypad before connecting:

| Parameter | Value | Description |
|---|---|---|
| **P00.01** | `2` | Run command channel = Communication |
| **P14.00** | `1` | Modbus slave address = 1 |
| **P14.01** | `3` | Baud rate = 9600 bps |
| **P14.02** | `0` | Data format = 8-N-1 (no parity, 1 stop bit) |

---

## Getting Started

### 1. NodeMCU Firmware (`firmware/`)

Build and upload the firmware to the NodeMCU using PlatformIO:

```bash
cd firmware

# Build firmware
python -m platformio run

# Upload to NodeMCU (connect via USB)
python -m platformio run --target upload

# Serial monitor (115200 baud)
python -m platformio device monitor
```

**Default WiFi AP Settings:**
- **SSID:** `DriveController_AP`
- **Password:** `drive1234`
- **IP:** `192.168.4.1`
- **Default PIN:** `1234`

### 2. Flutter App (`app/`)

```bash
cd app
flutter pub get
flutter run
```

Demo mode is available without hardware — enter PIN `1234` on the connection screen.

---

## Project Structure

```
├── app/                    # Flutter Android mobile application
│   └── lib/
│       ├── core/           # Theme, routing, constants
│       ├── data/           # Models, services (API, DB, CSV export)
│       ├── features/       # Screens (Connection, Dashboard, Live, History, Controls, Faults, Settings)
│       ├── providers/      # Riverpod state management
│       └── widgets/        # Reusable custom UI components
├── firmware/               # NodeMCU ESP8266 C++ firmware
│   ├── platformio.ini      # PlatformIO configuration
│   └── src/
│       ├── main.cpp        # Setup, main loop, WiFi AP
│       ├── config.h        # Pins, Modbus registers, constants
│       ├── modbus_driver.* # Modbus RTU master driver (CRC16)
│       ├── web_server.*    # HTTP REST API server
│       ├── data_logger.*   # LittleFS CSV logging & rotation
│       └── auth.*          # PIN authentication & tokens
└── docs/                   # VFD documentation
```

## License

MIT
