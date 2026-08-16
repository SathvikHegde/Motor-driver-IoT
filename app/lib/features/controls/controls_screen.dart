import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../core/theme/app_colors.dart';
import '../../providers/app_providers.dart';
import '../../widgets/status_indicator.dart';

class ControlsScreen extends ConsumerWidget {
  const ControlsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final statusAsync = ref.watch(driveStatusProvider);
    final commandState = ref.watch(commandProvider);
    final isLoading = commandState is AsyncLoading;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Controls'),
      ),
      body: statusAsync.when(
        loading: () => const Center(
          child: CircularProgressIndicator(color: AppColors.primary),
        ),
        error: (e, _) => Center(
          child: Text('Error: $e',
              style: const TextStyle(color: AppColors.textSecondary)),
        ),
        data: (status) => Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // Current Status
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: AppColors.surfaceVariant,
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(color: AppColors.border, width: 0.5),
                ),
                child: Row(
                  children: [
                    status.isRunning
                        ? StatusIndicator.running()
                        : StatusIndicator.stopped(),
                    const Spacer(),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        const Text('Current Frequency',
                            style: TextStyle(
                              color: AppColors.textTertiary,
                              fontSize: 12,
                            )),
                        Text(
                          '${status.operationFrequency.toStringAsFixed(1)} Hz',
                          style: const TextStyle(
                            color: AppColors.primary,
                            fontSize: 22,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 28),

              // Motor Control Header
              const Text(
                'Motor Control',
                style: TextStyle(
                  color: AppColors.textPrimary,
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 14),

              // Start / Stop Buttons
              Row(
                children: [
                  Expanded(
                    child: _buildControlButton(
                      icon: Icons.play_arrow_rounded,
                      label: 'START',
                      color: AppColors.success,
                      enabled: !isLoading && !status.isRunning,
                      onPressed: () =>
                          _confirmAction(context, ref, 'start'),
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: _buildControlButton(
                      icon: Icons.stop_rounded,
                      label: 'STOP',
                      color: AppColors.error,
                      enabled: !isLoading && status.isRunning,
                      onPressed: () =>
                          _confirmAction(context, ref, 'stop'),
                    ),
                  ),
                ],
              ),

              // Loading indicator
              if (isLoading) ...[
                const SizedBox(height: 20),
                const Center(
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SizedBox(
                        width: 18,
                        height: 18,
                        child: CircularProgressIndicator(
                          strokeWidth: 2,
                          color: AppColors.primary,
                        ),
                      ),
                      SizedBox(width: 10),
                      Text('Sending command...',
                          style: TextStyle(
                            color: AppColors.textSecondary,
                            fontSize: 13,
                          )),
                    ],
                  ),
                ),
              ],
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildControlButton({
    required IconData icon,
    required String label,
    required Color color,
    required bool enabled,
    required VoidCallback onPressed,
  }) {
    return SizedBox(
      height: 64,
      child: ElevatedButton.icon(
        onPressed: enabled ? onPressed : null,
        icon: Icon(icon, size: 26),
        label: Text(label,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w700,
              letterSpacing: 1,
            )),
        style: ElevatedButton.styleFrom(
          backgroundColor: color,
          foregroundColor: Colors.white,
          disabledBackgroundColor: color.withValues(alpha: 0.2),
          disabledForegroundColor: color.withValues(alpha: 0.5),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(14),
          ),
        ),
      ),
    );
  }

  void _confirmAction(BuildContext context, WidgetRef ref, String action) {
    final message = action == 'start' ? 'Start the motor?' : 'Stop the motor?';

    showDialog(
      context: context,
      builder: (dialogContext) => AlertDialog(
        title: const Text('Confirm Action'),
        content: Text(message),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(dialogContext),
            child: const Text('Cancel'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(dialogContext);
              _executeAction(context, ref, action);
            },
            child: const Text('Confirm'),
          ),
        ],
      ),
    );
  }

  Future<void> _executeAction(
      BuildContext context, WidgetRef ref, String action) async {
    final commandNotifier = ref.read(commandProvider.notifier);
    final messenger = ScaffoldMessenger.of(context);
    final bool success;

    if (action == 'start') {
      success = await commandNotifier.start();
    } else {
      success = await commandNotifier.stop();
    }

    messenger.showSnackBar(
      SnackBar(
        content: Text(
            success ? 'Command sent successfully' : 'Failed to send command'),
        backgroundColor: success ? AppColors.success : AppColors.error,
      ),
    );

    if (success) {
      ref.read(driveStatusProvider.notifier).refresh();
    }
  }
}
