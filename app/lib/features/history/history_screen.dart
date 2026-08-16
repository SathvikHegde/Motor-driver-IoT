import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import '../../core/theme/app_colors.dart';
import '../../data/models/log_entry.dart';
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
                      setState(() => _selectedRange = e.key);
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
                      setState(() => _selectedParam = e.key);
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

          // Chart
          Expanded(
            child: logsAsync.when(
              loading: () => const Center(
                child:
                    CircularProgressIndicator(color: AppColors.primary),
              ),
              error: (e, _) => Center(
                child: Text('Error loading data: $e',
                    style:
                        const TextStyle(color: AppColors.textSecondary)),
              ),
              data: (logs) {
                if (logs.isEmpty) {
                  return Center(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(Icons.show_chart_rounded,
                            color: AppColors.textTertiary, size: 48),
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

  Widget _buildChart(List<LogEntry> logs, _ParamConfig config) {
    final spots = logs.asMap().entries.map((e) {
      return FlSpot(
        e.key.toDouble(),
        _getParamValue(e.value),
      );
    }).toList();

    // Calculate min/max for Y axis
    final values = logs.map(_getParamValue).toList();
    final minY = values.reduce((a, b) => a < b ? a : b);
    final maxY = values.reduce((a, b) => a > b ? a : b);
    final yPadding = (maxY - minY) * 0.15;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: LineChart(
        LineChartData(
          gridData: FlGridData(
            show: true,
            drawVerticalLine: false,
            horizontalInterval: (maxY - minY) > 0
                ? (maxY - minY) / 4
                : 1,
            getDrawingHorizontalLine: (value) => FlLine(
              color: AppColors.border.withValues(alpha: 0.5),
              strokeWidth: 0.5,
            ),
          ),
          titlesData: FlTitlesData(
            rightTitles: const AxisTitles(),
            topTitles: const AxisTitles(),
            leftTitles: AxisTitles(
              sideTitles: SideTitles(
                showTitles: true,
                reservedSize: 50,
                getTitlesWidget: (value, meta) {
                  return Text(
                    value.toStringAsFixed(1),
                    style: const TextStyle(
                      color: AppColors.textTertiary,
                      fontSize: 10,
                    ),
                  );
                },
              ),
            ),
            bottomTitles: AxisTitles(
              sideTitles: SideTitles(
                showTitles: true,
                reservedSize: 30,
                interval: logs.length > 10
                    ? (logs.length / 5).ceilToDouble()
                    : 1,
                getTitlesWidget: (value, meta) {
                  final index = value.toInt();
                  if (index < 0 || index >= logs.length) {
                    return const SizedBox.shrink();
                  }
                  final dt = logs[index].timestamp;
                  return Padding(
                    padding: const EdgeInsets.only(top: 8),
                    child: Text(
                      DateFormat.Hm().format(dt),
                      style: const TextStyle(
                        color: AppColors.textTertiary,
                        fontSize: 10,
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
              curveSmoothness: 0.3,
              color: config.color,
              barWidth: 2.5,
              isStrokeCapRound: true,
              dotData: FlDotData(
                show: logs.length < 30,
                getDotPainter: (spot, percent, bar, index) {
                  return FlDotCirclePainter(
                    radius: 3,
                    color: config.color,
                    strokeWidth: 1.5,
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
                    config.color.withValues(alpha: 0.25),
                    config.color.withValues(alpha: 0.02),
                  ],
                ),
              ),
            ),
          ],
          lineTouchData: LineTouchData(
            touchTooltipData: LineTouchTooltipData(
              getTooltipColor: (_) => AppColors.surfaceElevated,
              tooltipRoundedRadius: 10,
              getTooltipItems: (spots) {
                return spots.map((spot) {
                  final index = spot.spotIndex;
                  final entry = logs[index];
                  return LineTooltipItem(
                    '${_getParamValue(entry).toStringAsFixed(2)} ${config.unit}\n',
                    TextStyle(
                      color: config.color,
                      fontWeight: FontWeight.w600,
                      fontSize: 13,
                    ),
                    children: [
                      TextSpan(
                        text: DateFormat('HH:mm:ss').format(entry.timestamp),
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
          minY: minY - yPadding,
          maxY: maxY + yPadding,
        ),
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeOut,
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
          _statColumn('Min', '${min.toStringAsFixed(1)} ${config.unit}',
              AppColors.info),
          Container(width: 1, height: 30, color: AppColors.border),
          _statColumn('Avg', '${avg.toStringAsFixed(1)} ${config.unit}',
              config.color),
          Container(width: 1, height: 30, color: AppColors.border),
          _statColumn('Max', '${max.toStringAsFixed(1)} ${config.unit}',
              AppColors.warning),
        ],
      ),
    );
  }

  Widget _statColumn(String label, String value, Color color) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(label,
            style: const TextStyle(
              color: AppColors.textTertiary,
              fontSize: 11,
              fontWeight: FontWeight.w500,
            )),
        const SizedBox(height: 4),
        Text(value,
            style: TextStyle(
              color: color,
              fontSize: 14,
              fontWeight: FontWeight.w700,
            )),
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
