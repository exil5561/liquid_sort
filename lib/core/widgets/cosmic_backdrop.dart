import 'dart:math' as math;

import 'package:flutter/material.dart';

import '../../app/theme/app_colors.dart';

class CosmicBackdrop extends StatefulWidget {
  const CosmicBackdrop({super.key, required this.child, this.safeArea = true});

  final Widget child;
  final bool safeArea;

  @override
  State<CosmicBackdrop> createState() => _CosmicBackdropState();
}

class _CosmicBackdropState extends State<CosmicBackdrop>
    with SingleTickerProviderStateMixin {
  late final AnimationController _drift;
  Offset _pointer = Offset.zero;

  @override
  void initState() {
    super.initState();
    _drift = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 16),
    )..repeat();
  }

  @override
  void dispose() {
    _drift.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final content = widget.safeArea
        ? SafeArea(child: widget.child)
        : widget.child;
    return LayoutBuilder(
      builder: (context, constraints) => MouseRegion(
        onHover: (event) {
          final next = Offset(
            (event.localPosition.dx / constraints.maxWidth - .5) * 2,
            (event.localPosition.dy / constraints.maxHeight - .5) * 2,
          );
          if ((next - _pointer).distance > .04) setState(() => _pointer = next);
        },
        onExit: (_) => setState(() => _pointer = Offset.zero),
        child: DecoratedBox(
          decoration: const BoxDecoration(color: AppColors.navy),
          child: Stack(
            fit: StackFit.expand,
            children: [
              AnimatedBuilder(
                animation: _drift,
                builder: (context, child) {
                  final phase = _drift.value * math.pi * 2;
                  return Transform.translate(
                    offset: Offset(
                      _pointer.dx * -8 + math.sin(phase) * 3,
                      _pointer.dy * -6 + math.cos(phase * .7) * 3,
                    ),
                    child: Transform.scale(scale: 1.055, child: child),
                  );
                },
                child: Image.asset(
                  'assets/images/premium_cosmic_background.png',
                  fit: BoxFit.cover,
                  filterQuality: FilterQuality.medium,
                ),
              ),
              AnimatedBuilder(
                animation: _drift,
                builder: (context, child) =>
                    CustomPaint(painter: _FloatingStarPainter(_drift.value)),
              ),
              const DecoratedBox(
                decoration: BoxDecoration(
                  gradient: RadialGradient(
                    center: Alignment(0, -.08),
                    radius: .72,
                    colors: [
                      Color(0x08050A20),
                      Color(0x22050A20),
                      Color(0x52070B24),
                    ],
                    stops: [0, .7, 1],
                  ),
                ),
              ),
              content,
            ],
          ),
        ),
      ),
    );
  }
}

class _FloatingStarPainter extends CustomPainter {
  const _FloatingStarPainter(this.progress);
  final double progress;

  @override
  void paint(Canvas canvas, Size size) {
    final random = math.Random(42);
    for (var index = 0; index < 24; index++) {
      final baseX = random.nextDouble() * size.width;
      final baseY = random.nextDouble() * size.height;
      final speed = 8 + random.nextDouble() * 18;
      final y = (baseY - progress * speed + size.height) % size.height;
      final twinkle =
          .2 +
          .55 *
              (math.sin(progress * math.pi * 2 * (1 + index % 3) + index) + 1) /
              2;
      canvas.drawCircle(
        Offset(baseX, y),
        .45 + random.nextDouble() * 1.15,
        Paint()
          ..color = (index % 5 == 0 ? AppColors.violet : AppColors.cyan)
              .withValues(alpha: twinkle),
      );
    }
  }

  @override
  bool shouldRepaint(covariant _FloatingStarPainter oldDelegate) =>
      progress != oldDelegate.progress;
}
