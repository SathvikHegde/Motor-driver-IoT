import 'dart:math';
import 'package:flutter/material.dart';
import '../../../core/theme/app_colors.dart';

/// A radial gauge widget for displaying drive parameters.
/// Custom-painted using Canvas for a premium industrial look.
class RadialGauge extends StatefulWidget {
  final String label;
  final String unit;
  final double value;
  final double minValue;
  final double maxValue;
  final Color color;
  final double size;

  const RadialGauge({
    super.key,
    required this.label,
    required this.unit,
    required this.value,
    this.minValue = 0,
    required this.maxValue,
    required this.color,
    this.size = 140,
  });

  @override
  State<RadialGauge> createState() => _RadialGaugeState();
}

class _RadialGaugeState extends State<RadialGauge>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;
  double _previousValue = 0;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 800),
      vsync: this,
    );
    _animation = Tween<double>(begin: 0, end: widget.value).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeOutCubic),
    );
    _controller.forward();
  }

  @override
  void didUpdateWidget(RadialGauge oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.value != widget.value) {
      _previousValue = oldWidget.value;
      _animation = Tween<double>(
        begin: _previousValue,
        end: widget.value,
      ).animate(
        CurvedAnimation(parent: _controller, curve: Curves.easeOutCubic),
      );
      _controller
        ..reset()
        ..forward();
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ListenableBuilder(
      listenable: _animation,
      builder: (context, child) {
        return SizedBox(
          width: widget.size,
          height: widget.size + 36,
          child: Column(
            children: [
              SizedBox(
                width: widget.size,
                height: widget.size,
                child: CustomPaint(
                  painter: _GaugePainter(
                    value: _animation.value,
                    minValue: widget.minValue,
                    maxValue: widget.maxValue,
                    color: widget.color,
                  ),
                  child: Center(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          _animation.value.toStringAsFixed(1),
                          style: TextStyle(
                            color: AppColors.textPrimary,
                            fontSize: widget.size * 0.18,
                            fontWeight: FontWeight.w700,
                            height: 1,
                          ),
                        ),
                        const SizedBox(height: 2),
                        Text(
                          widget.unit,
                          style: TextStyle(
                            color: AppColors.textTertiary,
                            fontSize: widget.size * 0.1,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 8),
              Text(
                widget.label,
                style: const TextStyle(
                  color: AppColors.textSecondary,
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        );
      },
    );
  }
}

class _GaugePainter extends CustomPainter {
  final double value;
  final double minValue;
  final double maxValue;
  final Color color;

  _GaugePainter({
    required this.value,
    required this.minValue,
    required this.maxValue,
    required this.color,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final center = Offset(size.width / 2, size.height / 2);
    final radius = size.width / 2 - 12;
    const startAngle = 135.0 * pi / 180; // Start at bottom-left
    const sweepAngle = 270.0 * pi / 180; // Sweep 270 degrees

    // Background track
    final trackPaint = Paint()
      ..color = AppColors.surfaceBright
      ..style = PaintingStyle.stroke
      ..strokeWidth = 8
      ..strokeCap = StrokeCap.round;

    canvas.drawArc(
      Rect.fromCircle(center: center, radius: radius),
      startAngle,
      sweepAngle,
      false,
      trackPaint,
    );

    // Value arc
    final fraction =
        ((value - minValue) / (maxValue - minValue)).clamp(0.0, 1.0);
    final valueSweep = sweepAngle * fraction;

    // Gradient effect on the value arc
    final valueGradientPaint = Paint()
      ..shader = SweepGradient(
        startAngle: startAngle,
        endAngle: startAngle + valueSweep,
        colors: [
          color.withValues(alpha: 0.4),
          color,
        ],
      ).createShader(Rect.fromCircle(center: center, radius: radius))
      ..style = PaintingStyle.stroke
      ..strokeWidth = 8
      ..strokeCap = StrokeCap.round;

    if (fraction > 0.01) {
      canvas.drawArc(
        Rect.fromCircle(center: center, radius: radius),
        startAngle,
        valueSweep,
        false,
        valueGradientPaint,
      );
    }

    // Glow effect at the end of the arc
    if (fraction > 0.01) {
      final endAngleRad = startAngle + valueSweep;
      final glowX = center.dx + radius * cos(endAngleRad);
      final glowY = center.dy + radius * sin(endAngleRad);

      final glowPaint = Paint()
        ..color = color.withValues(alpha: 0.3)
        ..maskFilter = const MaskFilter.blur(BlurStyle.normal, 8);

      canvas.drawCircle(Offset(glowX, glowY), 6, glowPaint);
    }
  }

  @override
  bool shouldRepaint(_GaugePainter oldDelegate) =>
      value != oldDelegate.value || color != oldDelegate.color;
}
