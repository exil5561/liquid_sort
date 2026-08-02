import 'dart:math' as math;

import 'package:flutter/material.dart';

class LiquidStreamPainter extends CustomPainter {
  const LiquidStreamPainter({
    required this.start,
    required this.end,
    required this.color,
    required this.strength,
    required this.phase,
  });

  final Offset start;
  final Offset end;
  final Color color;
  final double strength;
  final double phase;

  @override
  void paint(Canvas canvas, Size size) {
    if (strength <= 0) return;
    final direction = end.dx >= start.dx ? 1.0 : -1.0;
    final wave = math.sin(phase * math.pi * 8) * 3;
    final path = Path()
      ..moveTo(start.dx, start.dy)
      ..cubicTo(
        start.dx + direction * 8,
        start.dy + (end.dy - start.dy) * .3,
        end.dx - direction * (7 + wave),
        start.dy + (end.dy - start.dy) * .72,
        end.dx,
        end.dy,
      );
    canvas.drawPath(
      path,
      Paint()
        ..style = PaintingStyle.stroke
        ..strokeCap = StrokeCap.round
        ..strokeWidth = 10 * strength
        ..color = color.withValues(alpha: .18 * strength)
        ..maskFilter = const MaskFilter.blur(BlurStyle.normal, 8),
    );
    canvas.drawPath(
      path,
      Paint()
        ..style = PaintingStyle.stroke
        ..strokeCap = StrokeCap.round
        ..strokeWidth = 4.6 * strength
        ..shader = LinearGradient(
          colors: [
            Color.lerp(color, Colors.white, .38)!,
            color,
            Color.lerp(color, Colors.white, .18)!,
          ],
        ).createShader(Rect.fromPoints(start, end)),
    );
    for (var index = 0; index < 3; index++) {
      final t = (phase * 2 + index / 3) % 1;
      final point = _pointOnCurve(start, end, t, direction, wave);
      canvas.drawCircle(
        point,
        (1.1 + index * .35) * strength,
        Paint()..color = Colors.white.withValues(alpha: .7 * strength),
      );
    }
  }

  Offset _pointOnCurve(
    Offset a,
    Offset b,
    double t,
    double direction,
    double wave,
  ) {
    final y = a.dy + (b.dy - a.dy) * t;
    final x =
        a.dx +
        (b.dx - a.dx) * t +
        math.sin(t * math.pi) * direction * (8 + wave);
    return Offset(x, y);
  }

  @override
  bool shouldRepaint(covariant LiquidStreamPainter oldDelegate) =>
      start != oldDelegate.start ||
      end != oldDelegate.end ||
      color != oldDelegate.color ||
      strength != oldDelegate.strength ||
      phase != oldDelegate.phase;
}
