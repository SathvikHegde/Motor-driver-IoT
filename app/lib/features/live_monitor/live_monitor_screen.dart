import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../core/theme/app_colors.dart';
import '../../providers/app_providers.dart';
import 'widgets/radial_gauge.dart';

class LiveMonitorScreen extends ConsumerStatefulWidget {
  const LiveMonitorScreen({super.key});

  @override
  ConsumerState<LiveMonitorScreen> createState() => _LiveMonitorScreenState();
}

class _LiveMonitorScreenState extends ConsumerState<LiveMonitorScreen> {
  @override
  void initState() {
    super.initState();
    // Ensure polling is active
    Future.microtask(() {
      ref.read(driveStatusProvider.notifier).startPolling(
            interval: const Duration(seconds: 1),
          );
    });
  }

  @override
  Widget build(BuildContext context) {
    final statusAsync = ref.watch(driveStatusProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Live Monitor'),
        actions: [
          IconButton(
            icon: const Icon(Icons.refresh_rounded),
            onPressed: () =>
                ref.read(driveStatusProvider.notifier).refresh(),
          ),
        ],
      ),
      body: statusAsync.when(
        loading: () => const Center(
          child: CircularProgressIndicator(color: AppColors.primary),
        ),
        error: (e, _) => Center(
          child: Text('Error: $e',
              style: const TextStyle(color: AppColors.error)),
        ),
        data: (status) => SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
          child: Column(
            children: [
              // Motor Status Header
              Container(
                width: double.infinity,
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 14),
                decoration: BoxDecoration(
                  color: status.isRunning
                      ? AppColors.success.withValues(alpha: 0.1)
                      : AppColors.surfaceVariant,
                  borderRadius: BorderRadius.circular(14),
                  border: Border.all(
                    color: status.isRunning
                        ? AppColors.success.withValues(alpha: 0.3)
                        : AppColors.border,
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      status.isRunning
                          ? Icons.electric_bolt_rounded
                          : Icons.power_off_rounded,
                      color: status.isRunning
                          ? AppColors.success
                          : AppColors.textTertiary,
                      size: 22,
                    ),
                    const SizedBox(width: 10),
                    Text(
                      status.isRunning ? 'MOTOR RUNNING' : 'MOTOR STOPPED',
                      style: TextStyle(
                        color: status.isRunning
                            ? AppColors.success
                            : AppColors.textTertiary,
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        letterSpacing: 1,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 28),

              // Gauges — first row (2)
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  RadialGauge(
                    label: 'Frequency',
                    unit: 'Hz',
                    value: status.operationFrequency,
                    maxValue: 60,
                    color: AppColors.gaugeFrequency,
                    size: 150,
                  ),
                  RadialGauge(
                    label: 'Output Current',
                    unit: 'A',
                    value: status.outputCurrent,
                    maxValue: 50,
                    color: AppColors.gaugeCurrent,
                    size: 150,
                  ),
                ],
              ),
              const SizedBox(height: 20),

              // Gauges — second row (2)
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  RadialGauge(
                    label: 'Output Voltage',
                    unit: 'V',
                    value: status.outputVoltage,
                    maxValue: 500,
                    color: AppColors.gaugeVoltage,
                    size: 150,
                  ),
                  RadialGauge(
                    label: 'Bus Voltage',
                    unit: 'V',
                    value: status.busVoltage,
                    maxValue: 800,
                    color: AppColors.gaugeBusVoltage,
                    size: 150,
                  ),
                ],
              ),
              const SizedBox(height: 20),

              // Gauge — third row (1, centered)
              RadialGauge(
                label: 'Output Power',
                unit: 'kW',
                value: status.outputPower,
                maxValue: 20,
                color: AppColors.gaugePower,
                size: 150,
              ),
              const SizedBox(height: 28),

              // Numeric Readouts Table
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: AppColors.surfaceVariant,
                  borderRadius: BorderRadius.circular(16),
                  border:
                      Border.all(color: AppColors.border, width: 0.5),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'All Parameters',
                      style: TextStyle(
                        color: AppColors.textPrimary,
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(height: 12),
                    _readoutRow('Operation Frequency',
                        '${status.operationFrequency.toStringAsFixed(2)} Hz',
                        AppColors.gaugeFrequency),
                    _readoutRow('Bus Voltage',
                        '${status.busVoltage.toStringAsFixed(1)} V',
                        AppColors.gaugeBusVoltage),
                    _readoutRow('Output Voltage',
                        '${status.outputVoltage.toStringAsFixed(1)} V',
                        AppColors.gaugeVoltage),
                    _readoutRow('Output Current',
                        '${status.outputCurrent.toStringAsFixed(2)} A',
                        AppColors.gaugeCurrent),
                    _readoutRow('Output Power',
                        '${status.outputPower.toStringAsFixed(2)} kW',
                        AppColors.gaugePower),
                    _readoutRow(
                      'Fault Code',
                      status.hasFault
                          ? '${status.faultCode}'
                          : 'None',
                      status.hasFault
                          ? AppColors.error
                          : AppColors.success,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 16),

              // Last updated
              Text(
                'Last updated: ${_formatTime(status.timestamp)}',
                style: const TextStyle(
                  color: AppColors.textTertiary,
                  fontSize: 12,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _readoutRow(String label, String value, Color color) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(label,
              style: const TextStyle(
                color: AppColors.textSecondary,
                fontSize: 14,
              )),
          Text(
            value,
            style: TextStyle(
              color: color,
              fontSize: 14,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }

  String _formatTime(DateTime dt) {
    return '${dt.hour.toString().padLeft(2, '0')}:'
        '${dt.minute.toString().padLeft(2, '0')}:'
        '${dt.second.toString().padLeft(2, '0')}';
  }
}
