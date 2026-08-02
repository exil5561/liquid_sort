import 'dart:math' as math;

import 'package:flutter/material.dart';

import '../../../../app/theme/app_colors.dart';
import '../../../../l10n/l10n_extensions.dart';
import '../../domain/liquid_color_id.dart';
import '../../domain/tube_model.dart';

class GlassTubeWidget extends StatelessWidget {
  const GlassTubeWidget({
    super.key,
    required this.tube,
    required this.width,
    required this.height,
    this.isSelected = false,
    this.isHintSource = false,
    this.isHintDestination = false,
    this.isInvalid = false,
    this.isFrozen = false,
    this.isLocked = false,
    this.isHeated = false,
    this.portalColor,
    this.isValve = false,
    this.bombRemaining,
    this.isMoving = false,
    this.hideLowerLiquids = false,
    this.accessibilityPatterns = false,
    this.liquidMotion = 0,
    this.celebration = 0,
    this.outgoingAmount = 0,
    this.incomingColor,
    this.incomingAmount = 0,
    this.forceCompleted = false,
  });

  final TubeModel tube;
  final double width;
  final double height;
  final bool isSelected;
  final bool isHintSource;
  final bool isHintDestination;
  final bool isInvalid;
  final bool isFrozen;
  final bool isLocked;
  final bool isHeated;
  final Color? portalColor;
  final bool isValve;
  final int? bombRemaining;
  final bool isMoving;
  final bool hideLowerLiquids;
  final bool accessibilityPatterns;
  final double liquidMotion;
  final double celebration;
  final double outgoingAmount;
  final LiquidColorId? incomingColor;
  final double incomingAmount;
  final bool forceCompleted;

