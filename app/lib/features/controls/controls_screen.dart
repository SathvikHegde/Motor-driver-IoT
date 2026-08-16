import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../core/theme/app_colors.dart';
import '../../providers/app_providers.dart';
import '../../widgets/status_indicator.dart';

class ControlsScreen extends ConsumerStatefulWidget {
  const ControlsScreen({super.key});

  @override
  ConsumerState<ControlsScreen> createState() => _ControlsScreenState();
}

class _ControlsScreenState extends ConsumerState<ControlsScreen> {
  double _targetFrequency = 50.0;
  final _freqController = TextEditingController(text: '50.0');

  @override
  void dispose() {
    _freqController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
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
        data: (status) => SingleChildScrollView(
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

              // Start/Stop Controls
              const Text(
                'Motor Control',
                style: TextStyle(
                  color: AppColors.textPrimary,
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 14),
              Row(
                children: [
                  Expanded(
                    child: _buildControlButton(
                      icon: Icons.play_arrow_rounded,
                      label: 'START',
                      color: AppColors.success,
                      enabled: !isLoading && !status.isRunning,
                      onPressed: () => _confirmAction('start'),
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: _buildControlButton(
                      icon: Icons.stop_rounded,
                      label: 'STOP',
                      color: AppColors.error,
                      enabled: !isLoading && status.isRunning,
                      onPressed: () => _confirmAction('stop'),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 32),

              // Frequency Control
              const Text(
                'Frequency Setting',
                style: TextStyle(
                  color: AppColors.textPrimary,
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 14),
              Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: AppColors.surfaceVariant,
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(color: AppColors.border, width: 0.5),
                ),
                child: Column(
                  children: [
                    // Numeric display
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          _targetFrequency.toStringAsFixed(1),
                          style: const TextStyle(
                            color: AppColors.primary,
                            fontSize: 42,
                            fontWeight: FontWeight.w800,
                            height: 1,
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(bottom: 4),
                          child: Text(
                            ' Hz',
                            style: TextStyle(
                              color: AppColors.textTertiary,
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),

                    // Slider
                    SliderTheme(
                      data: SliderThemeData(
                        activeTrackColor: AppColors.primary,
                        inactiveTrackColor: AppColors.surfaceBright,
                        thumbColor: AppColors.primary,
                        overlayColor: AppColors.primary.withValues(alpha: 0.15),
                        trackHeight: 6,
                        thumbShape: const RoundSliderThumbShape(
                          enabledThumbRadius: 10,
                          elevation: 4,
                        ),
                      ),
                      child: Slider(
                        value: _targetFrequency,
                        min: 0,
                        max: 60,
                        divisions: 120,
                        onChanged: (value) {
                          setState(() {
                            _targetFrequency = value;
                            _freqController.text = value.toStringAsFixed(1);
                          });
                        },
                      ),
                    ),
                    const SizedBox(height: 4),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('0 Hz',
                            style: TextStyle(
                              color: AppColors.textTertiary,
                              fontSize: 11,
                            )),
                        Text('60 Hz',
                            style: TextStyle(
                              color: AppColors.textTertiary,
                              fontSize: 11,
                            )),
                      ],
                    ),
                    const SizedBox(height: 16),

                    // Manual input
                    Row(
                      children: [
                        Expanded(
                          child: TextField(
                            controller: _freqController,
                            keyboardType: const TextInputType.numberWithOptions(
                                decimal: true),
                            inputFormatters: [
                              FilteringTextInputFormatter.allow(
                                  RegExp(r'^\d*\.?\d{0,1}')),
                            ],
                            decoration: const InputDecoration(
                              labelText: 'Enter frequency',
                              suffixText: 'Hz',
                            ),
                            onChanged: (value) {
                              final parsed = double.tryParse(value);
                              if (parsed != null &&
                                  parsed >= 0 &&
                                  parsed <= 60) {
                                setState(() => _targetFrequency = parsed);
                              }
                            },
                          ),
                        ),
                        const SizedBox(width: 12),
                        SizedBox(
                          height: 50,
                          child: ElevatedButton(
                            onPressed: isLoading
                                ? null
                                : () =>
                                    _confirmAction('set_frequency'),
                            child: const Text('SET'),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 14),

                    // Quick preset buttons
                    Wrap(
                      spacing: 8,
                      runSpacing: 8,
                      children: [10, 20, 30, 40, 50, 60]
                          .map((freq) => _presetButton(freq.toDouble()))
                          .toList(),
                    ),
                  ],
                ),
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

  Widget _presetButton(double freq) {
    final isActive = _targetFrequency == freq;
    return OutlinedButton(
      onPressed: () {
        setState(() {
          _targetFrequency = freq;
          _freqController.text = freq.toStringAsFixed(1);
        });
      },
      style: OutlinedButton.styleFrom(
        backgroundColor: isActive
            ? AppColors.primary.withValues(alpha: 0.15)
            : Colors.transparent,
        side: BorderSide(
          color: isActive ? AppColors.primary : AppColors.border,
          width: isActive ? 1.5 : 1,
        ),
        foregroundColor:
            isActive ? AppColors.primary : AppColors.textSecondary,
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      ),
      child: Text('${freq.toInt()} Hz'),
    );
  }

  void _confirmAction(String action) {
    final messages = {
      'start': 'Start the motor?',
      'stop': 'Stop the motor?',
      'set_frequency':
          'Set frequency to ${_targetFrequency.toStringAsFixed(1)} Hz?',
    };

    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Confirm Action'),
        content: Text(messages[action] ?? 'Execute command?'),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Cancel'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
              _executeAction(action);
            },
            child: const Text('Confirm'),
          ),
        ],
      ),
    );
  }

  Future<void> _executeAction(String action) async {
    final commandNotifier = ref.read(commandProvider.notifier);
    bool success;

    switch (action) {
      case 'start':
        success = await commandNotifier.start();
        break;
      case 'stop':
        success = await commandNotifier.stop();
        break;
      case 'set_frequency':
        success =
            await commandNotifier.setFrequency(_targetFrequency);
        break;
      default:
        return;
    }

    if (mounted) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(success
              ? 'Command sent successfully'
              : 'Failed to send command'),
          backgroundColor:
              success ? AppColors.success : AppColors.error,
        ),
      );

      if (success) {
        // Refresh status
        ref.read(driveStatusProvider.notifier).refresh();
      }
    }
  }
}
