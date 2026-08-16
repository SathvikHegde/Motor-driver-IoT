/// Fault record from the VFD.
class Fault {
  final int? id;
  final int faultCode;
  final String description;
  final DateTime timestamp;

  const Fault({
    this.id,
    required this.faultCode,
    required this.description,
    required this.timestamp,
  });

  factory Fault.fromJson(Map<String, dynamic> json) {
    return Fault(
      faultCode: json['fault_code'] as int? ?? 0,
      description: json['description'] as String? ?? 'Unknown fault',
      timestamp: json['timestamp'] != null
          ? DateTime.parse(json['timestamp'] as String)
          : DateTime.now(),
    );
  }

  Map<String, dynamic> toDbMap() {
    return {
      'fault_code': faultCode,
      'description': description,
      'timestamp': timestamp.toIso8601String(),
    };
  }

  factory Fault.fromDbMap(Map<String, dynamic> map) {
    return Fault(
      id: map['id'] as int?,
      faultCode: map['fault_code'] as int,
      description: map['description'] as String,
      timestamp: DateTime.parse(map['timestamp'] as String),
    );
  }

  /// Known GD200A fault codes for display purposes.
  /// The NodeMCU provides the code; the app looks up the description.
  static String descriptionForCode(int code) {
    return _faultCodeMap[code] ?? 'Unknown fault (code: $code)';
  }

  static const Map<int, String> _faultCodeMap = {
    0: 'No fault',
    1: 'IGBT U-phase overcurrent (OC1)',
    2: 'IGBT V-phase overcurrent (OC2)',
    3: 'IGBT W-phase overcurrent (OC3)',
    4: 'Acceleration overcurrent (OC4)',
    5: 'Deceleration overcurrent (OC5)',
    6: 'Constant speed overcurrent (OC6)',
    7: 'Acceleration overvoltage (OV1)',
    8: 'Deceleration overvoltage (OV2)',
    9: 'Constant speed overvoltage (OV3)',
    10: 'Bus undervoltage (UV)',
    11: 'Motor overload (OL1)',
    12: 'VFD overload (OL2)',
    13: 'Input phase loss (SPI)',
    14: 'Output phase loss (SPO)',
    15: 'VFD overheat (OH1)',
    16: 'External fault (EF)',
    17: 'Communication error (CE)',
    18: 'Current detection error (ItE)',
    19: 'Motor auto-tune error (tE)',
    20: 'Encoder/PG error (PGE)',
    21: 'Parameter read/write error (PCE)',
    22: 'VFD hardware error (bCE)',
    23: 'Motor short circuit to ground (SCE)',
    24: 'Reserved',
    25: 'Reserved',
    26: 'Accumulative running time reached (END)',
    27: 'User-defined fault 1 (FDE1)',
    28: 'User-defined fault 2 (FDE2)',
    29: 'Accumulative power on time reached',
    30: 'Load lost',
    31: 'PID feedback lost during running',
  };
}
