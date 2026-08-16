import 'dart:async';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../data/services/api_service.dart';
import '../data/services/database_service.dart';
import '../data/models/drive_status.dart';
import '../data/models/log_entry.dart';
import '../data/models/fault.dart';
import '../data/models/command.dart';

// ── Service Providers ──

final apiServiceProvider = Provider<ApiService>((ref) {
  return ApiService();
});

final databaseServiceProvider = Provider<DatabaseService>((ref) {
  return DatabaseService();
});

// ── Connection State ──

enum ConnectionState { disconnected, connecting, connected, error }

class ConnectionNotifier extends StateNotifier<ConnectionState> {
  final ApiService _apiService;

  ConnectionNotifier(this._apiService) : super(ConnectionState.disconnected);

  String _host = '192.168.4.1';
  String? _errorMessage;

  String get host => _host;
  String? get errorMessage => _errorMessage;

  Future<bool> connect(String host, String pin, {bool mockMode = false}) async {
    state = ConnectionState.connecting;
    _host = host;
    _errorMessage = null;

    try {
      if (mockMode) {
        _apiService.enableMockMode();
      } else {
        _apiService.connect(host);
      }

      final authenticated = await _apiService.authenticate(pin);
      if (authenticated) {
        state = ConnectionState.connected;
        return true;
      } else {
        _errorMessage = 'Invalid PIN';
        state = ConnectionState.error;
        return false;
      }
    } catch (e) {
      _errorMessage = 'Connection failed: $e';
      state = ConnectionState.error;
      return false;
    }
  }

  void disconnect() {
    _apiService.disconnect();
    state = ConnectionState.disconnected;
    _errorMessage = null;
  }
}

final connectionProvider =
    StateNotifierProvider<ConnectionNotifier, ConnectionState>((ref) {
  return ConnectionNotifier(ref.read(apiServiceProvider));
});

// ── Drive Status ──

class DriveStatusNotifier extends StateNotifier<AsyncValue<DriveStatus>> {
  final ApiService _apiService;
  Timer? _pollingTimer;

  DriveStatusNotifier(this._apiService)
      : super(AsyncValue.data(DriveStatus.idle()));

  Future<void> refresh() async {
    try {
      state = const AsyncValue.loading();
      final status = await _apiService.getStatus();
      state = AsyncValue.data(status);
    } catch (e, st) {
      state = AsyncValue.error(e, st);
    }
  }

  /// Start polling the drive status at the given interval.
  void startPolling({Duration interval = const Duration(seconds: 2)}) {
    stopPolling();
    refresh(); // Immediately fetch once
    _pollingTimer = Timer.periodic(interval, (_) => refresh());
  }

  void stopPolling() {
    _pollingTimer?.cancel();
    _pollingTimer = null;
  }

  @override
  void dispose() {
    stopPolling();
    super.dispose();
  }
}

final driveStatusProvider =
    StateNotifierProvider<DriveStatusNotifier, AsyncValue<DriveStatus>>((ref) {
  return DriveStatusNotifier(ref.read(apiServiceProvider));
});

// ── Commands ──

class CommandNotifier extends StateNotifier<AsyncValue<void>> {
  final ApiService _apiService;

  CommandNotifier(this._apiService) : super(const AsyncValue.data(null));

  Future<bool> sendCommand(DriveCommand command) async {
    try {
      state = const AsyncValue.loading();
      final success = await _apiService.sendCommand(command);
      state = const AsyncValue.data(null);
      return success;
    } catch (e, st) {
      state = AsyncValue.error(e, st);
      return false;
    }
  }

  Future<bool> start() => sendCommand(DriveCommand.start());
  Future<bool> stop() => sendCommand(DriveCommand.stop());
  Future<bool> setFrequency(double hz) =>
      sendCommand(DriveCommand.setFrequency(hz));
}

final commandProvider =
    StateNotifierProvider<CommandNotifier, AsyncValue<void>>((ref) {
  return CommandNotifier(ref.read(apiServiceProvider));
});

