import 'package:flutter/material.dart';



import '../../../app/theme/app_colors.dart';

import '../../../core/widgets/glass_panel.dart';

import '../../../l10n/l10n_extensions.dart';

import '../../game/domain/game_economy.dart';

import '../data/progress_repository.dart';



Future<DailyRewardClaim?> showDailyRewardDialog({

  required BuildContext context,

  required RewardProgressRepository rewards,

}) {

  final l10n = context.l10n;

  return showGeneralDialog<DailyRewardClaim>(

    context: context,

    barrierDismissible: true,

    barrierLabel: l10n.dailyReward,

    barrierColor: const Color(0xCC040814),

    transitionDuration: const Duration(milliseconds: 280),

    pageBuilder: (context, animation, secondaryAnimation) {

      return FadeTransition(

        opacity: animation,

        child: DailyRewardDialog(rewards: rewards),

      );

    },

  );

}



class DailyRewardDialog extends StatefulWidget {

  const DailyRewardDialog({super.key, required this.rewards});



  final RewardProgressRepository rewards;



  @override

  State<DailyRewardDialog> createState() => _DailyRewardDialogState();

}



class _DailyRewardDialogState extends State<DailyRewardDialog> {

  var _claiming = false;



  int get _previewDay {

    if (!widget.rewards.canClaimDailyReward) {

      return (widget.rewards.dailyStreak - 1).clamp(0, 6);

    }

    final last = widget.rewards.lastDailyClaimDate;

    if (last == null) return 0;

    final now = DateTime.now();

    final today = DateTime(now.year, now.month, now.day);

    final lastDay = DateTime(last.year, last.month, last.day);

    if (today.difference(lastDay).inDays == 1) {

      return widget.rewards.dailyStreak % 7;

    }

    return 0;

  }



  Future<void> _claim() async {

    if (_claiming || !widget.rewards.canClaimDailyReward) return;

    setState(() => _claiming = true);

    final claim = await widget.rewards.claimDailyReward();

    if (!mounted) return;

    setState(() => _claiming = false);

    if (claim != null) {

      Navigator.of(context).pop(claim);

    }

  }



  @override

  Widget build(BuildContext context) {

    final l10n = context.l10n;

    final canClaim = widget.rewards.canClaimDailyReward;

    final streak = widget.rewards.dailyStreak;

    final preview = _previewDay;



    return SafeArea(

      child: Center(

        child: Padding(

          padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 24),

          child: ConstrainedBox(

            constraints: const BoxConstraints(maxWidth: 440),

            child: Material(

              color: Colors.transparent,

              child: GlassPanel(

                padding: const EdgeInsets.fromLTRB(16, 16, 16, 14),

                child: Column(

                  mainAxisSize: MainAxisSize.min,

                  children: [

                    Row(

                      children: [

                        const Icon(

                          Icons.card_giftcard_rounded,

                          color: Color(0xFFFFC34A),

                        ),

                        const SizedBox(width: 8),

                        Expanded(

                          child: Text(

                            l10n.dailyRewardTitle,

                            maxLines: 1,

                            overflow: TextOverflow.ellipsis,

                            style: const TextStyle(

                              color: Color(0xFFFFC34A),

                              fontWeight: FontWeight.w900,

                              fontSize: 18,

                            ),

                          ),

                        ),

                        IconButton(

                          onPressed: () => Navigator.pop(context),

                          icon: const Icon(Icons.close_rounded),

                        ),

                      ],

                    ),

                    Text(

                      canClaim

                          ? l10n.dailyRewardClaimBody

                          : l10n.dailyRewardClaimedBody,

                      softWrap: true,

                      style: const TextStyle(

                        color: AppColors.textMuted,

                        fontWeight: FontWeight.w600,

                        height: 1.35,

                      ),

                    ),

                    const SizedBox(height: 8),

                    Text(

                      l10n.dailyStreak(streak),

                      style: const TextStyle(

                        color: AppColors.text,

                        fontWeight: FontWeight.w800,

                      ),

                    ),

                    const SizedBox(height: 14),

                    SizedBox(

                      height: 92,

                      child: ListView.separated(

                        scrollDirection: Axis.horizontal,

                        itemCount: GameEconomy.dailyRewardCoins.length,

                        separatorBuilder: (_, _) => const SizedBox(width: 8),

                        itemBuilder: (context, index) {

                          final coins = GameEconomy.dailyRewardCoins[index];

                          final day = index + 1;

                          final isToday = canClaim && index == preview;

                          final isPast = canClaim

                              ? index < preview

                              : index < streak;

                          final hasHint =

                              GameEconomy.dailyBonusHintDays.contains(day);

                          return Container(

                            width: 72,

                            padding: const EdgeInsets.all(8),

                            decoration: BoxDecoration(

                              color: isToday

                                  ? const Color(0x33FFC34A)

                                  : const Color(0x22101828),

                              borderRadius: BorderRadius.circular(14),

                              border: Border.all(

                                color: isToday

                                    ? const Color(0xFFFFC34A)

                                    : const Color(0x334D5C8B),

                              ),

                            ),

                            child: Column(

                              mainAxisAlignment: MainAxisAlignment.center,

                              children: [

                                Text(

                                  l10n.dayChip(day),

                                  style: TextStyle(

                                    color: isToday

                                        ? const Color(0xFFFFC34A)

                                        : AppColors.textMuted,

                                    fontWeight: FontWeight.w900,

                                    fontSize: 11,

                                  ),

                                ),

                                const SizedBox(height: 4),

                                Icon(

                                  isPast && !isToday

                                      ? Icons.check_circle_rounded

                                      : Icons.monetization_on_rounded,

                                  color: const Color(0xFFFFC13A),

                                  size: 20,

                                ),

                                const SizedBox(height: 3),

                                Text(

                                  '+$coins',

                                  style: const TextStyle(

                                    fontWeight: FontWeight.w900,

                                    fontSize: 12,

                                  ),

                                ),

                                if (hasHint)

                                  Text(

                                    l10n.plusHint,

                                    style: const TextStyle(

                                      color: AppColors.mint,

                                      fontSize: 9,

                                      fontWeight: FontWeight.w800,

                                    ),

                                  ),

                              ],

                            ),

                          );

                        },

                      ),

                    ),

                    const SizedBox(height: 16),

                    SizedBox(

                      width: double.infinity,

                      child: FilledButton(

                        onPressed: canClaim && !_claiming ? _claim : null,

                        style: FilledButton.styleFrom(

                          backgroundColor: const Color(0xFFFFC34A),

                          foregroundColor: const Color(0xFF2A1600),

                          padding: const EdgeInsets.symmetric(vertical: 14),

                          shape: RoundedRectangleBorder(

                            borderRadius: BorderRadius.circular(14),

                          ),

                        ),

                        child: FittedBox(

                          fit: BoxFit.scaleDown,

                          child: Text(

                            _claiming

                                ? l10n.claiming

                                : canClaim

                                ? l10n.claimDailyReward

                                : l10n.comeAgainTomorrow,

                            maxLines: 1,

                            overflow: TextOverflow.ellipsis,

                            style: const TextStyle(fontWeight: FontWeight.w900),

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

