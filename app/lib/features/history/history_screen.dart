import 'dart:math';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import '../../core/theme/app_colors.dart';
import '../../data/models/log_entry.dart';
import '../../data/services/csv_exporter.dart';
import '../../providers/app_providers.dart';

class HistoryScreen extends ConsumerStatefulWidget {
  const HistoryScreen({super.key});

  @override
  ConsumerState<HistoryScreen> createState() => _HistoryScreenState();
}

class _HistoryScreenState extends ConsumerState<HistoryScreen> {
  String _selectedRange = '6h';
  String _selectedParam = 'frequency';

  final Map<String, String> _rangeLabels = {
    '1h': 'Last Hour',
    '6h': 'Last 6 Hours',
    '24h': 'Last 24 Hours',
    '7d': 'Last 7 Days',
  };

  final Map<String, _ParamConfig> _paramConfigs = {
    'frequency': _ParamConfig('Frequency', 'Hz', AppColors.gaugeFrequency),
    'bus_voltage':
        _ParamConfig('Bus Voltage', 'V', AppColors.gaugeBusVoltage),
    'output_voltage':
        _ParamConfig('Output Voltage', 'V', AppColors.gaugeVoltage),
    'output_current':
        _ParamConfig('Output Current', 'A', AppColors.gaugeCurrent),
    'output_power':
        _ParamConfig('Output Power', 'kW', AppColors.gaugePower),
  };

  @override
  void initState() {
    super.initState();
    _loadData();
  }

  void _loadData() {
    final now = DateTime.now();
    final from = _getFromTime(now);
    ref.read(logsProvider.notifier).syncLogs(from: from, to: now);
  }

  DateTime _getFromTime(DateTime now) {
    switch (_selectedRange) {
      case '1h':
        return now.subtract(const Duration(hours: 1));
      case '6h':
        return now.subtract(const Duration(hours: 6));
      case '24h':
        return now.subtract(const Duration(hours: 24));
      case '7d':
        return now.subtract(const Duration(days: 7));
      default:
        return now.subtract(const Duration(hours: 6));
    }
  }

  double _getParamValue(LogEntry entry) {
    switch (_selectedParam) {
      case 'frequency':
        return entry.operationFrequency;
      case 'bus_voltage':
        return entry.busVoltage;
      case 'output_voltage':
        return entry.outputVoltage;
      case 'output_current':
        return entry.outputCurrent;
      case 'output_power':
        return entry.outputPower;
      default:
        return entry.operationFrequency;
    }
  }