  @override
  Widget build(BuildContext context) {
    final completed = tube.isCompleted || forceCompleted;
    final liquidColor = incomingColor?.color ?? tube.topColor?.color;
    final glowColor = isInvalid
        ? AppColors.coral
        : isHeated
        ? const Color(0xFFFF7A1A)
        : portalColor != null
        ? portalColor!
        : bombRemaining != null
        ? AppColors.coral
        : completed && liquidColor != null
        ? liquidColor
        : isHintDestination
        ? AppColors.mint
        : isHintSource
        ? AppColors.coral
        : AppColors.cyan;
    final active =
        isSelected ||
        isHintSource ||
        isHintDestination ||
        isInvalid ||
        isHeated ||
        portalColor != null ||
        bombRemaining != null ||
        completed;
    return Semantics(
      button: true,
      label: context.l10n.tubeSemantics(tube.id, tube.liquids.length,
      ),
      selected: isSelected,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 180),
        width: width,
        height: height,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(width / 2),
          boxShadow: [
            if (liquidColor != null)
              BoxShadow(
                color: liquidColor.withValues(alpha: active ? .42 : .3),
                blurRadius: active ? 25 : 17,
                spreadRadius: active ? 2 : .5,
              ),
            if (active)
              BoxShadow(
                color: glowColor.withValues(
                  alpha: completed
                      ? .4
                      : isInvalid
                      ? .72
                      : .58,
                ),
                blurRadius: completed
                    ? 24
                    : isSelected
                    ? 27
                    : 19,
                spreadRadius: completed
                    ? 2
                    : isSelected
                    ? 3
                    : 1,
              ),
          ],
        ),
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            CustomPaint(
              size: Size(width, height),
              painter: GlassTubePainter(
                tube,
                motion: liquidMotion,
                hideLowerLiquids: hideLowerLiquids,
                accessibilityPatterns: accessibilityPatterns,
                outgoingAmount: outgoingAmount,
                incomingColor: incomingColor,
                incomingAmount: incomingAmount,
                invalidPulse: isInvalid ? 1 : 0,
                completed: completed,
              ),
            ),
            if (celebration > 0)
              Positioned(
                left: -width * .65,
                top: -width * .65,
                width: width * 2.3,
                height: height + width * 1.25,
                child: IgnorePointer(
                  child: CustomPaint(
                    painter: TubeCelebrationPainter(
                      progress: celebration,
                      color: liquidColor ?? AppColors.mint,
                    ),
                  ),
                ),
              ),
            if (isFrozen)
              Positioned.fill(
                child: IgnorePointer(
                  child: CustomPaint(painter: const _FrozenTubePainter()),
                ),
              ),
            if (isLocked)
              Positioned.fill(
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    color: const Color(0x6603091C),
                    borderRadius: BorderRadius.circular(width / 2),
                  ),
                  child: const Center(
                    child: Icon(
                      Icons.lock_rounded,
                      color: Color(0xFFD6DDF4),
                      size: 27,
                    ),
                  ),
                ),
              ),
            if (isHeated)
              Positioned.fill(
                child: IgnorePointer(
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter,
                        colors: [
                          Color(0x88FF3D00),
                          Color(0x44FF9A1F),
                          Colors.transparent,
                        ],
                        stops: [0, .42, .78],
                      ),
                      borderRadius: BorderRadius.circular(width / 2),
                    ),
                    child: Align(
                      alignment: const Alignment(0, .72),
                      child: Icon(
                        Icons.local_fire_department_rounded,
                        color: const Color(0xFFFFD166),
                        size: width * .43,
                        shadows: const [
                          Shadow(color: Color(0xFFFF3D00), blurRadius: 13),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            if (portalColor != null)
              Positioned(
                left: width * .13,
                right: width * .13,
                bottom: width * .16,
                child: IgnorePointer(
                  child: Container(
                    height: width * .2,
                    decoration: BoxDecoration(
                      border: Border.all(color: portalColor!, width: 2.2),
                      borderRadius: BorderRadius.circular(width),
                      boxShadow: [
                        BoxShadow(
                          color: portalColor!.withValues(alpha: .9),
                          blurRadius: 13,
                        ),
                      ],
                    ),
                    child: Icon(
                      Icons.blur_circular_rounded,
                      color: portalColor,
                      size: width * .16,
                    ),
                  ),
                ),
              ),
            if (isValve)
              Positioned(
                left: width * .13,
                right: width * .13,
                top: height * .46,
                child: IgnorePointer(
                  child: Container(
                    height: width * .34,
                    decoration: BoxDecoration(
                      color: const Color(0xCC7A4B00),
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: const Color(0xFFFFD166)),
                    ),
                    child: const Icon(
                      Icons.arrow_downward_rounded,
                      color: Color(0xFFFFD166),
                    ),
                  ),
                ),
              ),
            if (tube.isNarrow)
              Positioned(
                left: width * .18,
                right: width * .18,
                bottom: height * .08,
                child: IgnorePointer(
                  child: Container(
                    padding: const EdgeInsets.symmetric(vertical: 2),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: const Color(0xCC5A2410),
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: const Color(0xFFFF8A5B)),
                    ),
                    child: Text(
                      '${tube.capacity}',
                      style: TextStyle(
                        color: const Color(0xFFFF8A5B),
                        fontSize: width * .18,
                        fontWeight: FontWeight.w900,
                        height: 1,
                      ),
                    ),
                  ),
                ),
              ),
            if (bombRemaining != null)
              Positioned(
                right: -5,
                top: height * .3,
                child: Container(
                  width: width * .43,
                  height: width * .43,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: const Color(0xFFE52735),
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.white, width: 1),
                    boxShadow: const [
                      BoxShadow(color: Color(0xCCFF263E), blurRadius: 13),
                    ],
                  ),
                  child: Text(
                    '$bombRemaining',
                    style: TextStyle(
                      fontSize: width * .2,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ),
              ),
            if (isMoving)
              Positioned(
                left: 0,
                right: 0,
                bottom: -17,
                child: Icon(
                  Icons.swap_horiz_rounded,
                  color: AppColors.cyan.withValues(alpha: .8),
                  size: 16,
                ),
              ),
            if (completed)
              Positioned(
                right: -5,
                top: -3,
                child: Container(
                  width: width * .36,
                  height: width * .36,
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      colors: [Color(0xFFB9FFD9), AppColors.mint],
                    ),
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.white, width: 1.2),
                    boxShadow: const [
                      BoxShadow(color: Color(0x9958E6AE), blurRadius: 14),
                    ],
                  ),
                  child: Icon(
                    Icons.check_rounded,
                    size: width * .25,
                    color: const Color(0xFF07372B),
                  ),
                ),
              ),
            if (isHintSource || isHintDestination)
              Positioned(
                left: 0,
                right: 0,
                top: -24,
                child: Icon(
                  isHintSource
                      ? Icons.arrow_upward_rounded
                      : Icons.arrow_downward_rounded,
                  size: 20,
                  color: glowColor,
                ),
              ),
          ],
        ),
      ),
    );
  }
}

