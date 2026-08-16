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
- **NodeMCU** reads VFD parameters and logs data to flash (LittleFS)
- User visits periodically to sync data and control the drive

## Features

### App (`app/`)
- 📊 **Live Monitoring** — Animated gauges for frequency, voltage, current, power
- 📈 **Historical Charts** — View logged data with time-range selectors
- 🎛️ **Drive Control** — Start, stop, set frequency
- ⚠️ **Fault Tracking** — Fault history with GD200A-specific code descriptions
- 📱 **Offline Viewing** — Synced data stored locally in SQLite
- 🔒 **PIN Authentication**

### Monitored Parameters
| Parameter | Unit |
|---|---|
| Operation Frequency | Hz |
| Bus Voltage | V |
| Output Voltage | V |
| Output Current | A |
| Output Power | kW |
| Fault Code | — |

## Tech Stack

| Component | Technology |
|---|---|
| Mobile App | Flutter 3.x (Dart) |
| State Management | Riverpod |
| Charts | fl_chart |
| Local DB | SQLite (sqflite) |
| Microcontroller | ESP8266 (NodeMCU) |
| Communication | Modbus RTU over RS485 |
| Hardware Interface | TTL-to-RS485 converter |

## Project Structure

```
├── app/                    # Flutter Android app
│   └── lib/
│       ├── core/           # Theme, routing, constants
│       ├── data/           # Models, services, repositories
│       ├── features/       # Screen-specific code
│       ├── providers/      # Riverpod state management
│       └── widgets/        # Shared widgets
├── docs/                   # VFD manual & documentation
└── firmware/               # NodeMCU firmware (coming soon)
```

## Getting Started

### App
```bash
cd app
flutter pub get
flutter run
```

Demo mode available — use PIN `1234` on the connection screen.

## License

TBD
