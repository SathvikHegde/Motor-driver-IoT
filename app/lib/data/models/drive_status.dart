/// Data model representing the live status snapshot from the VFD.
/// The app knows nothing about Modbus registers — these are
/// high-level values provided by the NodeMCU.
class DriveStatus {
  /// Whether the motor is currently running.
  final bool isRunning;

  /// Current output frequency in Hz.
  final double operationFrequency;

  /// DC bus voltage in Volts.
  final double busVoltage;

  /// Output voltage to motor in Volts.
  final double outputVoltage;

  /// Output current in Amps.
  final double outputCurrent;

  /// Output power in kW.
  final double outputPower;

  /// Active fault code (0 = no fault).
  final int faultCode;

  /// Timestamp when this snapshot was taken.
  final DateTime timestamp;

  const DriveStatus({
    required this.isRunning,
    required this.operationFrequency,
    required this.busVoltage,
    required this.outputVoltage,
    required this.outputCurrent,
    required this.outputPower,
    required this.faultCode,
    required this.timestamp,
  });

  factory DriveStatus.fromJson(Map<String, dynamic> json) {
    return DriveStatus(
      isRunning: json['is_running'] as bool? ?? false,
      operationFrequency: (json['operation_frequency'] as num?)?.toDouble() ?? 0.0,
      busVoltage: (json['bus_voltage'] as num?)?.toDouble() ?? 0.0,
      outputVoltage: (json['output_voltage'] as num?)?.toDouble() ?? 0.0,
      outputCurrent: (json['output_current'] as num?)?.toDouble() ?? 0.0,
      outputPower: (json['output_power'] as num?)?.toDouble() ?? 0.0,
      faultCode: json['fault_code'] as int? ?? 0,
      timestamp: json['timestamp'] != null
          ? DateTime.parse(json['timestamp'] as String)
          : DateTime.now(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'is_running': isRunning,
      'operation_frequency': operationFrequency,
      'bus_voltage': busVoltage,
      'output_voltage': outputVoltage,
      'output_current': outputCurrent,
      'output_power': outputPower,
      'fault_code': faultCode,
      'timestamp': timestamp.toIso8601String(),
    };
  }

  /// Map to SQLite-compatible row.
  Map<String, dynamic> toDbMap() {
    return {
      'is_running': isRunning ? 1 : 0,
      'operation_frequency': operationFrequency,
      'bus_voltage': busVoltage,
      'output_voltage': outputVoltage,
      'output_current': outputCurrent,
      'output_power': outputPower,
      'fault_code': faultCode,
      'timestamp': timestamp.toIso8601String(),
    };
  }

  factory DriveStatus.fromDbMap(Map<String, dynamic> map) {
    return DriveStatus(
      isRunning: (map['is_running'] as int) == 1,
      operationFrequency: (map['operation_frequency'] as num).toDouble(),
      busVoltage: (map['bus_voltage'] as num).toDouble(),
      outputVoltage: (map['output_voltage'] as num).toDouble(),
      outputCurrent: (map['output_current'] as num).toDouble(),
      outputPower: (map['output_power'] as num).toDouble(),
      faultCode: map['fault_code'] as int,
      timestamp: DateTime.parse(map['timestamp'] as String),
    );
  }

  bool get hasFault => faultCode != 0;

  /// Returns a mock status for development/testing.
  factory DriveStatus.mock() {
    return DriveStatus(
      isRunning: true,
      operationFrequency: 45.0,
      busVoltage: 540.0,
      outputVoltage: 380.0,
      outputCurrent: 12.5,
      outputPower: 7.2,
      faultCode: 0,
      timestamp: DateTime.now(),
    );
  }

  factory DriveStatus.idle() {
    return DriveStatus(
      isRunning: false,
      operationFrequency: 0.0,
      busVoltage: 0.0,
      outputVoltage: 0.0,
      outputCurrent: 0.0,
      outputPower: 0.0,
      faultCode: 0,
      timestamp: DateTime.now(),
    );
  }

  DriveStatus copyWith({
    bool? isRunning,
    double? operationFrequency,
    double? busVoltage,
    double? outputVoltage,
    double? outputCurrent,
    double? outputPower,
    int? faultCode,
    DateTime? timestamp,
  }) {
    return DriveStatus(
      isRunning: isRunning ?? this.isRunning,
      operationFrequency: operationFrequency ?? this.operationFrequency,
      busVoltage: busVoltage ?? this.busVoltage,
      outputVoltage: outputVoltage ?? this.outputVoltage,
      outputCurrent: outputCurrent ?? this.outputCurrent,
      outputPower: outputPower ?? this.outputPower,
      faultCode: faultCode ?? this.faultCode,
      timestamp: timestamp ?? this.timestamp,
    );
  }
}
