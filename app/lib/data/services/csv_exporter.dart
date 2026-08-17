import 'dart:io';
import 'package:intl/intl.dart';
import 'package:path_provider/path_provider.dart';
import 'package:share_plus/share_plus.dart';
import '../models/log_entry.dart';
import '../models/fault.dart';

/// Utility for exporting data to CSV files and sharing them.
class CsvExporter {
  static final _dateFormat = DateFormat('yyyy-MM-dd HH:mm:ss');
  static final _fileDateFormat = DateFormat('yyyyMMdd_HHmmss');

  /// Export log entries to a CSV file and trigger the share sheet.
  static Future<void> exportLogs(List<LogEntry> logs) async {
    if (logs.isEmpty) return;

    final buffer = StringBuffer();

    // Header
    buffer.writeln(
      'Timestamp,Frequency (Hz),Bus Voltage (V),Output Voltage (V),'
      'Output Current (A),Output Power (kW),Fault Code,Running',
    );

    // Data rows
    for (final entry in logs) {
      buffer.writeln(
        '${_dateFormat.format(entry.timestamp)},'
        '${entry.operationFrequency},'
        '${entry.busVoltage},'
        '${entry.outputVoltage},'
        '${entry.outputCurrent},'
        '${entry.outputPower},'
        '${entry.faultCode},'
        '${entry.isRunning ? "Yes" : "No"}',
      );
    }

    final fileName =
        'drive_data_${_fileDateFormat.format(DateTime.now())}.csv';
    await _shareFile(fileName, buffer.toString());
  }

  /// Export fault history to a CSV file and trigger the share sheet.
  static Future<void> exportFaults(List<Fault> faults) async {
    if (faults.isEmpty) return;

    final buffer = StringBuffer();

    // Header
    buffer.writeln('Timestamp,Fault Code,Description');

    // Data rows
    for (final fault in faults) {
      // Escape description in case it contains commas
      final desc = fault.description.replaceAll('"', '""');
      buffer.writeln(
        '${_dateFormat.format(fault.timestamp)},'
        '${fault.faultCode},'
        '"$desc"',
      );
    }

    final fileName =
        'drive_faults_${_fileDateFormat.format(DateTime.now())}.csv';
    await _shareFile(fileName, buffer.toString());
  }

  /// Write content to a temp file and open the system share sheet.
  static Future<void> _shareFile(String fileName, String content) async {
    final tempDir = await getTemporaryDirectory();
    final file = File('${tempDir.path}/$fileName');
    await file.writeAsString(content);

    await Share.shareXFiles(
      [XFile(file.path, mimeType: 'text/csv')],
      subject: fileName,
    );
  }
}
