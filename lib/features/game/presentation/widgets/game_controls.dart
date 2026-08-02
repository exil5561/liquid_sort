import 'package:flutter/material.dart';

import '../../../../app/theme/app_colors.dart';

class GameControls extends StatelessWidget {
  const GameControls({
    super.key,
    required this.canUndo,
    required this.canAddTube,
    required this.enabled,
    required this.undoCount,
    required this.onUndo,
    required this.onRestart,
    required this.onHint,
    required this.onAddTube,
    this.hintCount,
    this.addTubeCount,
  });

  final bool canUndo;
  final bool canAddTube;
  final bool enabled;
  final int undoCount;
  final VoidCallback onUndo;
  final VoidCallback onRestart;
  final VoidCallback onHint;
  final VoidCallback onAddTube;
  final int? hintCount;
  final int? addTubeCount;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        _ControlButton(
          key: const ValueKey('undo-button'),
          icon: Icons.undo_rounded,
          label: 'Geri al',
          badge: '$undoCount',
          onTap: enabled && canUndo ? onUndo : null,
        ),
        _ControlButton(
          icon: Icons.restart_alt_rounded,
          label: 'Yeniden',
          onTap: enabled ? onRestart : null,
        ),
        _ControlButton(
          key: const ValueKey('hint-button'),
          icon: Icons.lightbulb_rounded,
          label: 'İpucu',
          accent: const Color(0xFFFFC12A),
          badge: hintCount == null ? null : '$hintCount',
          onTap: enabled && (hintCount == null || hintCount! > 0)
              ? onHint
              : null,
        ),
        _ControlButton(
          icon: Icons.add_circle_outline_rounded,
          label: 'Tüp ekle',
          accent: AppColors.cyan,
          badge: addTubeCount == null ? null : '$addTubeCount',
          onTap: enabled && canAddTube ? onAddTube : null,
        ),
      ],
    );
  }
}

class _ControlButton extends StatelessWidget {
  const _ControlButton({
    super.key,
    required this.icon,
    required this.label,
    required this.onTap,
    this.accent = AppColors.text,
    this.badge,
  });

  final IconData icon;
  final String label;
  final VoidCallback? onTap;
  final Color accent;
  final String? badge;

  @override
  Widget build(BuildContext context) {
    final enabled = onTap != null;
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 3),
        child: AnimatedOpacity(
          opacity: enabled ? 1 : .36,
          duration: const Duration(milliseconds: 160),
          child: Material(
            color: Colors.transparent,
            child: InkWell(
              onTap: onTap,
              borderRadius: BorderRadius.circular(17),
              child: Container(
                height: 82,
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [Color(0xFF182A43), Color(0xFF091323)],
                  ),
                  borderRadius: BorderRadius.circular(17),
                  border: Border.all(color: const Color(0xFF43546E)),
                  boxShadow: const [
                    BoxShadow(
                      color: Color(0x6600030B),
                      blurRadius: 10,
                      offset: Offset(0, 5),
                    ),
                  ],
                ),
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Positioned.fill(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            icon,
                            color: accent,
                            size: 31,
                            shadows: [
                              Shadow(
                                color: accent.withValues(alpha: .42),
                                blurRadius: 10,
                              ),
                            ],
                          ),
                          const SizedBox(height: 7),
                          FittedBox(
                            child: Text(
                              label,
                              style: const TextStyle(
                                color: Color(0xFFD6DEEA),
                                fontWeight: FontWeight.w700,
                                fontSize: 10,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    if (badge != null)
                      Positioned(
                        right: -4,
                        top: -6,
                        child: Container(
                          constraints: const BoxConstraints(minWidth: 22),
                          height: 22,
                          padding: const EdgeInsets.symmetric(horizontal: 5),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            gradient: const LinearGradient(
                              colors: [Color(0xFFFF493F), Color(0xFFB41221)],
                            ),
                            shape: BoxShape.circle,
                            border: Border.all(color: Colors.white, width: 1),
                            boxShadow: const [
                              BoxShadow(
                                color: Color(0xAAFF263E),
                                blurRadius: 8,
                              ),
                            ],
                          ),
                          child: Text(
                            badge!,
                            style: const TextStyle(
                              fontWeight: FontWeight.w900,
                              fontSize: 10,
                            ),
                          ),
                        ),
                      ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
