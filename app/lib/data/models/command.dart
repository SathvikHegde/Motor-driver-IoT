/// High-level command sent to the NodeMCU.
/// The NodeMCU translates these into Modbus register writes.
class DriveCommand {
  final String action;
  final double? value;

  const DriveCommand({
    required this.action,
    this.value,
  });

  /// Start the motor.
  factory DriveCommand.start() => const DriveCommand(action: 'start');

  /// Stop the motor.
  factory DriveCommand.stop() => const DriveCommand(action: 'stop');

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{'action': action};
    if (value != null) {
      map['value'] = value;
    }
    return map;
  }
}
