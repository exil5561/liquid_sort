import 'dart:math' as math;

import 'package:flutter/material.dart';

import '../../../../app/theme/app_colors.dart';
import '../../../../core/widgets/glass_panel.dart';
import '../../../../l10n/l10n_extensions.dart';
import '../../domain/mechanic_intro.dart';

Future<void> showMechanicIntroDialog(
  BuildContext context,
  MechanicIntro intro,
) {
  final l10n = context.l10n;
  return showGeneralDialog<void>(
    context: context,
    barrierDismissible: false,
    barrierLabel: intro.title(l10n),
    barrierColor: const Color(0xCC040814),
    transitionDuration: const Duration(milliseconds: 420),
    pageBuilder: (context, animation, secondaryAnimation) =>
        MechanicIntroDialog(intro: intro),
    transitionBuilder: (context, animation, secondaryAnimation, child) {
      final curved = CurvedAnimation(
        parent: animation,
        curve: Curves.easeOutBack,
        reverseCurve: Curves.easeInCubic,
      );
      return FadeTransition(
        opacity: animation,
        child: ScaleTransition(
          scale: Tween<double>(begin: .86, end: 1).animate(curved),
          child: child,
        ),
      );
    },
  );
}

class MechanicIntroDialog extends StatefulWidget {
  const MechanicIntroDialog({super.key, required this.intro});

  final MechanicIntro intro;

  @override
  State<MechanicIntroDialog> createState() => _MechanicIntroDialogState();
}

