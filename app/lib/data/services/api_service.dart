import 'package:dio/dio.dart';
import '../models/drive_status.dart';
import '../models/log_entry.dart';
import '../models/fault.dart';
import '../models/command.dart';
import '../../core/constants/api_endpoints.dart';

/// HTTP service for communicating with the NodeMCU.
/// In mock mode, returns simulated data for development.
class ApiService {
  Dio? _dio;
  String? _host;
  bool _isMockMode = true;
  String? _sessionToken;

  /// Initialize connection to NodeMCU.
  void connect(String host, {int port = ApiEndpoints.defaultPort}) {
    _host = host;
    _dio = Dio(BaseOptions(
      baseUrl: ApiEndpoints.baseUrl(host, port),
      connectTimeout: const Duration(seconds: 5),
      receiveTimeout: const Duration(seconds: 10),
      headers: {
        'Content-Type': 'application/json',
      },
    ));
    _isMockMode = false;
  }

  /// Enable mock mode for development without a NodeMCU.
  void enableMockMode() {
    _isMockMode = true;
  }

  bool get isConnected => _dio != null || _isMockMode;
  bool get isMockMode => _isMockMode;
  String get host => _host ?? ApiEndpoints.defaultHost;

  // ── Authentication ──

  Future<bool> authenticate(String pin) async {
    if (_isMockMode) {
      await Future.delayed(const Duration(milliseconds: 500));
      return pin == '1234'; // Mock PIN
    }

    try {
      final response = await _dio!.get(
        ApiEndpoints.auth,
        queryParameters: {'pin': pin},
      );
      if (response.statusCode == 200 && response.data['success'] == true) {
        _sessionToken = response.data['token'] as String?;
        _addAuthHeader();
        return true;
      }
      return false;
    } on DioException {
      return false;
    }
  }

  void _addAuthHeader() {
    if (_sessionToken != null && _dio != null) {
      _dio!.options.headers['Authorization'] = 'Bearer $_sessionToken';
    }
  }

  // ── Live Status ──

  Future<DriveStatus> getStatus() async {
    if (_isMockMode) {
      await Future.delayed(const Duration(milliseconds: 200));
      return _generateMockStatus();
    }

    try {
      final response = await _dio!.get(ApiEndpoints.status);
      return DriveStatus.fromJson(response.data as Map<String, dynamic>);
    } on DioException catch (e) {
      throw ApiException('Failed to get status: ${e.message}');
    }
  }

  // ── Historical Logs ──

  Future<List<LogEntry>> getLogs({DateTime? from, DateTime? to}) async {
    if (_isMockMode) {
      await Future.delayed(const Duration(milliseconds: 300));
      return _generateMockLogs(from: from, to: to);
    }

    try {
      final params = <String, dynamic>{};
      if (from != null) params['from'] = from.toIso8601String();
      if (to != null) params['to'] = to.toIso8601String();

      final response = await _dio!.get(
        ApiEndpoints.logs,
        queryParameters: params,
      );

      final List<dynamic> data = response.data as List<dynamic>;
      return data
          .map((e) => LogEntry.fromJson(e as Map<String, dynamic>))
          .toList();
    } on DioException catch (e) {
      throw ApiException('Failed to get logs: ${e.message}');
    }
  }

  // ── Commands ──

  Future<bool> sendCommand(DriveCommand command) async {
    if (_isMockMode) {
      await Future.delayed(const Duration(milliseconds: 300));
      return true;
    }

    try {
      final response = await _dio!.post(
        ApiEndpoints.command,
        data: command.toJson(),
      );
      return response.statusCode == 200;
    } on DioException catch (e) {
      throw ApiException('Failed to send command: ${e.message}');
    }
  }

  // ── Configuration ──