  @override
  Widget build(BuildContext context) {
    final logsAsync = ref.watch(logsProvider);
    final config = _paramConfigs[_selectedParam]!;

    return Scaffold(
      appBar: AppBar(
        title: const Text('History'),
        actions: [
          // Export CSV button
          logsAsync.whenOrNull(
                data: (logs) => logs.isNotEmpty
                    ? IconButton(
                        icon: const Icon(Icons.file_download_outlined),
                        tooltip: 'Export as CSV',
                        onPressed: () => _exportCsv(logs),
                      )
                    : null,
              ) ??
              const SizedBox.shrink(),
          IconButton(
            icon: const Icon(Icons.sync_rounded),
            tooltip: 'Sync from NodeMCU',
            onPressed: _loadData,
          ),
        ],
      ),
      body: Column(
        children: [
          // Time Range Selector
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            child: Row(
              children: _rangeLabels.entries.map((e) {
                final isSelected = _selectedRange == e.key;
                return Padding(
                  padding: const EdgeInsets.only(right: 8),
                  child: ChoiceChip(
                    label: Text(e.value),
                    selected: isSelected,
                    onSelected: (_) {
                      setState(() {
                        _selectedRange = e.key;
                      });
                      _loadData();
                    },
                    selectedColor: AppColors.primary.withValues(alpha: 0.2),
                    labelStyle: TextStyle(
                      color: isSelected
                          ? AppColors.primary
                          : AppColors.textSecondary,
                      fontWeight:
                          isSelected ? FontWeight.w600 : FontWeight.w400,
                    ),
                    side: BorderSide(
                      color: isSelected
                          ? AppColors.primary
                          : AppColors.border,
                    ),
                    backgroundColor: AppColors.surfaceVariant,
                    showCheckmark: false,
                  ),
                );
              }).toList(),
            ),
          ),

          // Parameter Selector
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              children: _paramConfigs.entries.map((e) {
                final isSelected = _selectedParam == e.key;
                return Padding(
                  padding: const EdgeInsets.only(right: 8),
                  child: FilterChip(
                    label: Text(e.value.label),
                    selected: isSelected,
                    onSelected: (_) {
                      setState(() {
                        _selectedParam = e.key;
                      });
                    },
                    selectedColor: e.value.color.withValues(alpha: 0.2),
                    labelStyle: TextStyle(
                      color: isSelected
                          ? e.value.color
                          : AppColors.textSecondary,
                      fontWeight:
                          isSelected ? FontWeight.w600 : FontWeight.w400,
                      fontSize: 13,
                    ),
                    side: BorderSide(
                      color: isSelected
                          ? e.value.color
                          : AppColors.border,
                    ),
                    backgroundColor: AppColors.surfaceVariant,
                    showCheckmark: false,
                  ),
                );
              }).toList(),
            ),
          ),
          const SizedBox(height: 16),

          // Dynamic Chart
          Expanded(
            child: logsAsync.when(
              loading: () => const Center(
                child: CircularProgressIndicator(color: AppColors.primary),
              ),
              error: (e, _) => Center(
                child: Text(
                  'Error loading data: $e',
                  style: const TextStyle(color: AppColors.textSecondary),
                ),
              ),
              data: (logs) {
                if (logs.isEmpty) {
                  return Center(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Icon(
                          Icons.show_chart_rounded,
                          color: AppColors.textTertiary,
                          size: 48,
                        ),
                        const SizedBox(height: 12),
                        const Text(
                          'No data available for this range',
                          style: TextStyle(
                            color: AppColors.textSecondary,
                            fontSize: 15,
                          ),
                        ),
                        const SizedBox(height: 8),
                        ElevatedButton.icon(
                          onPressed: _loadData,
                          icon: const Icon(Icons.sync_rounded, size: 18),
                          label: const Text('Sync Data'),
                        ),
                      ],
                    ),
                  );
                }
                return _buildChart(logs, config);
              },
            ),
          ),

          // Summary stats
          logsAsync.whenOrNull(
                data: (logs) {
                  if (logs.isEmpty) return const SizedBox.shrink();
                  return _buildSummary(logs, config);
                },
              ) ??
              const SizedBox.shrink(),
        ],
      ),
    );
  }

  Future<void> _exportCsv(List<LogEntry> logs) async {
    try {
      await CsvExporter.exportLogs(logs);
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Export failed: $e'),
            backgroundColor: AppColors.error,
          ),
        );
      }
    }
  }

  Widget _buildChart(List<LogEntry> logs, _ParamConfig config) {
    final spots = logs.asMap().entries.map((e) {
      return FlSpot(
        e.key.toDouble(),
        _getParamValue(e.value),
      );
    }).toList();

    // Dynamically calculate clean Y-scale
    final values = logs.map(_getParamValue).toList();
    final dataMinY = values.reduce((a, b) => a < b ? a : b);
    final dataMaxY = values.reduce((a, b) => a > b ? a : b);
    final scale = _ChartScale.calculate(dataMinY, dataMaxY);

    // Determine X-axis date formatting based on range
    final isMultiDay = _selectedRange == '7d';
    final DateFormat timeFormat =
        isMultiDay ? DateFormat('MM/dd HH:mm') : DateFormat.Hm();

    // Determine step for bottom titles (aim for 4 to 5 ticks)
    final double xInterval =
        logs.length > 5 ? (logs.length / 4).ceilToDouble() : 1.0;

    return Padding(
      padding: const EdgeInsets.fromLTRB(12, 8, 20, 8),
      child: LineChart(
        LineChartData(
          gridData: FlGridData(
            show: true,
            drawVerticalLine: false,
            horizontalInterval: scale.interval,
            getDrawingHorizontalLine: (value) => FlLine(
              color: AppColors.border.withValues(alpha: 0.4),
              strokeWidth: 0.8,
              dashArray: [4, 4],
            ),
          ),
          titlesData: FlTitlesData(
            rightTitles: const AxisTitles(),
            topTitles: const AxisTitles(),
            leftTitles: AxisTitles(
              sideTitles: SideTitles(
                showTitles: true,
                interval: scale.interval,
                reservedSize: 52,
                getTitlesWidget: (value, meta) {
                  // Only show titles within calculated range
                  if (value < scale.minY - 0.001 || value > scale.maxY + 0.001) {
                    return const SizedBox.shrink();
                  }
                  final text = scale.decimalDigits == 0
                      ? value.toInt().toString()
                      : value.toStringAsFixed(scale.decimalDigits);

                  return SideTitleWidget(
                    meta: meta,
                    space: 6,
                    child: Text(
                      text,
                      style: const TextStyle(
                        color: AppColors.textTertiary,
                        fontSize: 11,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  );
                },
              ),
            ),
            bottomTitles: AxisTitles(
              sideTitles: SideTitles(
                showTitles: true,
                reservedSize: 32,
                interval: xInterval,
                getTitlesWidget: (value, meta) {
                  final index = value.toInt();
                  if (index < 0 || index >= logs.length) {
                    return const SizedBox.shrink();
                  }
                  final dt = logs[index].timestamp;
                  return SideTitleWidget(
                    meta: meta,
                    space: 6,
                    child: Text(
                      timeFormat.format(dt),
                      style: const TextStyle(
                        color: AppColors.textTertiary,
                        fontSize: 10,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
          borderData: FlBorderData(show: false),
          lineBarsData: [
            LineChartBarData(
              spots: spots,
              isCurved: true,
              curveSmoothness: 0.35,
              preventCurveOverShooting: true,
              color: config.color,
              barWidth: 2.8,
              isStrokeCapRound: true,
              dotData: FlDotData(
                show: logs.length <= 25,
                getDotPainter: (spot, percent, bar, index) {
                  return FlDotCirclePainter(
                    radius: 3.5,
                    color: config.color,
                    strokeWidth: 2,
                    strokeColor: AppColors.surface,
                  );
                },
              ),
              belowBarData: BarAreaData(
                show: true,
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    config.color.withValues(alpha: 0.28),
                    config.color.withValues(alpha: 0.02),
                  ],
                ),
              ),
            ),
          ],
          lineTouchData: LineTouchData(
            handleBuiltInTouches: true,
            touchTooltipData: LineTouchTooltipData(
              getTooltipColor: (_) => AppColors.surfaceElevated,
              tooltipRoundedRadius: 10,
              tooltipPadding:
                  const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
              fitInsideHorizontally: true,
              fitInsideVertically: true,
              getTooltipItems: (touchedSpots) {
                return touchedSpots.map((spot) {
                  final index = spot.spotIndex;
                  if (index < 0 || index >= logs.length) return null;
                  final entry = logs[index];
                  final val = _getParamValue(entry);

                  return LineTooltipItem(
                    '${val.toStringAsFixed(2)} ${config.unit}\n',
                    TextStyle(
                      color: config.color,
                      fontWeight: FontWeight.w700,
                      fontSize: 14,
                    ),
                    children: [
                      TextSpan(
                        text: DateFormat('yyyy-MM-dd HH:mm:ss')
                            .format(entry.timestamp),
                        style: const TextStyle(
                          color: AppColors.textTertiary,
                          fontWeight: FontWeight.w400,
                          fontSize: 11,
                        ),
                      ),
                    ],
                  );
                }).toList();
              },
            ),
          ),
          minY: scale.minY,
          maxY: scale.maxY,
        ),
        duration: const Duration(milliseconds: 350),
        curve: Curves.easeInOutCubic,
      ),
    );
  }

  Widget _buildSummary(List<LogEntry> logs, _ParamConfig config) {
    final values = logs.map(_getParamValue).toList();
    final min = values.reduce((a, b) => a < b ? a : b);
    final max = values.reduce((a, b) => a > b ? a : b);
    final avg = values.reduce((a, b) => a + b) / values.length;

    return Container(
      margin: const EdgeInsets.all(16),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 14),
      decoration: BoxDecoration(
        color: AppColors.surfaceVariant,
        borderRadius: BorderRadius.circular(14),
        border: Border.all(color: AppColors.border, width: 0.5),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _statColumn(
            'Min',
            '${min.toStringAsFixed(1)} ${config.unit}',
            AppColors.info,
          ),
          Container(width: 1, height: 30, color: AppColors.border),
          _statColumn(
            'Avg',
            '${avg.toStringAsFixed(1)} ${config.unit}',
            config.color,
          ),
          Container(width: 1, height: 30, color: AppColors.border),
          _statColumn(
            'Max',
            '${max.toStringAsFixed(1)} ${config.unit}',
            AppColors.warning,
          ),
        ],
      ),
    );
  }

  Widget _statColumn(String label, String value, Color color) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          label,
          style: const TextStyle(
            color: AppColors.textTertiary,
            fontSize: 11,
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(height: 4),
        Text(
          value,
          style: TextStyle(
            color: color,
            fontSize: 14,
            fontWeight: FontWeight.w700,
          ),
        ),
      ],
    );
  }
}

class _ParamConfig {
  final String label;
  final String unit;
  final Color color;

  const _ParamConfig(this.label, this.unit, this.color);
}

/// Helper to compute dynamic, human-friendly "nice" Y-axis bounds and grid steps.
class _ChartScale {
  final double minY;
  final double maxY;
  final double interval;
  final int decimalDigits;

  const _ChartScale({
    required this.minY,
    required this.maxY,
    required this.interval,
    required this.decimalDigits,
  });

  static _ChartScale calculate(double dataMin, double dataMax) {
    if (dataMin == dataMax) {
      if (dataMin == 0) {
        return const _ChartScale(
          minY: 0,
          maxY: 10,
          interval: 2.5,
          decimalDigits: 1,
        );
      }
      final margin = (dataMin.abs() * 0.15).clamp(1.0, 50.0);
      final rawMin = (dataMin - margin).clamp(0.0, double.infinity);
      final rawMax = dataMin + margin;
      final range = rawMax - rawMin;
      final interval = _niceNum(range / 4, round: true);
      final niceMin = (rawMin / interval).floor() * interval;
      final niceMax = (rawMax / interval).ceil() * interval;
      final decimals = interval < 1 ? 2 : (interval % 1 != 0 ? 1 : 0);
      return _ChartScale(
        minY: niceMin,
        maxY: niceMax > niceMin ? niceMax : niceMin + interval * 4,
        interval: interval > 0 ? interval : 1,
        decimalDigits: decimals,
      );
    }

    final rawRange = dataMax - dataMin;
    final padding = rawRange * 0.12;
    final rawMin = (dataMin - padding).clamp(0.0, double.infinity);
    final rawMax = dataMax + padding;
    final range = rawMax - rawMin;

    final roughInterval = range / 4;
    final niceInterval = _niceNum(roughInterval, round: true);
    final niceMin = (rawMin / niceInterval).floor() * niceInterval;
    final niceMax = (rawMax / niceInterval).ceil() * niceInterval;
    final decimals = niceInterval < 1 ? 2 : (niceInterval % 1 != 0 ? 1 : 0);

    return _ChartScale(
      minY: niceMin,
      maxY: niceMax > niceMin ? niceMax : niceMin + niceInterval * 4,
      interval: niceInterval > 0 ? niceInterval : 1,
      decimalDigits: decimals,
    );
  }

  static double _niceNum(double range, {required bool round}) {
    if (range <= 0) return 1.0;
    final exponent = (log(range) / ln10).floorToDouble();
    final fraction = range / pow(10, exponent);
    double niceFraction;

    if (round) {
      if (fraction < 1.5) {
        niceFraction = 1;
      } else if (fraction < 3) {
        niceFraction = 2;
      } else if (fraction < 7) {
        niceFraction = 5;
      } else {
        niceFraction = 10;
      }
    } else {
      if (fraction <= 1) {
        niceFraction = 1;
      } else if (fraction <= 2) {
        niceFraction = 2;
      } else if (fraction <= 5) {
        niceFraction = 5;
      } else {
        niceFraction = 10;
      }
    }

    return niceFraction * pow(10, exponent);
  }
}