class _MechanicIntroDialogState extends State<MechanicIntroDialog>
    with SingleTickerProviderStateMixin {
  late final AnimationController _pulse;

  @override
  void initState() {
    super.initState();
    _pulse = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 2200),
    )..repeat(reverse: true);
  }

  @override
  void dispose() {
    _pulse.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final intro = widget.intro;
    final l10n = context.l10n;
    final maxHeight = MediaQuery.sizeOf(context).height * .86;

    return SafeArea(
      child: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 18),
          child: ConstrainedBox(
            constraints: BoxConstraints(maxWidth: 420, maxHeight: maxHeight),
            child: Material(
              color: Colors.transparent,
              child: GlassPanel(
                padding: const EdgeInsets.fromLTRB(18, 18, 18, 16),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Row(
                        children: [
                          Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 10,
                              vertical: 5,
                            ),
                            decoration: BoxDecoration(
                              color: intro.accent.withValues(alpha: .16),
                              borderRadius: BorderRadius.circular(999),
                              border: Border.all(
                                color: intro.accent.withValues(alpha: .55),
                              ),
                            ),
                            child: Text(
                              l10n.newRule,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                color: intro.accent,
                                fontSize: 10,
                                fontWeight: FontWeight.w900,
                                letterSpacing: 1.1,
                              ),
                            ),
                          ),
                          const Spacer(),
                          Icon(intro.icon, color: intro.accent, size: 22),
                        ],
                      ),
                      const SizedBox(height: 14),
                      Text(
                        intro.title(l10n),
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: intro.accent,
                          fontSize: 24,
                          fontWeight: FontWeight.w900,
                          letterSpacing: .6,
                          height: 1.05,
                        ),
                      ),
                      const SizedBox(height: 6),
                      Text(
                        intro.headline(l10n),
                        textAlign: TextAlign.center,
                        softWrap: true,
                        style: const TextStyle(
                          color: AppColors.text,
                          fontSize: 15,
                          fontWeight: FontWeight.w800,
                          height: 1.25,
                        ),
                      ),
                      const SizedBox(height: 14),
                      AnimatedBuilder(
                        animation: _pulse,
                        builder: (context, child) => Transform.scale(
                          scale: 1 + (_pulse.value * .018),
                          child: child,
                        ),
                        child: _MechanicVisual(intro: intro),
                      ),
                      const SizedBox(height: 14),
                      Text(
                        intro.body(l10n),
                        textAlign: TextAlign.center,
                        softWrap: true,
                        style: const TextStyle(
                          color: AppColors.textMuted,
                          fontSize: 13.5,
                          fontWeight: FontWeight.w600,
                          height: 1.45,
                        ),
                      ),
                      const SizedBox(height: 12),
                      Container(
                        width: double.infinity,
                        padding: const EdgeInsets.fromLTRB(12, 11, 12, 11),
                        decoration: BoxDecoration(
                          color: intro.accent.withValues(alpha: .1),
                          borderRadius: BorderRadius.circular(16),
                          border: Border.all(
                            color: intro.accent.withValues(alpha: .35),
                          ),
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Icon(
                              Icons.lightbulb_rounded,
                              color: intro.accent,
                              size: 18,
                            ),
                            const SizedBox(width: 8),
                            Expanded(
                              child: Text(
                                intro.tip(l10n),
                                softWrap: true,
                                style: TextStyle(
                                  color: Color.lerp(
                                    AppColors.text,
                                    intro.accent,
                                    .25,
                                  ),
                                  fontSize: 12.5,
                                  fontWeight: FontWeight.w700,
                                  height: 1.4,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 16),
                      SizedBox(
                        width: double.infinity,
                        child: FilledButton(
                          onPressed: () => Navigator.of(context).pop(),
                          style: FilledButton.styleFrom(
                            backgroundColor: intro.accent,
                            foregroundColor: const Color(0xFF081018),
                            padding: const EdgeInsets.symmetric(vertical: 14),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(16),
                            ),
                          ),
                          child: FittedBox(
                            fit: BoxFit.scaleDown,
                            child: Text(
                              l10n.gotItStart,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: const TextStyle(
                                fontWeight: FontWeight.w900,
                                letterSpacing: .8,
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 6),
                      Text(
                        l10n.firstTimeTipOnly,
                        softWrap: true,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          color: Color(0xFF6F7C96),
                          fontSize: 10.5,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _MechanicVisual extends StatelessWidget {
  const _MechanicVisual({required this.intro});

  final MechanicIntro intro;

  @override
  Widget build(BuildContext context) {
    final asset = intro.imageAsset;
    return Container(
      width: double.infinity,
      height: asset != null ? 168 : 148,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            intro.accent.withValues(alpha: .18),
            const Color(0xFF0B1528),
            AppColors.navyLight,
          ],
        ),
        border: Border.all(color: intro.accent.withValues(alpha: .45)),
        boxShadow: [
          BoxShadow(
            color: intro.accent.withValues(alpha: .18),
            blurRadius: 18,
          ),
        ],
      ),
      clipBehavior: Clip.antiAlias,
      child: Stack(
        fit: StackFit.expand,
        children: [
          if (asset != null)
            Opacity(
              opacity: .42,
              child: Image.asset(
                asset,
                fit: BoxFit.cover,
                alignment: Alignment.center,
              ),
            ),
          CustomPaint(painter: _MechanicScenePainter(intro.kind, intro.accent)),
          Positioned(
            left: 12,
            bottom: 10,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
              decoration: BoxDecoration(
                color: const Color(0x99060C18),
                borderRadius: BorderRadius.circular(999),
                border: Border.all(color: intro.accent.withValues(alpha: .4)),
              ),
              child: Text(
                intro.caption(context.l10n),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  color: intro.accent,
                  fontSize: 10,
                  fontWeight: FontWeight.w900,
                  letterSpacing: .3,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _MechanicScenePainter extends CustomPainter {
  const _MechanicScenePainter(this.kind, this.accent);

  final MechanicKind kind;
  final Color accent;

  @override
  void paint(Canvas canvas, Size size) {
    final center = Offset(size.width / 2, size.height * .52);
    switch (kind) {
      case MechanicKind.basics:
        _drawTube(canvas, center.translate(-46, 8), 28, 78, [
          const Color(0xFFF22137),
          const Color(0xFFF22137),
          const Color(0xFF087BEA),
        ]);
        _drawArrow(canvas, center.translate(0, 0), accent);
        _drawTube(canvas, center.translate(46, 8), 28, 78, [
          const Color(0xFF087BEA),
        ], emptySlots: 3);
      case MechanicKind.hidden:
        // Bottom-to-top liquids: lower layers hidden, top color visible.
        _drawTube(
          canvas,
          center,
          34,
          88,
          const [
            Color(0xFFF22137),
            Color(0xFF087BEA),
            Color(0xFFFFB719),
            Color(0xFF13C5D6),
          ],
          fogLowerLayers: true,
        );
      case MechanicKind.mix:
        _drawColorOrb(canvas, center.translate(-54, 4), const Color(0xFFF22137));
        _drawColorOrb(canvas, center.translate(-18, 4), const Color(0xFFFFB719));
        _drawArrow(canvas, center.translate(14, 4), accent);
        _drawColorOrb(canvas, center.translate(52, 4), const Color(0xFFF0781C), large: true);
      case MechanicKind.frozen:
        _drawTube(canvas, center, 34, 88, [
          const Color(0xFF7EC8FF),
          const Color(0xFF7EC8FF),
        ], iced: true);
      case MechanicKind.locked:
        _drawTube(canvas, center, 34, 88, [
          const Color(0xFFFFC34A),
        ], locked: true);
      case MechanicKind.heated:
        _drawTube(canvas, center.translate(-40, 6), 26, 72, [
          const Color(0xFFE73886),
          const Color(0xFFB9F227),
        ]);
        _drawArrow(canvas, center.translate(0, 0), accent);
        _drawTube(
          canvas,
          center.translate(42, 6),
          26,
          72,
          const [],
          heated: true,
          emptySlots: 4,
        );
      case MechanicKind.valve:
        _drawTube(
          canvas,
          center,
          34,
          88,
          [const Color(0xFFFFC34A), const Color(0xFFFFC34A)],
          valve: true,
        );
      case MechanicKind.portal:
        _drawTube(
          canvas,
          center.translate(-42, 4),
          28,
          78,
          const [],
          portal: AppColors.cyan,
          emptySlots: 4,
        );
        _drawArrow(canvas, center, accent);
        _drawTube(
          canvas,
          center.translate(42, 4),
          28,
          78,
          [AppColors.violet, AppColors.violet],
          portal: AppColors.violet,
        );
      case MechanicKind.bomb:
        _drawTube(
          canvas,
          center,
          34,
          88,
          [AppColors.coral, AppColors.coral],
          bomb: true,
        );
      case MechanicKind.narrow:
        _drawTube(canvas, center.translate(-40, -2), 30, 86, [
          const Color(0xFF9127E8),
          const Color(0xFF9127E8),
          const Color(0xFF13C5D6),
          const Color(0xFF13C5D6),
        ]);
        _drawArrow(canvas, center.translate(0, 0), accent);
        _drawTube(
          canvas,
          center.translate(42, 18),
          26,
          48,
          [const Color(0xFF13C5D6)],
          emptySlots: 1,
          narrowBadge: true,
        );
      case MechanicKind.moving:
        _drawTube(canvas, center.translate(-50, 8), 24, 70, [
          const Color(0xFF42C83A),
        ]);
        _drawTube(canvas, center.translate(0, 8), 24, 70, [
          const Color(0xFF087BEA),
          const Color(0xFF087BEA),
        ]);
        _drawTube(canvas, center.translate(50, 8), 24, 70, [
          const Color(0xFFF22137),
        ]);
        final swap = Paint()
          ..color = accent
          ..strokeWidth = 2.4
          ..style = PaintingStyle.stroke
          ..strokeCap = StrokeCap.round;
        final path = Path()
          ..moveTo(center.dx - 28, center.dy - 42)
          ..quadraticBezierTo(
            center.dx,
            center.dy - 58,
            center.dx + 28,
            center.dy - 42,
          );
        canvas.drawPath(path, swap);
      case MechanicKind.boss:
        _drawTube(canvas, center.translate(-48, 8), 24, 72, [
          AppColors.coral,
          AppColors.violet,
        ]);
        _drawTube(canvas, center, 28, 84, [
          AppColors.cyan,
          AppColors.cyan,
          const Color(0xFFFFB719),
        ], bomb: true);
        _drawTube(canvas, center.translate(48, 8), 24, 72, [
          const Color(0xFF42C83A),
        ], iced: true);
    }
  }

  void _drawArrow(Canvas canvas, Offset center, Color color) {
    final paint = Paint()
      ..color = color
      ..strokeWidth = 3.2
      ..strokeCap = StrokeCap.round
      ..style = PaintingStyle.stroke;
    canvas.drawLine(
      center.translate(-14, 0),
      center.translate(10, 0),
      paint,
    );
    final head = Path()
      ..moveTo(center.dx + 10, center.dy - 7)
      ..lineTo(center.dx + 18, center.dy)
      ..lineTo(center.dx + 10, center.dy + 7);
    canvas.drawPath(
      head,
      Paint()
        ..color = color
        ..style = PaintingStyle.fill,
    );
  }

  void _drawColorOrb(
    Canvas canvas,
    Offset center,
    Color color, {
    bool large = false,
  }) {
    final radius = large ? 22.0 : 17.0;
    canvas.drawCircle(
      center,
      radius,
      Paint()
        ..color = color.withValues(alpha: .25)
        ..maskFilter = const MaskFilter.blur(BlurStyle.normal, 10),
    );
    canvas.drawCircle(center, radius, Paint()..color = color);
    canvas.drawCircle(
      center.translate(-5, -5),
      radius * .28,
      Paint()..color = Colors.white.withValues(alpha: .55),
    );
  }

  void _drawTube(
    Canvas canvas,
    Offset center,
    double width,
    double height,
    List<Color> liquids, {
    int emptySlots = 0,
    bool fogged = false,
    bool fogLowerLayers = false,
    bool iced = false,
    bool locked = false,
    bool heated = false,
    bool valve = false,
    bool bomb = false,
    bool narrowBadge = false,
    Color? portal,
  }) {
    final top = center.dy - height / 2;
    final left = center.dx - width / 2;
    final rect = RRect.fromRectAndRadius(
      Rect.fromLTWH(left, top, width, height),
      const Radius.circular(14),
    );
    canvas.drawRRect(
      rect,
      Paint()
        ..color = const Color(0x66101C30)
        ..style = PaintingStyle.fill,
    );
    canvas.drawRRect(
      rect,
      Paint()
        ..color = (portal ?? accent).withValues(alpha: .85)
        ..style = PaintingStyle.stroke
        ..strokeWidth = 2.2,
    );

    final capacity = math.max(liquids.length + emptySlots, 1);
    final unitH = (height - 16) / capacity;
    for (var i = 0; i < liquids.length; i++) {
      final y = top + height - 8 - (i + 1) * unitH;
      canvas.drawRRect(
        RRect.fromRectAndRadius(
          Rect.fromLTWH(left + 4, y, width - 8, unitH - 2),
          const Radius.circular(5),
        ),
        Paint()..color = liquids[i],
      );
    }

    if (fogged) {
      canvas.drawRRect(
        RRect.fromRectAndRadius(
          Rect.fromLTWH(left + 3, top + 10, width - 6, height * .55),
          const Radius.circular(10),
        ),
        Paint()..color = const Color(0xBB1A2740),
      );
      final q = TextPainter(
        text: const TextSpan(
          text: '?',
          style: TextStyle(
            color: Colors.white70,
            fontSize: 22,
            fontWeight: FontWeight.w900,
          ),
        ),
        textDirection: TextDirection.ltr,
      )..layout();
      q.paint(canvas, Offset(center.dx - q.width / 2, top + height * .28));
    }

    if (fogLowerLayers && liquids.length > 1) {
      // Hide everything below the top liquid unit (matches in-game behavior).
      final coverTop = top + 8;
      final coverBottom = top + height - 8 - unitH;
      final coverHeight = (coverBottom - coverTop).clamp(0.0, height);
      if (coverHeight > 4) {
        canvas.drawRRect(
          RRect.fromRectAndRadius(
            Rect.fromLTWH(left + 3, coverTop, width - 6, coverHeight),
            const Radius.circular(10),
          ),
          Paint()..color = const Color(0xCC152033),
        );
        final q = TextPainter(
          text: const TextSpan(
            text: '?',
            style: TextStyle(
              color: Colors.white70,
              fontSize: 20,
              fontWeight: FontWeight.w900,
            ),
          ),
          textDirection: TextDirection.ltr,
        )..layout();
        q.paint(
          canvas,
          Offset(
            center.dx - q.width / 2,
            coverTop + coverHeight / 2 - q.height / 2,
          ),
        );
      }
    }

    if (iced) {
      final ice = Paint()
        ..color = const Color(0xAADEEFFF)
        ..style = PaintingStyle.stroke
        ..strokeWidth = 1.6;
      for (var i = 0; i < 4; i++) {
        final angle = i * math.pi / 4;
        canvas.drawLine(
          center.translate(math.cos(angle) * 6, math.sin(angle) * 6 - 8),
          center.translate(math.cos(angle) * 16, math.sin(angle) * 16 - 8),
          ice,
        );
      }
    }

    if (locked) {
      final lock = Paint()..color = const Color(0xFFFFC34A);
      canvas.drawRRect(
        RRect.fromRectAndRadius(
          Rect.fromCenter(center: center.translate(0, 6), width: 16, height: 12),
          const Radius.circular(3),
        ),
        lock,
      );
      canvas.drawArc(
        Rect.fromCenter(center: center.translate(0, -2), width: 12, height: 12),
        math.pi,
        math.pi,
        false,
        Paint()
          ..color = const Color(0xFFFFC34A)
          ..style = PaintingStyle.stroke
          ..strokeWidth = 2.4,
      );
    }

    if (heated) {
      final flame = Paint()..color = const Color(0xFFFF7A1A);
      final path = Path()
        ..moveTo(center.dx, top + 14)
        ..quadraticBezierTo(center.dx + 10, top + 28, center.dx, top + 40)
        ..quadraticBezierTo(center.dx - 10, top + 28, center.dx, top + 14);
      canvas.drawPath(path, flame);
    }

    if (valve) {
      canvas.drawRRect(
        RRect.fromRectAndRadius(
          Rect.fromCenter(center: center, width: width * .7, height: 16),
          const Radius.circular(5),
        ),
        Paint()..color = const Color(0xCC7A4B00),
      );
      final arrow = Paint()
        ..color = const Color(0xFFFFD166)
        ..strokeWidth = 2.2
        ..strokeCap = StrokeCap.round;
      canvas.drawLine(
        center.translate(0, -5),
        center.translate(0, 5),
        arrow,
      );
      canvas.drawLine(center.translate(-4, 1), center.translate(0, 5), arrow);
      canvas.drawLine(center.translate(4, 1), center.translate(0, 5), arrow);
    }

    if (bomb) {
      final badgeCenter = Offset(left + width - 2, top + 18);
      canvas.drawCircle(badgeCenter, 11, Paint()..color = AppColors.coral);
      final text = TextPainter(
        text: const TextSpan(
          text: '3',
          style: TextStyle(
            color: Colors.white,
            fontSize: 11,
            fontWeight: FontWeight.w900,
          ),
        ),
        textDirection: TextDirection.ltr,
      )..layout();
      text.paint(
        canvas,
        Offset(badgeCenter.dx - text.width / 2, badgeCenter.dy - text.height / 2),
      );
    }

    if (narrowBadge) {
      final badge = RRect.fromRectAndRadius(
        Rect.fromCenter(
          center: Offset(center.dx, top + height + 10),
          width: 28,
          height: 14,
        ),
        const Radius.circular(7),
      );
      canvas.drawRRect(badge, Paint()..color = const Color(0xCC5A2410));
      canvas.drawRRect(
        badge,
        Paint()
          ..color = const Color(0xFFFF8A5B)
          ..style = PaintingStyle.stroke
          ..strokeWidth = 1.2,
      );
      final text = TextPainter(
        text: const TextSpan(
          text: '2',
          style: TextStyle(
            color: Color(0xFFFF8A5B),
            fontSize: 10,
            fontWeight: FontWeight.w900,
          ),
        ),
        textDirection: TextDirection.ltr,
      )..layout();
      text.paint(
        canvas,
        Offset(center.dx - text.width / 2, top + height + 10 - text.height / 2),
      );
    }

    if (portal != null) {
      canvas.drawCircle(
        Offset(center.dx, top + 12),
        6,
        Paint()..color = portal,
      );
    }
  }

  @override
  bool shouldRepaint(covariant _MechanicScenePainter oldDelegate) =>
      oldDelegate.kind != kind || oldDelegate.accent != accent;
}