  Future<Map<String, dynamic>> getConfig() async {
    if (_isMockMode) {
      await Future.delayed(const Duration(milliseconds: 200));
      return {
        'log_interval_seconds': 10,
        'wifi_ssid': 'DriveController_AP',
      };
    }

    try {
      final response = await _dio!.get(ApiEndpoints.config);
      return response.data as Map<String, dynamic>;
    } on DioException catch (e) {
      throw ApiException('Failed to get config: ${e.message}');
    }
  }

  Future<bool> updateConfig(Map<String, dynamic> config) async {
    if (_isMockMode) {
      await Future.delayed(const Duration(milliseconds: 300));
      return true;
    }

    try {
      final response = await _dio!.post(
        ApiEndpoints.config,
        data: config,
      );
      return response.statusCode == 200;
    } on DioException catch (e) {
      throw ApiException('Failed to update config: ${e.message}');
    }
  }

  // ── Faults ──

  Future<List<Fault>> getFaults() async {
    if (_isMockMode) {
      await Future.delayed(const Duration(milliseconds: 200));
      return _generateMockFaults();
    }

    try {
      final response = await _dio!.get(ApiEndpoints.faults);
      final List<dynamic> data = response.data as List<dynamic>;
      return data
          .map((e) => Fault.fromJson(e as Map<String, dynamic>))
          .toList();
    } on DioException catch (e) {
      throw ApiException('Failed to get faults: ${e.message}');
    }
  }

  /// Disconnect and clean up.
  void disconnect() {
    _dio?.close();
    _dio = null;
    _sessionToken = null;
    _host = null;
  }

  // ── Mock Data Generators ──

  static int _mockCycle = 0;

  DriveStatus _generateMockStatus() {
    _mockCycle++;
    final isRunning = _mockCycle > 2;
    final freq = isRunning ? 30.0 + (15.0 * (_mockCycle % 10) / 10.0) : 0.0;
    return DriveStatus(
      isRunning: isRunning,
      operationFrequency: freq,
      busVoltage: isRunning ? 535.0 + (_mockCycle % 5) * 2.0 : 0.0,
      outputVoltage: isRunning ? 370.0 + freq * 0.2 : 0.0,
      outputCurrent: isRunning ? 8.0 + freq * 0.1 : 0.0,
      outputPower: isRunning ? 4.0 + freq * 0.08 : 0.0,
      faultCode: 0,
      timestamp: DateTime.now(),
    );
  }

  List<LogEntry> _generateMockLogs({DateTime? from, DateTime? to}) {
    final now = DateTime.now();
    final start = from ?? now.subtract(const Duration(hours: 6));
    final end = to ?? now;
    final entries = <LogEntry>[];

    var current = start;
    var i = 0;
    while (current.isBefore(end)) {
      final freq = 30.0 + 15.0 * (i % 20) / 20.0;
      entries.add(LogEntry(
        operationFrequency: freq,
        busVoltage: 535.0 + (i % 5) * 2.0,
        outputVoltage: 370.0 + freq * 0.2,
        outputCurrent: 8.0 + freq * 0.1,
        outputPower: 4.0 + freq * 0.08,
        faultCode: 0,
        isRunning: true,
        timestamp: current,
      ));
      current = current.add(const Duration(minutes: 10));
      i++;
    }
    return entries;
  }

  List<Fault> _generateMockFaults() {
    final now = DateTime.now();
    return [
      Fault(
        faultCode: 10,
        description: Fault.descriptionForCode(10),
        timestamp: now.subtract(const Duration(days: 3)),
      ),
      Fault(
        faultCode: 15,
        description: Fault.descriptionForCode(15),
        timestamp: now.subtract(const Duration(days: 7)),
      ),
      Fault(
        faultCode: 4,
        description: Fault.descriptionForCode(4),
        timestamp: now.subtract(const Duration(days: 12)),
      ),
    ];
  }
}

class ApiException implements Exception {
  final String message;
  const ApiException(this.message);

  @override
  String toString() => 'ApiException: $message';
}
