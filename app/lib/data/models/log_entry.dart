/// A single historical data log entry.
/// These are fetched from the NodeMCU's LittleFS storage.
class LogEntry {
  final int? id;
  final double operationFrequency;
  final double busVoltage;
  final double outputVoltage;
  final double outputCurrent;
  final double outputPower;
  final int faultCode;
  final bool isRunning;
  final DateTime timestamp;

  const LogEntry({
    this.id,
    required this.operationFrequency,
    required this.busVoltage,
    required this.outputVoltage,
    required this.outputCurrent,
    required this.outputPower,
    required this.faultCode,
    required this.isRunning,
    required this.timestamp,
  });

  factory LogEntry.fromJson(Map<String, dynamic> json) {
    return LogEntry(
      operationFrequency: (json['operation_frequency'] as num?)?.toDouble() ?? 0.0,
      busVoltage: (json['bus_voltage'] as num?)?.toDouble() ?? 0.0,
      outputVoltage: (json['output_voltage'] as num?)?.toDouble() ?? 0.0,
      outputCurrent: (json['output_current'] as num?)?.toDouble() ?? 0.0,
      outputPower: (json['output_power'] as num?)?.toDouble() ?? 0.0,
      faultCode: json['fault_code'] as int? ?? 0,
      isRunning: json['is_running'] as bool? ?? false,
      timestamp: json['timestamp'] != null
          ? DateTime.parse(json['timestamp'] as String)
          : DateTime.now(),
    );
  }

  Map<String, dynamic> toDbMap() {
    return {
      'operation_frequency': operationFrequency,
      'bus_voltage': busVoltage,
      'output_voltage': outputVoltage,
      'output_current': outputCurrent,
      'output_power': outputPower,
      'fault_code': faultCode,
      'is_running': isRunning ? 1 : 0,
      'timestamp': timestamp.toIso8601String(),
    };
  }

  factory LogEntry.fromDbMap(Map<String, dynamic> map) {
    return LogEntry(
      id: map['id'] as int?,
      operationFrequency: (map['operation_frequency'] as num).toDouble(),
      busVoltage: (map['bus_voltage'] as num).toDouble(),
      outputVoltage: (map['output_voltage'] as num).toDouble(),
      outputCurrent: (map['output_current'] as num).toDouble(),
      outputPower: (map['output_power'] as num).toDouble(),
      faultCode: map['fault_code'] as int,
      isRunning: (map['is_running'] as int) == 1,
      timestamp: DateTime.parse(map['timestamp'] as String),
    );
  }
}
