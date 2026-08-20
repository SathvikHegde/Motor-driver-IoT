import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../../core/theme/app_colors.dart';
import '../../data/models/drive_status.dart';
import '../../providers/app_providers.dart';
import '../../widgets/status_indicator.dart';
import '../../widgets/parameter_card.dart';

class DashboardScreen extends ConsumerStatefulWidget {
  const DashboardScreen({super.key});

  @override
  ConsumerState<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends ConsumerState<DashboardScreen> {
  @override
  void initState() {
    super.initState();
    // Start polling drive status
    Future.microtask(() {
      ref.read(driveStatusProvider.notifier).startPolling();
    });
  }

  @override
  Widget build(BuildContext context) {
    final statusAsync = ref.watch(driveStatusProvider);
    final commandState = ref.watch(commandProvider);
    final isCommandLoading = commandState is AsyncLoading;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Dashboard'),
        actions: [
          // Connection status
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: StatusIndicator.connected(),
          ),
        ],
      ),
      body: statusAsync.when(
        loading: () => const Center(
          child: CircularProgressIndicator(color: AppColors.primary),
        ),
        error: (e, _) => Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Icon(Icons.error_outline, color: AppColors.error, size: 48),
              const SizedBox(height: 16),
              Text('Error: $e',
                  style: const TextStyle(color: AppColors.textSecondary)),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: () =>
                    ref.read(driveStatusProvider.notifier).refresh(),
                child: const Text('Retry'),
              ),
            ],
          ),
        ),
        data: (status) => RefreshIndicator(
          onRefresh: () => ref.read(driveStatusProvider.notifier).refresh(),
          color: AppColors.primary,
          child: SingleChildScrollView(
            physics: const AlwaysScrollableScrollPhysics(),
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Motor Status Card
                _buildMotorStatusCard(status),
                const SizedBox(height: 20),

                // Quick Actions
                _buildQuickActions(status, isCommandLoading),
                const SizedBox(height: 24),

                // Parameter Grid
                const Text(
                  'Parameters',
                  style: TextStyle(
                    color: AppColors.textPrimary,
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 12),
                _buildParameterGrid(status),
                const SizedBox(height: 24),

                // Quick Links
                const Text(
                  'Quick Access',
                  style: TextStyle(
                    color: AppColors.textPrimary,
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 12),
                _buildQuickLinks(context),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildMotorStatusCard(DriveStatus status) {
    final statusColor = status.hasFault
        ? AppColors.motorFault
        : status.isRunning
            ? AppColors.motorRunning
            : AppColors.motorStopped;

    final statusText = status.hasFault
        ? 'FAULT'
        : status.isRunning
            ? 'RUNNING'
            : 'STOPPED';

    final statusIndicator = status.hasFault
        ? StatusIndicator.fault()
        : status.isRunning
            ? StatusIndicator.running()
            : StatusIndicator.stopped();

    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            statusColor.withValues(alpha: 0.12),
            AppColors.surfaceVariant,
          ],
        ),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: statusColor.withValues(alpha: 0.25),
          width: 1,
        ),
      ),
      child: Column(
        children: [
          Row(
            children: [
              // Motor icon
              Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: statusColor.withValues(alpha: 0.15),
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  Icons.electric_bolt_rounded,
                  color: statusColor,
                  size: 28,
                ),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Motor Status',
                      style: TextStyle(
                        color: AppColors.textTertiary,
                        fontSize: 13,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      statusText,
                      style: TextStyle(
                        color: statusColor,
                        fontSize: 22,
                        fontWeight: FontWeight.w800,
                        letterSpacing: 1.2,
                      ),
                    ),
                  ],
                ),
              ),
              statusIndicator,
            ],
          ),
          if (status.hasFault) ...[
            const SizedBox(height: 12),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: AppColors.error.withValues(alpha: 0.1),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                children: [
                  const Icon(Icons.warning_rounded,
                      color: AppColors.error, size: 18),
                  const SizedBox(width: 8),
                  Text(
                    'Fault Code: ${status.faultCode}',
                    style: const TextStyle(
                      color: AppColors.error,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ],
      ),
    );
  }

  Widget _buildQuickActions(DriveStatus status, bool isLoading) {
    return Row(
      children: [
        Expanded(
          child: SizedBox(
            height: 50,
            child: ElevatedButton.icon(
              onPressed: isLoading || status.isRunning
                  ? null
                  : () async {
                      final success =
                          await ref.read(commandProvider.notifier).start();
                      if (success && mounted) {
                        ref.read(driveStatusProvider.notifier).refresh();
                      }
                    },
              icon: const Icon(Icons.play_arrow_rounded, size: 22),
              label: const Text('START'),
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.success,
                foregroundColor: Colors.white,
                disabledBackgroundColor: AppColors.success.withValues(alpha: 0.3),
              ),
            ),
          ),
        ),
        const SizedBox(width: 12),
        Expanded(
          child: SizedBox(
            height: 50,
            child: ElevatedButton.icon(
              onPressed: isLoading || !status.isRunning
                  ? null
                  : () async {
                      final success =
                          await ref.read(commandProvider.notifier).stop();
                      if (success && mounted) {
                        ref.read(driveStatusProvider.notifier).refresh();
                      }
                    },
              icon: const Icon(Icons.stop_rounded, size: 22),
              label: const Text('STOP'),
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.error,
                foregroundColor: Colors.white,
                disabledBackgroundColor: AppColors.error.withValues(alpha: 0.3),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildParameterGrid(DriveStatus status) {
    return GridView.count(
      crossAxisCount: 2,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      mainAxisSpacing: 10,
      crossAxisSpacing: 10,
      childAspectRatio: 1.5,
      children: [
        ParameterCard(
          label: 'Frequency',
          value: status.operationFrequency.toStringAsFixed(1),
          unit: 'Hz',
          icon: Icons.speed_rounded,
          color: AppColors.gaugeFrequency,
        ),
        ParameterCard(
          label: 'Bus Voltage',
          value: status.busVoltage.toStringAsFixed(0),
          unit: 'V',
          icon: Icons.bolt_rounded,
          color: AppColors.gaugeBusVoltage,
        ),
        ParameterCard(
          label: 'Output Voltage',
          value: status.outputVoltage.toStringAsFixed(0),
          unit: 'V',
          icon: Icons.electric_meter_rounded,
          color: AppColors.gaugeVoltage,
        ),
        ParameterCard(
          label: 'Output Current',
          value: status.outputCurrent.toStringAsFixed(1),
          unit: 'A',
          icon: Icons.waves_rounded,
          color: AppColors.gaugeCurrent,
        ),
        ParameterCard(
          label: 'Output Power',
          value: status.outputPower.toStringAsFixed(1),
          unit: '%',
          icon: Icons.power_rounded,
          color: AppColors.gaugePower,
        ),
        ParameterCard(
          label: 'Fault Code',
          value: status.faultCode.toString(),
          unit: status.hasFault ? '⚠' : '✓',
          icon: Icons.health_and_safety_rounded,
          color: status.hasFault ? AppColors.error : AppColors.success,
        ),
      ],
    );
  }

  Widget _buildQuickLinks(BuildContext context) {
    return Column(
      children: [
        _quickLinkTile(
          icon: Icons.analytics_rounded,
          title: 'Live Monitor',
          subtitle: 'Real-time gauges & values',
          color: AppColors.gaugeFrequency,
          onTap: () => context.go('/live-monitor'),
        ),
        _quickLinkTile(
          icon: Icons.show_chart_rounded,
          title: 'History',
          subtitle: 'Charts & logged data',
          color: AppColors.gaugeVoltage,
          onTap: () => context.go('/history'),
        ),
        _quickLinkTile(
          icon: Icons.tune_rounded,
          title: 'Controls',
          subtitle: 'Start, stop & set frequency',
          color: AppColors.gaugePower,
          onTap: () => context.go('/controls'),
        ),
        _quickLinkTile(
          icon: Icons.warning_amber_rounded,
          title: 'Faults',
          subtitle: 'Fault history & codes',
          color: AppColors.error,
          onTap: () => context.go('/faults'),
        ),
      ],
    );
  }

  Widget _quickLinkTile({
    required IconData icon,
    required String title,
    required String subtitle,
    required Color color,
    required VoidCallback onTap,
  }) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: onTap,
          borderRadius: BorderRadius.circular(14),
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
            decoration: BoxDecoration(
              color: AppColors.surfaceVariant,
              borderRadius: BorderRadius.circular(14),
              border: Border.all(color: AppColors.border, width: 0.5),
            ),
            child: Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: color.withValues(alpha: 0.12),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Icon(icon, color: color, size: 20),
                ),
                const SizedBox(width: 14),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(title,
                          style: const TextStyle(
                            color: AppColors.textPrimary,
                            fontWeight: FontWeight.w600,
                            fontSize: 15,
                          )),
                      Text(subtitle,
                          style: const TextStyle(
                            color: AppColors.textTertiary,
                            fontSize: 12,
                          )),
                    ],
                  ),
                ),
                const Icon(Icons.chevron_right_rounded,
                    color: AppColors.textTertiary, size: 22),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