class GlassTubePainter extends CustomPainter {
  const GlassTubePainter(
    this.tube, {
    this.motion = 0,
    this.hideLowerLiquids = false,
    this.accessibilityPatterns = false,
    this.outgoingAmount = 0,
    this.incomingColor,
    this.incomingAmount = 0,
    this.invalidPulse = 0,
    this.completed = false,
  });

  final TubeModel tube;
  final double motion;
  final bool hideLowerLiquids;
  final bool accessibilityPatterns;
  final double outgoingAmount;
  final LiquidColorId? incomingColor;
  final double incomingAmount;
  final double invalidPulse;
  final bool completed;

  @override
  void paint(Canvas canvas, Size size) {
    final side = size.width * .16;
    final inner = RRect.fromRectAndCorners(
      Rect.fromLTWH(side, 8, size.width - side * 2, size.height - 13),
      topLeft: const Radius.circular(3),
      topRight: const Radius.circular(3),
      bottomLeft: Radius.circular(size.width * .34),
      bottomRight: Radius.circular(size.width * .34),
    );

    if (completed) {
      final glow = tube.topColor?.style.completedGlow ?? AppColors.mint;
      canvas.drawRRect(
        inner.inflate(3),
        Paint()
          ..style = PaintingStyle.stroke
          ..strokeWidth = 4
          ..color = glow.withValues(alpha: .32)
          ..maskFilter = const MaskFilter.blur(BlurStyle.normal, 7),
      );
    }

    canvas.save();
    canvas.clipRRect(inner);
    canvas.drawRect(
      inner.outerRect,
      Paint()
        ..shader = const LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [Color(0x335B7AB5), Color(0x0FFFFFFF), Color(0x2D8CABDD)],
          stops: [0, .52, 1],
        ).createShader(inner.outerRect),
    );

    final units = _visualUnits();
    final visibleIndices = <int>[
      for (var index = 0; index < units.length; index++)
        if (units[index].fill > .001) index,
    ];
    final topVisible = visibleIndices.isEmpty ? -1 : visibleIndices.last;
    final availableHeight = size.height - 22;
    final unitHeight = availableHeight / tube.capacity;

