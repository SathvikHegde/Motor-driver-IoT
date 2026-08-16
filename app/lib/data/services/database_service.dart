import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import '../models/log_entry.dart';
import '../models/fault.dart';

/// SQLite database service for local data persistence.
/// Stores historical logs and faults fetched from the NodeMCU
/// so the user can view data offline.
class DatabaseService {
  static Database? _database;
  static const String _dbName = 'drive_controller.db';
  static const int _dbVersion = 1;

  Future<Database> get database async {
    _database ??= await _initDatabase();
    return _database!;
  }

  Future<Database> _initDatabase() async {
    final dbPath = await getDatabasesPath();
    final path = join(dbPath, _dbName);

    return openDatabase(
      path,
      version: _dbVersion,
      onCreate: _onCreate,
    );
  }

  Future<void> _onCreate(Database db, int version) async {
    await db.execute('''
      CREATE TABLE logs (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        operation_frequency REAL NOT NULL,
        bus_voltage REAL NOT NULL,
        output_voltage REAL NOT NULL,
        output_current REAL NOT NULL,
        output_power REAL NOT NULL,
        fault_code INTEGER NOT NULL,
        is_running INTEGER NOT NULL,
        timestamp TEXT NOT NULL
      )
    ''');

    await db.execute('''
      CREATE TABLE faults (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        fault_code INTEGER NOT NULL,
        description TEXT NOT NULL,
        timestamp TEXT NOT NULL
      )
    ''');

    // Index on timestamp for efficient range queries
    await db.execute(
      'CREATE INDEX idx_logs_timestamp ON logs(timestamp)',
    );
    await db.execute(
      'CREATE INDEX idx_faults_timestamp ON faults(timestamp)',
    );
  }

  // ── Log Entries ──

  /// Insert multiple log entries (batch import from NodeMCU).
  Future<void> insertLogs(List<LogEntry> entries) async {
    final db = await database;
    final batch = db.batch();
    for (final entry in entries) {
      batch.insert('logs', entry.toDbMap(),
          conflictAlgorithm: ConflictAlgorithm.ignore);
    }
    await batch.commit(noResult: true);
  }

  /// Get logs within a time range.
  Future<List<LogEntry>> getLogs({
    DateTime? from,
    DateTime? to,
    int? limit,
  }) async {
    final db = await database;
    final where = <String>[];
    final whereArgs = <String>[];

    if (from != null) {
      where.add('timestamp >= ?');
      whereArgs.add(from.toIso8601String());
    }
    if (to != null) {
      where.add('timestamp <= ?');
      whereArgs.add(to.toIso8601String());
    }

    final results = await db.query(
      'logs',
      where: where.isNotEmpty ? where.join(' AND ') : null,
      whereArgs: whereArgs.isNotEmpty ? whereArgs : null,
      orderBy: 'timestamp ASC',
      limit: limit,
    );

    return results.map((e) => LogEntry.fromDbMap(e)).toList();
  }

  /// Get the timestamp of the most recent log entry.
  Future<DateTime?> getLastLogTimestamp() async {
    final db = await database;
    final result = await db.rawQuery(
      'SELECT MAX(timestamp) as max_ts FROM logs',
    );
    if (result.isNotEmpty && result.first['max_ts'] != null) {
      return DateTime.parse(result.first['max_ts'] as String);
    }
    return null;
  }

  /// Get total log count.
  Future<int> getLogCount() async {
    final db = await database;
    final result = await db.rawQuery('SELECT COUNT(*) as count FROM logs');
    return (result.first['count'] as int?) ?? 0;
  }

  // ── Faults ──

  /// Insert faults (batch import from NodeMCU).
  Future<void> insertFaults(List<Fault> faults) async {
    final db = await database;
    final batch = db.batch();
    for (final fault in faults) {
      batch.insert('faults', fault.toDbMap(),
          conflictAlgorithm: ConflictAlgorithm.ignore);
    }
    await batch.commit(noResult: true);
  }

  /// Get all stored faults, most recent first.
  Future<List<Fault>> getFaults({int? limit}) async {
    final db = await database;
    final results = await db.query(
      'faults',
      orderBy: 'timestamp DESC',
      limit: limit,
    );
    return results.map((e) => Fault.fromDbMap(e)).toList();
  }

  // ── Maintenance ──

  /// Clear all local log data.
  Future<void> clearLogs() async {
    final db = await database;
    await db.delete('logs');
  }

  /// Clear all local fault data.
  Future<void> clearFaults() async {
    final db = await database;
    await db.delete('faults');
  }

  /// Clear all local data.
  Future<void> clearAll() async {
    await clearLogs();
    await clearFaults();
  }

  /// Close the database.
  Future<void> close() async {
    final db = await database;
    await db.close();
    _database = null;
  }
}
