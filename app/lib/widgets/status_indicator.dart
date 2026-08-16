import 'package:flutter/material.dart';
import '../../core/theme/app_colors.dart';

/// Reusable connection/status indicator dot with optional pulsing animation.
class StatusIndicator extends StatefulWidget {
  final Color color;
  final double size;
  final bool pulse;
  final String? label;

  const StatusIndicator({
    super.key,
    required this.color,
    this.size = 10,
    this.pulse = false,
    this.label,
  });

  /// Factory for common states.
  factory StatusIndicator.connected({String? label}) => StatusIndicator(
        color: AppColors.connected,
        pulse: false,
        label: label ?? 'Connected',
      );

  factory StatusIndicator.disconnected({String? label}) => StatusIndicator(
        color: AppColors.disconnected,
        pulse: false,
        label: label ?? 'Disconnected',
      );

  factory StatusIndicator.connecting({String? label}) => StatusIndicator(
        color: AppColors.connecting,
        pulse: true,
        label: label ?? 'Connecting...',
      );

  factory StatusIndicator.running({String? label}) => StatusIndicator(
        color: AppColors.motorRunning,
        pulse: true,
        label: label ?? 'Running',
      );

  factory StatusIndicator.stopped({String? label}) => StatusIndicator(
        color: AppColors.motorStopped,
        pulse: false,
        label: label ?? 'Stopped',
      );

  factory StatusIndicator.fault({String? label}) => StatusIndicator(
        color: AppColors.motorFault,
        pulse: true,
        label: label ?? 'Fault',
      );

  @override
  State<StatusIndicator> createState() => _StatusIndicatorState();
}

class _StatusIndicatorState extends State<StatusIndicator>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 1500),
      vsync: this,
    );
    _animation = Tween<double>(begin: 0.4, end: 1.0).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeInOut),
    );
    if (widget.pulse) {
      _controller.repeat(reverse: true);
    }
  }

  @override
  void didUpdateWidget(StatusIndicator oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.pulse && !_controller.isAnimating) {
      _controller.repeat(reverse: true);
    } else if (!widget.pulse && _controller.isAnimating) {
      _controller.stop();
      _controller.value = 1.0;
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        ListenableBuilder(
          listenable: _animation,
          builder: (context, child) {
            return Container(
              width: widget.size,
              height: widget.size,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: widget.color.withValues(alpha: _animation.value),
                boxShadow: [
                  BoxShadow(
                    color: widget.color.withValues(alpha: 0.4 * _animation.value),
                    blurRadius: widget.size,
                    spreadRadius: widget.size * 0.2,
                  ),
                ],
              ),
            );
          },
        ),
        if (widget.label != null) ...[
          const SizedBox(width: 8),
          Text(
            widget.label!,
            style: TextStyle(
              color: widget.color,
              fontSize: 13,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ],
    );
  }
}