// ── Logs / History ──

class LogsNotifier extends StateNotifier<AsyncValue<List<LogEntry>>> {
  final ApiService _apiService;
  final DatabaseService _dbService;

  LogsNotifier(this._apiService, this._dbService)
      : super(const AsyncValue.data([]));

  /// Fetch logs from NodeMCU and store locally.
  Future<void> syncLogs({DateTime? from, DateTime? to}) async {
    try {
      state = const AsyncValue.loading();

      // Fetch from NodeMCU
      final remoteLogs = await _apiService.getLogs(from: from, to: to);

      // Store locally
      if (remoteLogs.isNotEmpty) {
        await _dbService.insertLogs(remoteLogs);
      }

      // Return merged local data
      final localLogs = await _dbService.getLogs(from: from, to: to);
      state = AsyncValue.data(localLogs);
    } catch (e, st) {
      // Fall back to local data
      try {
        final localLogs = await _dbService.getLogs(from: from, to: to);
        state = AsyncValue.data(localLogs);
      } catch (_) {
        state = AsyncValue.error(e, st);
      }
    }
  }

  /// Load only local logs (offline viewing).
  Future<void> loadLocalLogs({DateTime? from, DateTime? to}) async {
    try {
      state = const AsyncValue.loading();
      final logs = await _dbService.getLogs(from: from, to: to);
      state = AsyncValue.data(logs);
    } catch (e, st) {
      state = AsyncValue.error(e, st);
    }
  }
}

final logsProvider =
    StateNotifierProvider<LogsNotifier, AsyncValue<List<LogEntry>>>((ref) {
  return LogsNotifier(
    ref.read(apiServiceProvider),
    ref.read(databaseServiceProvider),
  );
});

// ── Faults ──

class FaultsNotifier extends StateNotifier<AsyncValue<List<Fault>>> {
  final ApiService _apiService;
  final DatabaseService _dbService;

  FaultsNotifier(this._apiService, this._dbService)
      : super(const AsyncValue.data([]));

  Future<void> syncFaults() async {
    try {
      state = const AsyncValue.loading();
      final remoteFaults = await _apiService.getFaults();

      if (remoteFaults.isNotEmpty) {
        await _dbService.insertFaults(remoteFaults);
      }

      final localFaults = await _dbService.getFaults();
      state = AsyncValue.data(localFaults);
    } catch (e, st) {
      try {
        final localFaults = await _dbService.getFaults();
        state = AsyncValue.data(localFaults);
      } catch (_) {
        state = AsyncValue.error(e, st);
      }
    }
  }

  Future<void> loadLocalFaults() async {
    try {
      state = const AsyncValue.loading();
      final faults = await _dbService.getFaults();
      state = AsyncValue.data(faults);
    } catch (e, st) {
      state = AsyncValue.error(e, st);
    }
  }
}

final faultsProvider =
    StateNotifierProvider<FaultsNotifier, AsyncValue<List<Fault>>>((ref) {
  return FaultsNotifier(
    ref.read(apiServiceProvider),
    ref.read(databaseServiceProvider),
  );
});

// ── Settings ──

class SettingsNotifier extends StateNotifier<Map<String, dynamic>> {
  final ApiService _apiService;

  SettingsNotifier(this._apiService) : super({});

  Future<void> loadConfig() async {
    try {
      final config = await _apiService.getConfig();
      state = config;
    } catch (_) {
      // Keep current state
    }
  }

  Future<bool> updateConfig(Map<String, dynamic> config) async {
    try {
      final success = await _apiService.updateConfig(config);
      if (success) {
        state = {...state, ...config};
      }
      return success;
    } catch (_) {
      return false;
    }
  }

  int get logInterval => state['log_interval_seconds'] as int? ?? 10;
}

final settingsProvider =
    StateNotifierProvider<SettingsNotifier, Map<String, dynamic>>((ref) {
  return SettingsNotifier(ref.read(apiServiceProvider));
});
