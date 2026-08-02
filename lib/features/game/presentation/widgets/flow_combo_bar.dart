import 'package:flutter/material.dart';

import '../../../../app/theme/app_colors.dart';
import '../../../../l10n/l10n_extensions.dart';
import '../../domain/flow_combo_state.dart';

class FlowComboBar extends StatelessWidget {
  const FlowComboBar({super.key, required this.flow, this.compact = false});

  final FlowComboState flow;
  final bool compact;

  String _label(AppLocalizations l10n) => flow.isLegendary
      ? l10n.legendaryFlowLabel
      : l10n.flowLabel(flow.currentMultiplier);

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final color = flow.isLegendary
        ? const Color(0xFFFFD166)
        : Color.lerp(
            AppColors.cyan,
            AppColors.violet,
            (flow.currentMultiplier - 1) / 5,
          )!;
    if (compact) {
      return AnimatedContainer(
        duration: const Duration(milliseconds: 240),
        height: 38,
        padding: const EdgeInsets.symmetric(horizontal: 10),
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            colors: [Color(0xFF15314A), Color(0xFF081524)],
          ),
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: color.withValues(alpha: .65)),
          boxShadow: [
            BoxShadow(color: color.withValues(alpha: .14), blurRadius: 10),
          ],
        ),
        child: Row(
          children: [
            Text(
              flow.isLegendary
                  ? l10n.legendaryFlow
                  : l10n.flowMultiplier(flow.currentMultiplier),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                color: flow.currentMultiplier >= 4
                    ? const Color(0xFFFFD166)
                    : color,
                fontSize: 11,
                fontWeight: FontWeight.w900,
                letterSpacing: .3,
              ),
            ),
            const SizedBox(width: 9),
            Expanded(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(5),
                child: TweenAnimationBuilder<double>(
                  tween: Tween(end: flow.progressToNext),
                  duration: const Duration(milliseconds: 320),
                  builder: (context, value, child) => LinearProgressIndicator(
                    value: value,
                    minHeight: 5,
                    color: const Color(0xFFFFB719),
                    backgroundColor: const Color(0xFF28344A),
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    }
    return AnimatedContainer(
      duration: const Duration(milliseconds: 260),
      padding: const EdgeInsets.fromLTRB(12, 8, 12, 9),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [color.withValues(alpha: .18), const Color(0x66131E48)],
        ),
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: color.withValues(alpha: .5)),
        boxShadow: flow.currentMultiplier >= 4
            ? [BoxShadow(color: color.withValues(alpha: .2), blurRadius: 18)]
            : const [],
      ),
      child: Column(
        children: [
          Row(
            children: [
              Icon(
                flow.isLegendary
                    ? Icons.workspace_premium_rounded
                    : Icons.water_drop_rounded,
                color: color,
                size: 18,
              ),
              const SizedBox(width: 7),
              AnimatedSwitcher(
                duration: const Duration(milliseconds: 280),
                transitionBuilder: (child, animation) => ScaleTransition(
                  scale: CurvedAnimation(
                    parent: animation,
                    curve: Curves.easeOutBack,
                  ),
                  child: child,
                ),
                child: Text(
                  // Keep script casing as authored in ARB (important for Arabic/CJK).
                  _label(l10n),
                  key: ValueKey(flow.currentMultiplier),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: color,
                    fontWeight: FontWeight.w900,
                    fontSize: 11,
                    letterSpacing: .75,
                  ),
                ),
              ),
              const Spacer(),
              if (flow.freeUndoChargesEarned > 0)
                const Padding(
                  padding: EdgeInsets.only(right: 10),
                  child: Row(
                    children: [
                      Icon(Icons.undo_rounded, size: 13, color: AppColors.mint),
                      SizedBox(width: 3),
                      Text(
                        '+1',
                        style: TextStyle(
                          color: AppColors.mint,
                          fontSize: 10,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                    ],
                  ),
                ),
              Text(
                '+${flow.earnedCoinBonus}',
                style: const TextStyle(
                  color: Color(0xFFFFD166),
                  fontWeight: FontWeight.w900,
                  fontSize: 12,
                ),
              ),
              const SizedBox(width: 3),
              const Icon(
                Icons.monetization_on_rounded,
                color: Color(0xFFFFD166),
                size: 15,
              ),
            ],
          ),
          const SizedBox(height: 7),
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: TweenAnimationBuilder<double>(
              tween: Tween(end: flow.progressToNext),
              duration: const Duration(milliseconds: 340),
              curve: Curves.easeOutCubic,
              builder: (context, value, child) => LinearProgressIndicator(
                minHeight: 6,
                value: value,
                backgroundColor: const Color(0x55343E69),
                color: color,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