    for (var index = 0; index < units.length; index++) {
      final unit = units[index];
      if (unit.fill <= .001 || index >= tube.capacity) continue;
      final hidden = hideLowerLiquids && index < tube.liquids.length - 1;
      final style = unit.color.style;
      final bottom = size.height - 7 - index * unitHeight;
      final filledHeight = unitHeight * unit.fill;
      final rect = Rect.fromLTRB(
        side,
        bottom - filledHeight - .8,
        size.width - side,
        bottom + .5,
      );
      final isSurface = index == topVisible;
      final amplitude = isSurface ? 1.6 + motion.abs() * 3.4 : .25;
      final phase = motion * math.pi * 2 + index * .83;
      final path = _liquidPath(rect, amplitude, phase, isSurface);
      final base = hidden ? const Color(0xFF26335B) : style.base;
      canvas.drawPath(
        path,
        Paint()
          ..shader = LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: hidden
                ? const [
                    Color(0xFF3A4771),
                    Color(0xFF2A355C),
                    Color(0xFF202A4E),
                  ]
                : [style.highlight, style.base, style.dark],
            stops: const [0, .5, 1],
          ).createShader(rect),
      );
      if (!hidden) {
        canvas.drawPath(
          path,
          Paint()
            ..shader = RadialGradient(
              center: const Alignment(-.25, -.35),
              radius: 1.05,
              colors: [
                style.highlight.withValues(alpha: .72),
                style.glow.withValues(alpha: .24),
                Colors.transparent,
              ],
              stops: const [0, .48, 1],
            ).createShader(rect)
            ..blendMode = BlendMode.screen,
        );
      }
      if (!hidden && rect.height > 5) {
        canvas.drawRRect(
          RRect.fromRectAndRadius(
            Rect.fromLTWH(
              rect.left + 2.3,
              rect.top + 2,
              math.max(1.2, rect.width * .1),
              math.max(1, rect.height - 4),
            ),
            const Radius.circular(3),
          ),
          Paint()..color = Colors.white.withValues(alpha: .18),
        );
      }
      canvas.drawPath(
        path,
        Paint()
          ..style = PaintingStyle.stroke
          ..strokeWidth = .7
          ..color = base.withValues(alpha: .7),
      );
      if (accessibilityPatterns && !hidden) {
        _paintPattern(canvas, path, rect, style.pattern, style.highlight);
      }
      if (isSurface) {
        canvas.drawOval(
          Rect.fromCenter(
            center: Offset(
              rect.center.dx,
              rect.top + math.sin(phase) * amplitude * .28,
            ),
            width: rect.width - 1,
            height: 4.2,
          ),
          Paint()
            ..color = hidden
                ? const Color(0x443B4A70)
                : style.highlight.withValues(alpha: .34),
        );
        final surface = Path()
          ..moveTo(rect.left, rect.top + math.sin(phase) * amplitude)
          ..cubicTo(
            rect.left + rect.width * .28,
            rect.top - amplitude,
            rect.left + rect.width * .7,
            rect.top + amplitude,
            rect.right,
            rect.top - math.sin(phase) * amplitude,
          );
        canvas.drawPath(
          surface,
          Paint()
            ..style = PaintingStyle.stroke
            ..strokeCap = StrokeCap.round
            ..strokeWidth = 2
            ..color = hidden
                ? const Color(0x886F7CA7)
                : style.highlight.withValues(alpha: .9),
        );
      }
      canvas.drawLine(
        Offset(side + 1, rect.bottom),
        Offset(size.width - side - 1, rect.bottom),
        Paint()
          ..color = Colors.white.withValues(alpha: .14)
          ..strokeWidth = .8,
      );
      if (!hidden) _paintBubbles(canvas, rect, unit.color, index, isSurface);
      if (hidden) _paintQuestionMark(canvas, rect);
    }
    canvas.restore();

    final glowColor = incomingColor?.style.glow ?? tube.topColor?.style.glow;
    if (glowColor != null) {
      canvas.drawOval(
        Rect.fromCenter(
          center: Offset(size.width / 2, size.height - 7),
          width: size.width * .62,
          height: 7,
        ),
        Paint()
          ..color = glowColor.withValues(alpha: .26)
          ..maskFilter = const MaskFilter.blur(BlurStyle.normal, 4),
      );
    }

    _paintGlass(canvas, size, invalidPulse);
  }

  List<_VisualLiquidUnit> _visualUnits() {
    final units = <_VisualLiquidUnit>[];
    final remaining = tube.liquids.length - outgoingAmount;
    for (var index = 0; index < tube.liquids.length; index++) {
      units.add(
        _VisualLiquidUnit(
          tube.liquids[index],
          (remaining - index).clamp(0, 1).toDouble(),
        ),
      );
    }
    if (incomingColor != null && incomingAmount > 0) {
      for (var index = 0; index < incomingAmount.ceil(); index++) {
        units.add(
          _VisualLiquidUnit(
            incomingColor!,
            (incomingAmount - index).clamp(0, 1).toDouble(),
          ),
        );
      }
    }
    return units;
  }

  Path _liquidPath(Rect rect, double amplitude, double phase, bool isSurface) {
    final path = Path();
    if (isSurface) {
      path
        ..moveTo(rect.left, rect.top + math.sin(phase) * amplitude)
        ..cubicTo(
          rect.left + rect.width * .28,
          rect.top - amplitude,
          rect.left + rect.width * .7,
          rect.top + amplitude,
          rect.right,
          rect.top - math.sin(phase) * amplitude,
        );
    } else {
      path.moveTo(rect.left, rect.top);
      path.lineTo(rect.right, rect.top);
    }
    return path
      ..lineTo(rect.right, rect.bottom)
      ..lineTo(rect.left, rect.bottom)
      ..close();
  }

  void _paintBubbles(
    Canvas canvas,
    Rect rect,
    LiquidColorId color,
    int index,
    bool isSurface,
  ) {
    if (rect.height < 5) return;
    final random = math.Random(Object.hash(tube.id, color.index, index));
    final count = isSurface ? 3 : 1;
    final paint = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = .8
      ..color = color.style.bubbleHighlight.withValues(alpha: .48);
    for (var bubble = 0; bubble < count; bubble++) {
      final travel = (motion * (.18 + bubble * .05) + random.nextDouble()) % 1;
      final x =
          rect.left + 5 + random.nextDouble() * math.max(1, rect.width - 10);
      final y = rect.bottom - 3 - travel * math.max(1, rect.height - 6);
      canvas.drawCircle(Offset(x, y), 1 + random.nextDouble() * 1.5, paint);
    }
  }

  void _paintPattern(
    Canvas canvas,
    Path clip,
    Rect rect,
    LiquidPattern pattern,
    Color color,
  ) {
    canvas.save();
    canvas.clipPath(clip);
    final paint = Paint()
      ..color = color.withValues(alpha: .2)
      ..style = PaintingStyle.stroke
      ..strokeWidth = .8;
    switch (pattern) {
      case LiquidPattern.dots:
        for (var x = rect.left + 7; x < rect.right; x += 10) {
          canvas.drawCircle(
            Offset(x, rect.center.dy),
            1.1,
            paint..style = PaintingStyle.fill,
          );
        }
        break;
      case LiquidPattern.diagonal:
        for (var x = rect.left - rect.height; x < rect.right; x += 10) {
          canvas.drawLine(
            Offset(x, rect.bottom),
            Offset(x + rect.height, rect.top),
            paint,
          );
        }
        break;
      case LiquidPattern.waves:
        final wave = Path()..moveTo(rect.left, rect.center.dy);
        for (var x = rect.left; x <= rect.right; x += 2) {
          wave.lineTo(x, rect.center.dy + math.sin((x - rect.left) / 5) * 2);
        }
        canvas.drawPath(wave, paint);
        break;
      case LiquidPattern.stars:
        for (var x = rect.left + 8; x < rect.right; x += 13) {
          canvas.drawLine(
            Offset(x - 2, rect.center.dy),
            Offset(x + 2, rect.center.dy),
            paint,
          );
          canvas.drawLine(
            Offset(x, rect.center.dy - 2),
            Offset(x, rect.center.dy + 2),
            paint,
          );
        }
        break;
      case LiquidPattern.crosses:
        for (var x = rect.left + 8; x < rect.right; x += 12) {
          canvas.drawLine(
            Offset(x - 2, rect.center.dy - 2),
            Offset(x + 2, rect.center.dy + 2),
            paint,
          );
          canvas.drawLine(
            Offset(x + 2, rect.center.dy - 2),
            Offset(x - 2, rect.center.dy + 2),
            paint,
          );
        }
        break;
      case LiquidPattern.rings:
        for (var x = rect.left + 8; x < rect.right; x += 13) {
          canvas.drawCircle(Offset(x, rect.center.dy), 2.2, paint);
        }
        break;
    }
    canvas.restore();
  }

  void _paintQuestionMark(Canvas canvas, Rect rect) {
    final painter = TextPainter(
      text: const TextSpan(
        text: '?',
        style: TextStyle(
          color: Color(0x99DCE7FF),
          fontSize: 13,
          fontWeight: FontWeight.w900,
        ),
      ),
      textDirection: TextDirection.ltr,
    )..layout();
    painter.paint(
      canvas,
      Offset(
        rect.center.dx - painter.width / 2,
        rect.center.dy - painter.height / 2,
      ),
    );
  }

  void _paintGlass(Canvas canvas, Size size, double invalidPulse) {
    final side = size.width * .14;
    final bodyPath = Path()
      ..moveTo(side, 7)
      ..lineTo(side, size.height - size.width * .38)
      ..quadraticBezierTo(
        side,
        size.height - 4,
        size.width / 2,
        size.height - 4,
      )
      ..quadraticBezierTo(
        size.width - side,
        size.height - 4,
        size.width - side,
        size.height - size.width * .38,
      )
      ..lineTo(size.width - side, 7);
    final liquidGlow = incomingColor?.style.glow ?? tube.topColor?.style.glow;
    if (liquidGlow != null) {
      canvas.drawPath(
        bodyPath,
        Paint()
          ..style = PaintingStyle.stroke
          ..strokeWidth = 5
          ..strokeCap = StrokeCap.round
          ..color = liquidGlow.withValues(alpha: .27)
          ..maskFilter = const MaskFilter.blur(BlurStyle.normal, 5),
      );
    }
    canvas.drawPath(
      bodyPath,
      Paint()
        ..style = PaintingStyle.stroke
        ..strokeWidth = invalidPulse > 0 ? 3.2 : 2.15
        ..strokeCap = StrokeCap.round
        ..shader = invalidPulse > 0
            ? const LinearGradient(
                colors: [Color(0xFFFFB060), Color(0xFFFF315B)],
              ).createShader(Offset.zero & size)
            : const LinearGradient(
                colors: [
                  Color(0xFFF8FBFF),
                  Color(0x6686A3D5),
                  Color(0xFFEAF2FF),
                ],
              ).createShader(Offset.zero & size),
    );
    final rim = Rect.fromLTWH(1.5, .5, size.width - 3, 13);
    canvas.drawOval(
      rim,
      Paint()
        ..shader = const LinearGradient(
          colors: [Color(0xFFF9FBFF), Color(0xFF8DA6CA), Color(0xFFF3DFFF)],
        ).createShader(rim),
    );
    final opening = Rect.fromLTWH(5, 3.5, size.width - 10, 6.3);
    canvas.drawOval(
      opening,
      Paint()
        ..shader = const LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Color(0xFF050A17), Color(0xFF233653), Color(0xFF071020)],
        ).createShader(opening),
    );
    canvas.drawArc(
      rim.deflate(1.2),
      math.pi,
      math.pi,
      false,
      Paint()
        ..style = PaintingStyle.stroke
        ..strokeWidth = 1.1
        ..color = Colors.white.withValues(alpha: .82),
    );
    canvas.drawLine(
      Offset(side + 2.2, 18),
      Offset(side + 2.2, size.height * .68),
      Paint()
        ..color = Colors.white.withValues(alpha: .42)
        ..strokeWidth = 1.45
        ..strokeCap = StrokeCap.round,
    );
    canvas.drawLine(
      Offset(size.width - side - 2.1, 19),
      Offset(size.width - side - 2.1, size.height * .52),
      Paint()
        ..color = const Color(0xFF9FC5FF).withValues(alpha: .2)
        ..strokeWidth = .8
        ..strokeCap = StrokeCap.round,
    );
  }

  @override
  bool shouldRepaint(covariant GlassTubePainter oldDelegate) =>
      tube != oldDelegate.tube ||
      motion != oldDelegate.motion ||
      hideLowerLiquids != oldDelegate.hideLowerLiquids ||
      accessibilityPatterns != oldDelegate.accessibilityPatterns ||
      outgoingAmount != oldDelegate.outgoingAmount ||
      incomingColor != oldDelegate.incomingColor ||
      incomingAmount != oldDelegate.incomingAmount ||
      invalidPulse != oldDelegate.invalidPulse ||
      completed != oldDelegate.completed;
}

