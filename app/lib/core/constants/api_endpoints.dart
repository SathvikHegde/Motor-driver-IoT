/// API endpoint constants for NodeMCU communication.
/// All RS485/Modbus details are abstracted away on the NodeMCU side.
class ApiEndpoints {
  ApiEndpoints._();

  /// Default NodeMCU AP IP address
  static const String defaultHost = '192.168.4.1';
  static const int defaultPort = 80;

  static String baseUrl(String host, [int port = defaultPort]) =>
      'http://$host:$port';

  // ── Authentication ──
  static const String auth = '/api/auth';

  // ── Live Status ──
  static const String status = '/api/status';

  // ── Historical Logs ──
  static const String logs = '/api/logs';

  // ── Configuration ──
  static const String config = '/api/config';

  // ── Control Commands ──
  static const String command = '/api/command';

  // ── Fault History ──
  static const String faults = '/api/faults';
  static const String faultReset = '/api/faults/reset';
}