class _VisualLiquidUnit {
  const _VisualLiquidUnit(this.color, this.fill);
  final LiquidColorId color;
  final double fill;
}

class TubeCelebrationPainter extends CustomPainter {
  const TubeCelebrationPainter({required this.progress, required this.color});

  final double progress;
  final Color color;

  @override
  void paint(Canvas canvas, Size size) {
    final center = Offset(size.width / 2, size.height * .5);
    final fade = (1 - progress).clamp(0.0, 1.0);
    canvas.drawCircle(
      center,
      18 + progress * size.width * .36,
      Paint()
        ..style = PaintingStyle.stroke
        ..strokeWidth = 3 * fade
        ..color = color.withValues(alpha: fade * .88),
    );
    final random = math.Random(91);
    for (var index = 0; index < 20; index++) {
      final spread = (random.nextDouble() - .5) * size.width * .72;
      final rise = progress * (34 + random.nextDouble() * 82);
      final position = Offset(
        center.dx + spread * (.4 + progress),
        center.dy + 20 - rise,
      );
      canvas.drawCircle(
        position,
        (1.1 + random.nextDouble() * 2.2) * fade,
        Paint()..color = color.withValues(alpha: fade),
      );
    }
    final pulseY = center.dy + 30 - progress * 85;
    canvas.drawOval(
      Rect.fromCenter(center: Offset(center.dx, pulseY), width: 34, height: 7),
      Paint()..color = Colors.white.withValues(alpha: fade * .34),
    );
  }

  @override
  bool shouldRepaint(covariant TubeCelebrationPainter oldDelegate) =>
      progress != oldDelegate.progress || color != oldDelegate.color;
}

class _FrozenTubePainter extends CustomPainter {
  const _FrozenTubePainter();

  @override
  void paint(Canvas canvas, Size size) {
    final rect = RRect.fromRectAndRadius(
      Rect.fromLTWH(6, 5, size.width - 12, size.height - 9),
      Radius.circular(size.width * .4),
    );
    canvas.drawRRect(
      rect,
      Paint()
        ..shader = const LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [Color(0x994DE5FF), Color(0x334A7BFF), Color(0xAAE6FCFF)],
        ).createShader(rect.outerRect),
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
