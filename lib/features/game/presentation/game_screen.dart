import 'dart:async';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../app/theme/app_colors.dart';
import '../../../core/ads/ad_service.dart';
import '../../../core/audio/audio_service.dart';
import '../../../core/services/premium_feedback_service.dart';
import '../../../core/widgets/cosmic_backdrop.dart';
import '../../../core/widgets/glass_panel.dart';
import '../../../core/widgets/premium_navigation.dart';
import '../../../l10n/l10n_extensions.dart';
import '../../progress/data/progress_repository.dart';
import '../../settings/domain/game_difficulty.dart';
import '../../settings/presentation/settings_screen.dart';
import '../application/flow_combo_controller.dart';
import '../application/game_controller.dart';
import '../application/reward_controller.dart';
import '../application/tempo_controller.dart';
import '../data/campaign_levels.dart';
import '../domain/color_mix_recipe.dart';
import '../domain/flow_combo_state.dart';
import '../domain/game_economy.dart';
import '../domain/game_state.dart';
import '../domain/game_status.dart';
import '../domain/level_definition.dart';
import '../domain/level_result.dart';
import '../domain/liquid_color_id.dart';
import '../domain/mechanic_intro.dart';
import '../domain/pour_result.dart';
import 'widgets/flow_combo_bar.dart';
import 'widgets/game_controls.dart';
import 'widgets/level_complete_overlay.dart';
import 'widgets/mechanic_intro_dialog.dart';
import 'widgets/tube_board.dart';

enum _AssistKind { hint, undo }

enum _TipUnlockChoice { cancel, pay, watchAd }

class GameScreen extends ConsumerStatefulWidget {
  const GameScreen({super.key, required this.level});

  final int level;

  @override
  ConsumerState<GameScreen> createState() => _GameScreenState();
}

class _GameScreenState extends ConsumerState<GameScreen>
    with TickerProviderStateMixin, WidgetsBindingObserver {
  late final AnimationController _pourController;
  late final AnimationController _shakeController;
  late final AnimationController _celebrationController;
  late final AnimationController _comboController;
  late final AnimationController _ambientController;
  late final AnimationController _mixController;
  late final AnimationController _heatController;
  late final AnimationController _specialController;
  PourResult? _pendingPour;
  bool _committed = false;
  String? _celebratingTubeId;
  String? _invalidTubeId;
  int _burstCombo = 1;
  int? _previousBest;
  int _attempt = 1;
  LevelResult? _levelResult;
  bool _isPaused = false;
  bool _showingMechanicIntro = false;
  LiquidColorId? _mixedColor;
  LiquidColorId? _evaporatedColor;
  String _specialMessage = '';
  Color _specialColor = AppColors.cyan;

  bool get _reducedMotion =>
      ref.read(progressRepositoryProvider).reducedAnimations;

  bool get _accessibilityPatterns {
    final progress = ref.read(progressRepositoryProvider);
    final accessibility = progress is AccessibilityPreferences
        ? progress as AccessibilityPreferences
        : null;
    return accessibility?.colorAccessibilityEnabled ?? false;
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    _pourController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 650),
    )..addListener(_synchronizePour);
    _shakeController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 240),
    );
    _celebrationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 980),
    );
    _comboController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 680),
    );
    _ambientController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 3200),
    );
    _mixController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1050),
    );
    _heatController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 900),
    );
    _specialController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 820),
    );
    if (!_reducedMotion) _ambientController.repeat();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _startLevel(widget.level, resetAttempt: true);
      unawaited(ref.read(audioServiceProvider).startMusic());
      unawaited(_presentMechanicIntrosIfNeeded(widget.level));
    });
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    switch (state) {
      case AppLifecycleState.resumed:
        // Only resume audio if the in-game pause overlay is not open.
        if (!_isPaused) {
          unawaited(ref.read(audioServiceProvider).resumeMusic());
        }
      case AppLifecycleState.paused:
      case AppLifecycleState.hidden:
      case AppLifecycleState.detached:
        _pauseGame();
      case AppLifecycleState.inactive:
        break;
    }
  }

  void _startLevel(int level, {bool resetAttempt = false}) {
    final progress = ref.read(progressRepositoryProvider);
    ref.read(gameControllerProvider.notifier).startLevel(level);
    final game = ref.read(gameControllerProvider);
    ref
        .read(tempoControllerProvider.notifier)
        .start(game.parMoves, boss: CampaignLevels.byNumber(level).isBoss);
    ref.read(flowComboControllerProvider.notifier).reset();
    ref.read(rewardControllerProvider.notifier).reset();
    _pourController.reset();
    _shakeController.reset();
    _celebrationController.reset();
    _comboController.reset();
    _mixController.reset();
    _heatController.reset();
    _specialController.reset();
    setState(() {
      if (resetAttempt) _attempt = 1;
      _previousBest = progress.bestMovesFor(level);
      _pendingPour = null;
      _committed = false;
      _celebratingTubeId = null;
      _invalidTubeId = null;
      _burstCombo = 1;
      _levelResult = null;
      _isPaused = false;
      _showingMechanicIntro = false;
      _mixedColor = null;
      _evaporatedColor = null;
    });
  }

  Future<void> _openMechanicTip(MechanicKind kind) async {
    if (_showingMechanicIntro || _isPaused) return;
    final intro = MechanicIntros.byKind(kind);
    final l10n = context.l10n;
    final rewards = _rewards;
    final cost = GameEconomy.mechanicTipReplayCost;
    final balance = rewards?.coins ?? 0;
    final canAfford = rewards != null && balance >= cost;

    final choice = await showDialog<_TipUnlockChoice>(
      context: context,
      barrierColor: const Color(0xCC040814),
      builder: (dialogContext) {
        final dialogL10n = dialogContext.l10n;
        return Dialog(
        backgroundColor: Colors.transparent,
        insetPadding: const EdgeInsets.symmetric(horizontal: 28),
        child: GlassPanel(
          padding: const EdgeInsets.fromLTRB(18, 18, 18, 14),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                intro.title(dialogL10n),
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w900,
                  letterSpacing: .3,
                ),
              ),
              const SizedBox(height: 10),
              Text(
                canAfford
                    ? dialogL10n.tipUnlockPaidBody
                    : dialogL10n.tipUnlockAdBody,
                textAlign: TextAlign.center,
                softWrap: true,
                style: const TextStyle(
                  color: AppColors.textMuted,
                  fontWeight: FontWeight.w600,
                  height: 1.4,
                ),
              ),
              const SizedBox(height: 16),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(vertical: 12),
                decoration: BoxDecoration(
                  color: const Color(0x332A1A00),
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(color: const Color(0x88FFC13A)),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      canAfford
                          ? Icons.monetization_on_rounded
                          : Icons.ondemand_video_rounded,
                      color: canAfford
                          ? const Color(0xFFFFC13A)
                          : AppColors.cyan,
                      size: 28,
                    ),
                    const SizedBox(width: 8),
                    Text(
                      canAfford ? '$cost' : dialogL10n.ad,
                      style: TextStyle(
                        color: canAfford
                            ? const Color(0xFFFFC13A)
                            : AppColors.cyan,
                        fontSize: canAfford ? 28 : 22,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    dialogL10n.yourBalance,
                    style: const TextStyle(
                      color: AppColors.textMuted,
                      fontSize: 12,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const Icon(
                    Icons.monetization_on_rounded,
                    color: Color(0xFFFFC13A),
                    size: 15,
                  ),
                  const SizedBox(width: 3),
                  Text(
                    '$balance',
                    style: TextStyle(
                      color: canAfford ? AppColors.text : AppColors.coral,
                      fontSize: 12,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  Text(
                    ' / $cost',
                    style: const TextStyle(
                      color: AppColors.textMuted,
                      fontSize: 12,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              Row(
                children: [
                  Expanded(
                    child: TextButton(
                      onPressed: () =>
                          Navigator.pop(dialogContext, _TipUnlockChoice.cancel),
                      child: Text(dialogL10n.cancel),
                    ),
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    flex: 2,
                    child: FilledButton(
                      onPressed: () => Navigator.pop(
                        dialogContext,
                        canAfford
                            ? _TipUnlockChoice.pay
                            : _TipUnlockChoice.watchAd,
                      ),
                      style: FilledButton.styleFrom(
                        backgroundColor: canAfford
                            ? const Color(0xFFFFC13A)
                            : AppColors.cyan,
                        foregroundColor: const Color(0xFF081018),
                        padding: const EdgeInsets.symmetric(vertical: 12),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(14),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            canAfford
                                ? Icons.monetization_on_rounded
                                : Icons.play_circle_filled_rounded,
                            size: 18,
                          ),
                          const SizedBox(width: 5),
                          FittedBox(
                            fit: BoxFit.scaleDown,
                            child: Text(
                              canAfford
                                  ? dialogL10n.payCost(cost)
                                  : dialogL10n.watchAd,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: const TextStyle(fontWeight: FontWeight.w900),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      );
      },
    );
    if (choice == null || choice == _TipUnlockChoice.cancel || !mounted) {
      return;
    }

    if (choice == _TipUnlockChoice.pay) {
      if (rewards == null || !await rewards.spendCoins(cost)) {
        if (!mounted) return;
        _showToast(l10n.insufficientCoins(cost));
        return;
      }
    } else {
      final ads = ref.read(adServiceProvider);
      await ads.loadRewarded();
      final rewarded = await ads.showRewarded();
      if (!rewarded || !mounted) {
        _showToast(l10n.adFailed);
        return;
      }
    }
    if (!mounted) return;

    setState(() => _showingMechanicIntro = true);
    ref.read(tempoControllerProvider.notifier).pause();
    await showMechanicIntroDialog(context, intro);
    if (!mounted) return;
    setState(() => _showingMechanicIntro = false);
    if (!_isPaused) {
      ref.read(tempoControllerProvider.notifier).resume();
    }
    _showToast(
      choice == _TipUnlockChoice.pay
          ? l10n.reopenPaid(cost, intro.title(l10n))
          : l10n.reopenAd(intro.title(l10n)),
    );
  }

  Future<void> _presentMechanicIntrosIfNeeded(int level) async {
    if (!mounted) return;
    final progress = ref.read(progressRepositoryProvider);
    final definition = CampaignLevels.byNumber(level);
    final unseen = MechanicIntros.forLevel(definition)
        .where((intro) => !progress.hasSeenMechanicIntro(intro.storageKey))
        .toList(growable: false);
    if (unseen.isEmpty) return;

    setState(() => _showingMechanicIntro = true);
    ref.read(tempoControllerProvider.notifier).pause();

    for (final intro in unseen) {
      if (!mounted) return;
      await showMechanicIntroDialog(context, intro);
      await progress.markMechanicIntroSeen(intro.storageKey);
    }

    if (!mounted) return;
    setState(() => _showingMechanicIntro = false);
    if (!_isPaused) {
      ref.read(tempoControllerProvider.notifier).resume();
    }
  }

  void _pauseGame() {
    final game = ref.read(gameControllerProvider);
    unawaited(ref.read(audioServiceProvider).stopEffects());
    unawaited(ref.read(audioServiceProvider).pauseMusic());
    if (game.status == GameStatus.completed ||
        game.status == GameStatus.failed) {
      return;
    }
    ref.read(tempoControllerProvider.notifier).pause();
    _ambientController.stop();
    if (mounted && !_isPaused) setState(() => _isPaused = true);
  }

  void _resumeGame() {
    final game = ref.read(gameControllerProvider);
    if (game.status != GameStatus.playing &&
        game.status != GameStatus.animating) {
      return;
    }
    if (game.status == GameStatus.playing) {
      ref.read(tempoControllerProvider.notifier).resume();
    }
    if (!_reducedMotion && !_ambientController.isAnimating) {
      _ambientController.repeat();
    }
    unawaited(ref.read(audioServiceProvider).resumeMusic());
    setState(() => _isPaused = false);
  }

  void _togglePause() => _isPaused ? _resumeGame() : _pauseGame();

  void _stopForExit() {
    ref.read(tempoControllerProvider.notifier).stop();
    unawaited(ref.read(audioServiceProvider).stopEffects());
  }

  GameDifficulty get _difficulty {
    final progress = ref.read(progressRepositoryProvider);
    if (progress is DifficultyPreferences) {
      return (progress as DifficultyPreferences).difficulty;
    }
    return GameDifficulty.normal;
  }

  Future<void> _maybeShowInterstitialOnExit(int level) async {
    if (!GameEconomy.shouldShowExitInterstitial(
      level: level,
      easyMode: _difficulty == GameDifficulty.easy,
    )) {
      return;
    }
    final ads = ref.read(adServiceProvider);
    await ads.loadInterstitial();
    await ads.showInterstitial();
  }

  Future<void> _leaveForLevels() async {
    final level = ref.read(gameControllerProvider).currentLevel;
    _stopForExit();
    await _maybeShowInterstitialOnExit(level);
    if (!mounted) return;
    Navigator.of(context).pop();
  }

  Future<void> _leaveForHome() async {
    final level = ref.read(gameControllerProvider).currentLevel;
    _stopForExit();
    await _maybeShowInterstitialOnExit(level);
    if (!mounted) return;
    Navigator.of(context).popUntil((route) => route.isFirst);
  }

  void _synchronizePour() {
    if (_committed || _pendingPour == null || _pourController.value < .54) {
      return;
    }
    _committed = true;
    final move = _pendingPour!.move!;
    final actualDestinationId = move.portalExitTubeId ?? move.destinationTubeId;
    final before = move.beforeTubes.firstWhere(
      (tube) => tube.id == actualDestinationId,
    );
    final after = _pendingPour!.tubes.firstWhere(
      (tube) => tube.id == actualDestinationId,
    );
    if (!before.isCompleted && after.isCompleted) {
      setState(() => _celebratingTubeId = actualDestinationId);
      _celebrationController.forward(from: 0);
      unawaited(ref.read(premiumFeedbackServiceProvider).tubeCompleted());
    }
    ref.read(gameControllerProvider.notifier).commitPour(_pendingPour!);
  }

  Future<void> _playPour(PourResult result) async {
    _pourController.duration = Duration(
      milliseconds: _reducedMotion ? 220 : 650,
    );
    setState(() {
      _pendingPour = result;
      _committed = false;
      _invalidTubeId = null;
    });
    await _pourController.forward(from: 0);
    if (!mounted) return;
    if (!_committed) {
      ref.read(gameControllerProvider.notifier).commitPour(result);
    }
    unawaited(ref.read(premiumFeedbackServiceProvider).pourLanding());
    ref.read(gameControllerProvider.notifier).finishPourAnimation();
    final game = ref.read(gameControllerProvider);
    final definition = CampaignLevels.byNumber(game.currentLevel);
    final mixedColor = result.move?.mixedColor;
    final evaporatedColor = result.move?.evaporated == true
        ? result.move!.color
        : null;
    setState(() {
      _pendingPour = null;
      if (mixedColor != null) _mixedColor = mixedColor;
      if (evaporatedColor != null) _evaporatedColor = evaporatedColor;
    });
    if (mixedColor != null) {
      _mixController.forward(from: 0);
      unawaited(ref.read(premiumFeedbackServiceProvider).comboMilestone());
    }
    if (evaporatedColor != null) {
      _heatController.forward(from: 0);
      unawaited(ref.read(audioServiceProvider).play(GameSound.pour));
    }
    if (result.move?.portalExitTubeId != null) {
      _triggerSpecial(context.l10n.portalFlow, AppColors.cyan);
      unawaited(ref.read(audioServiceProvider).play(GameSound.comboIncrease));
    }
    if (definition.movingEveryMoves > 0 &&
        game.moveCount % definition.movingEveryMoves == 0) {
      _triggerSpecial(context.l10n.tubesShifted, AppColors.violet);
      unawaited(ref.read(audioServiceProvider).play(GameSound.glassMove));
    }
    if (definition.bombTubeId != null) {
      final bombRemaining = definition.bombMoveLimit! - game.moveCount;
      final bombTube = game.tubes.firstWhere(
        (tube) => tube.id == definition.bombTubeId,
      );
      if (!bombTube.isCompleted && bombRemaining > 0 && bombRemaining <= 3) {
        _triggerSpecial(
          context.l10n.bombMovesLeft(bombRemaining),
          AppColors.coral,
        );
        unawaited(ref.read(audioServiceProvider).play(GameSound.tick));
      }
    }
    if (definition.frozenTubeId != null &&
        game.moveCount == definition.frozenForMoves) {
      unawaited(ref.read(audioServiceProvider).play(GameSound.iceBreak));
      _showMechanicMessage(context.l10n.iceBroken);
    }
    final completedBefore = result.move!.beforeTubes
        .where((tube) => tube.isCompleted)
        .length;
    final completedAfter = game.tubes.where((tube) => tube.isCompleted).length;
    if (definition.lockedTubeId != null &&
        completedBefore < definition.unlockAfterCompletedTubes &&
        completedAfter >= definition.unlockAfterCompletedTubes) {
      _showMechanicMessage(context.l10n.lockUnlocked);
    }

    if (game.status == GameStatus.failed) {
      ref.read(tempoControllerProvider.notifier).pause();
      return;
    }

    if (ref.read(tempoControllerProvider).isExpired &&
        game.status == GameStatus.playing) {
      ref.read(gameControllerProvider.notifier).failLevel();
      return;
    }

    if (game.status == GameStatus.completed) {
      ref.read(tempoControllerProvider.notifier).pause();
      final completedResult = await ref
          .read(rewardControllerProvider.notifier)
          .completeLevel(
            level: game.currentLevel,
            moves: game.moveCount,
            parMoves: game.parMoves,
            previousBest: _previousBest,
            undoUses: game.undoUses,
            hintUses: game.hintUses,
            extraTubeUsed: game.extraTubeUsed,
            firstTry: _attempt == 1,
            flow: ref.read(flowComboControllerProvider),
          );
      if (mounted) setState(() => _levelResult = completedResult);
    }
  }

  void _onTubeTap(String tubeId) {
    if (_isPaused || _showingMechanicIntro) return;
    final game = ref.read(gameControllerProvider);
    if (game.status != GameStatus.playing) return;
    final result = ref.read(gameControllerProvider.notifier).tapTube(tubeId);
    if (result?.isSuccess ?? false) {
      ref
          .read(tempoControllerProvider.notifier)
          .reward(
            bonusSeconds: result!.move!.createdMixedColor
                ? 6
                : result.move!.evaporated
                ? 4
                : null,
          );
      final beforeFlow = ref.read(flowComboControllerProvider);
      ref.read(flowComboControllerProvider.notifier).recordMove(result);
      final afterFlow = ref.read(flowComboControllerProvider);
      if (afterFlow.currentMultiplier > beforeFlow.currentMultiplier) {
        setState(() => _burstCombo = afterFlow.currentMultiplier);
        _comboController.forward(from: 0);
        unawaited(ref.read(premiumFeedbackServiceProvider).comboMilestone());
      }
      unawaited(_playPour(result));
    } else if (result != null) {
      if (result.failure != PourFailure.frozenTube &&
          result.failure != PourFailure.lockedTube &&
          result.failure != PourFailure.heaterExhausted &&
          result.failure != PourFailure.oneWayValve) {
        ref.read(tempoControllerProvider.notifier).penalize();
      } else {
        _showMechanicMessage(
          result.failure == PourFailure.frozenTube
              ? context.l10n.tubeFrozenMsg
              : result.failure == PourFailure.lockedTube
              ? context.l10n.tubeLockedMsg
              : result.failure == PourFailure.oneWayValve
              ? context.l10n.valveOneWayMsg
              : context.l10n.heatExhaustedMsg,
        );
      }
      unawaited(_playInvalidFeedback(tubeId));
    }
  }

  void _showMechanicMessage(String message) {
    if (!mounted) return;
    ScaffoldMessenger.of(context)
      ..hideCurrentSnackBar()
      ..showSnackBar(
        SnackBar(
          content: Text(message),
          behavior: SnackBarBehavior.floating,
          duration: const Duration(milliseconds: 1700),
        ),
      );
  }

  void _triggerSpecial(String message, Color color) {
    if (!mounted) return;
    setState(() {
      _specialMessage = message;
      _specialColor = color;
    });
    _specialController.forward(from: 0);
  }

  Future<void> _playInvalidFeedback(String tubeId) async {
    _shakeController.duration = Duration(
      milliseconds: _reducedMotion ? 120 : 240,
    );
    setState(() => _invalidTubeId = tubeId);
    await _shakeController.forward(from: 0);
    if (mounted) setState(() => _invalidTubeId = null);
  }

  RewardProgressRepository? get _rewards {
    final progress = ref.read(progressRepositoryProvider);
    return progress is RewardProgressRepository
        ? progress as RewardProgressRepository
        : null;
  }

  Future<void> _undo() async {
    final game = ref.read(gameControllerProvider);
    if (game.history.isEmpty) return;
    final rewards = _rewards;
    final useFree = game.freeUndosRemaining > 0;
    if (!useFree) {
      if (rewards == null ||
          !await rewards.spendCoins(GameEconomy.undoCoinCost)) {
        if (!mounted) return;
        await _offerRewardedAssist(kind: _AssistKind.undo);
        return;
      }
    }
    final applied = ref
        .read(gameControllerProvider.notifier)
        .undo(consumeFreeCharge: useFree);
    if (applied) {
      ref.read(flowComboControllerProvider.notifier).onUndo();
      if (mounted) setState(() {});
    }
  }

  Future<void> _useHint() async {
    final game = ref.read(gameControllerProvider);
    if (game.hintUses >= GameEconomy.maxHintsPerLevel) {
      _showToast(context.l10n.tipQuotaEmpty);
      return;
    }
    final rewards = _rewards;
    if (rewards == null) {
      _showToast(context.l10n.rewardsNotReady);
      return;
    }
    final usedToken = await rewards.consumeFreeHintToken();
    if (!usedToken) {
      if (!await rewards.spendCoins(GameEconomy.hintCoinCost)) {
        if (!mounted) return;
        await _offerRewardedAssist(kind: _AssistKind.hint);
        return;
      }
    }
    final before = ref.read(gameControllerProvider).hintUses;
    await ref.read(gameControllerProvider.notifier).showHint();
    if (!mounted) return;
    if (ref.read(tempoControllerProvider).isExpired) {
      ref.read(gameControllerProvider.notifier).failLevel();
      return;
    }
    final after = ref.read(gameControllerProvider).hintUses;
    if (after > before) {
      setState(() {});
      _showToast(
        usedToken
            ? context.l10n.freeHintUsed
            : context.l10n.hintCost(GameEconomy.hintCoinCost),
      );
    } else {
      // Solver failed — refund the spent coin or token.
      if (usedToken) {
        await rewards.grantFreeHintTokens(1);
      } else {
        await rewards.grantCoins(GameEconomy.hintCoinCost);
      }
      if (!mounted) return;
      setState(() {});
      _showToast(context.l10n.noHintAvailable);
    }
  }

  Future<void> _offerRewardedAssist({required _AssistKind kind}) async {
    final l10n = context.l10n;
    final label =
        kind == _AssistKind.hint ? l10n.assistHint : l10n.assistUndo;
    final cost = kind == _AssistKind.hint
        ? GameEconomy.hintCoinCost
        : GameEconomy.undoCoinCost;
    final watch = await showDialog<bool>(
      context: context,
      builder: (dialogContext) {
        final dialogL10n = dialogContext.l10n;
        return AlertDialog(
        backgroundColor: const Color(0xFF101A2E),
        title: Text(dialogL10n.insufficientCoinsTitle(cost)),
        content: Text(
          dialogL10n.watchAdEarnAssist(label),
          softWrap: true,
          style: const TextStyle(color: AppColors.textMuted),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(dialogContext, false),
            child: Text(dialogL10n.cancel),
          ),
          FilledButton(
            onPressed: () => Navigator.pop(dialogContext, true),
            child: Text(dialogL10n.watchAd),
          ),
        ],
      );
      },
    );
    if (watch != true || !mounted) return;
    final ads = ref.read(adServiceProvider);
    await ads.loadRewarded();
    final rewarded = await ads.showRewarded();
    if (!rewarded || !mounted) {
      _showToast(l10n.adFailed);
      return;
    }
    if (kind == _AssistKind.hint) {
      await _rewards?.grantFreeHintTokens(1);
      _showToast(l10n.freeHintEarned);
    } else {
      ref.read(gameControllerProvider.notifier).grantFreeUndo();
      _showToast(l10n.freeUndoEarned);
    }
    if (mounted) setState(() {});
  }

  void _showToast(String message) {
    ScaffoldMessenger.of(context)
      ..hideCurrentSnackBar()
      ..showSnackBar(
        SnackBar(content: Text(message), behavior: SnackBarBehavior.floating),
      );
  }

  Future<void> _onLevelFailed() async {
    final progress = ref.read(progressRepositoryProvider);
    final level = ref.read(gameControllerProvider).currentLevel;
    await progress.recordLevelFailure(level);

    final rewards = _rewards;
    if (rewards == null) {
      if (mounted) setState(() {});
      return;
    }
    final deducted = await rewards.applyFailurePenalty();
    if (!mounted) return;
    setState(() {});
    if (deducted > 0) {
      _showToast(
        context.l10n.failureCredit(deducted, GameEconomy.coinDebtFloor,
        ),
      );
    } else if (rewards.isAtCoinDebtFloor) {
      _showToast(
        context.l10n.debtLimitToast(GameEconomy.coinDebtFloor),
      );
    }
  }

  Future<void> _skipLevelWithAd() async {
    final l10n = context.l10n;
    final progress = ref.read(progressRepositoryProvider);
    final level = ref.read(gameControllerProvider).currentLevel;
    final maxLevel = CampaignLevels.all.length;
    if (!GameEconomy.canOfferLevelSkip(
      level: level,
      maxLevel: maxLevel,
      failureCount: progress.failureCountFor(level),
      alreadySkipped: progress.hasUsedLevelSkip(level),
    )) {
      return;
    }

    final ads = ref.read(adServiceProvider);
    await ads.loadRewarded();
    final rewarded = await ads.showRewarded();
    if (!rewarded || !mounted) {
      _showToast(l10n.adFailed);
      return;
    }

    final next = await progress.unlockNextLevelBySkip(
      level,
      maxLevel: maxLevel,
    );
    if (!mounted) return;
    if (next == null) {
      _showToast(l10n.adFailed);
      return;
    }

    _showToast(l10n.skipLevelUnlocked);
    _startLevel(next, resetAttempt: true);
    unawaited(_presentMechanicIntrosIfNeeded(next));
  }

  Future<void> _restartLevel() async {
    final rewards = _rewards;
    if (rewards != null && rewards.isAtCoinDebtFloor) {
      final ok = await _offerRewardedRetry();
      if (!ok || !mounted) return;
    } else if (rewards != null) {
      final deducted = await rewards.applyFailurePenalty();
      if (!mounted) return;
      setState(() {});
      if (deducted > 0) {
        _showToast(context.l10n.restartCredit(deducted));
      }
    }
    final level = ref.read(gameControllerProvider).currentLevel;
    _attempt++;
    _startLevel(level);
  }

  Future<bool> _offerRewardedRetry() async {
    final l10n = context.l10n;
    final watch = await showDialog<bool>(
      context: context,
      builder: (dialogContext) {
        final dialogL10n = dialogContext.l10n;
        return AlertDialog(
        backgroundColor: const Color(0xFF101A2E),
        title: Text(
          dialogL10n.debtLimitTitle(GameEconomy.coinDebtFloor),
        ),
        content: Text(
          dialogL10n.debtLimitBody,
          softWrap: true,
          style: const TextStyle(color: AppColors.textMuted),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(dialogContext, false),
            child: Text(dialogL10n.cancel),
          ),
          FilledButton.icon(
            onPressed: () => Navigator.pop(dialogContext, true),
            icon: const Icon(Icons.ondemand_video_rounded),
            label: Text(dialogL10n.watchAd),
          ),
        ],
      );
      },
    );
    if (watch != true || !mounted) return false;
    final ads = ref.read(adServiceProvider);
    await ads.loadRewarded();
    final rewarded = await ads.showRewarded();
    if (!rewarded || !mounted) {
      _showToast(l10n.adFailed);
      return false;
    }
    return true;
  }

  Future<void> _nextLevel(int currentLevel) async {
    if (GameEconomy.shouldShowNextLevelInterstitial(
      level: currentLevel,
      easyMode: _difficulty == GameDifficulty.easy,
    )) {
      final ads = ref.read(adServiceProvider);
      await ads.loadInterstitial();
      await ads.showInterstitial();
      if (!mounted) return;
    }
    if (currentLevel >= CampaignLevels.all.length) {
      Navigator.of(context).pop();
      return;
    }
    final next = currentLevel + 1;
    _startLevel(next, resetAttempt: true);
    unawaited(_presentMechanicIntrosIfNeeded(next));
  }

  Future<int?> _doubleReward() async {
    final total = await ref
        .read(rewardControllerProvider.notifier)
        .doubleReward();
    if (mounted) {
      setState(() => _levelResult = ref.read(rewardControllerProvider));
    }
    return total;
  }

  Future<void> _openSettings() async {
    _pauseGame();
    await Navigator.of(
      context,
    ).push(
      MaterialPageRoute<void>(
        builder: (_) => const SettingsScreen(initialTab: 1),
      ),
    );
    if (!mounted) return;
    if (ref.read(gameControllerProvider).status == GameStatus.playing) {
      final progress = ref.read(progressRepositoryProvider);
      final preferences = progress is DifficultyPreferences
          ? progress as DifficultyPreferences
          : null;
      final tempo = ref.read(tempoControllerProvider);
      if (preferences != null && preferences.difficulty != tempo.difficulty) {
        final game = ref.read(gameControllerProvider);
        ref
            .read(tempoControllerProvider.notifier)
            .start(
              game.parMoves,
              boss: CampaignLevels.byNumber(game.currentLevel).isBoss,
            );
      }
      ref.read(tempoControllerProvider.notifier).pause();
      if (!_isPaused) setState(() => _isPaused = true);
    }
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    _pourController
      ..removeListener(_synchronizePour)
      ..dispose();
    _shakeController.dispose();
    _celebrationController.dispose();
    _comboController.dispose();
    _ambientController.dispose();
    _mixController.dispose();
    _heatController.dispose();
    _specialController.dispose();
    ref.read(tempoControllerProvider.notifier).stop();
    unawaited(ref.read(audioServiceProvider).stopEffects());
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final game = ref.watch(gameControllerProvider);
    final flow = ref.watch(flowComboControllerProvider);
    final tempo = ref.watch(tempoControllerProvider);
    final progress = ref.read(progressRepositoryProvider);
    final enabled =
        game.status == GameStatus.playing &&
        !_isPaused &&
        !_showingMechanicIntro;
    final rewardProgress = progress is RewardProgressRepository
        ? progress as RewardProgressRepository
        : null;
    final storedCoins = rewardProgress?.coins ?? 0;
    final definition = CampaignLevels.byNumber(game.currentLevel);
    final completedTubes = game.tubes.where((tube) => tube.isCompleted).length;
    final frozenTubeIds =
        definition.frozenTubeId != null &&
            game.moveCount < definition.frozenForMoves
        ? <String>{definition.frozenTubeId!}
        : <String>{};
    final lockedTubeId =
        definition.lockedTubeId != null &&
            completedTubes < definition.unlockAfterCompletedTubes
        ? definition.lockedTubeId
        : null;
    final heatUnitsUsed = game.history
        .where((move) => move.evaporated)
        .fold(0, (total, move) => total + move.amount);
    final heatUnitsRemaining = (definition.heatUnitCapacity - heatUnitsUsed)
        .clamp(0, definition.heatUnitCapacity);
    final bombRemaining = definition.bombMoveLimit == null
        ? null
        : (definition.bombMoveLimit! - game.moveCount).clamp(0, 99);
    final movingLayoutShift = definition.movingEveryMoves == 0
        ? 0
        : game.moveCount ~/ definition.movingEveryMoves;

    ref.listen<TempoState>(tempoControllerProvider, (previous, next) {
      if (next.isExpired && !(previous?.isExpired ?? false)) {
        ref.read(gameControllerProvider.notifier).failLevel();
      }
    });

    ref.listen<GameState>(gameControllerProvider, (previous, next) {
      if (next.status == GameStatus.failed &&
          previous?.status != GameStatus.failed) {
        unawaited(_onLevelFailed());
      }
    });

    return PopScope(
      onPopInvokedWithResult: (didPop, result) {
        if (didPop) _stopForExit();
      },
      child: Scaffold(
        body: CosmicBackdrop(
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 8, 10, 10),
                child: Container(
                  decoration: BoxDecoration(
                    gradient: const RadialGradient(
                      center: Alignment(0, -.22),
                      radius: .92,
                      colors: [Color(0x7011244A), Color(0xA8050B1B)],
                    ),
                    image: DecorationImage(
                      image: AssetImage(
                        game.currentLevel == CampaignLevels.all.length
                            ? 'assets/images/final_reactor_boss.png'
                            : 'assets/images/premium_cosmic_background.png',
                      ),
                      fit: BoxFit.cover,
                      opacity: game.currentLevel == CampaignLevels.all.length
                          ? .26
                          : .34,
                    ),
                    borderRadius: BorderRadius.circular(24),
                    border: Border.all(
                      color: const Color(0xCC66728A),
                      width: 1.1,
                    ),
                    boxShadow: const [
                      BoxShadow(color: Color(0x66000000), blurRadius: 22),
                    ],
                  ),
                  child: Column(
                    children: [
                      _GameHeader(
                        level: game.currentLevel,
                        moves: game.moveCount,
                        best: _previousBest,
                        coins: storedCoins,
                        flow: flow,
                        tempo: tempo,
                        paused: _isPaused,
                        onPause: _togglePause,
                        onSettings: _openSettings,
                      ),
                      if (definition.hiddenTubeId != null ||
                          definition.frozenTubeId != null ||
                          definition.lockedTubeId != null ||
                          definition.heatedTubeId != null ||
                          definition.portalTubeA != null ||
                          definition.valveTubeId != null ||
                          definition.bombTubeId != null ||
                          definition.movingEveryMoves > 0 ||
                          definition.hasNarrowTube ||
                          definition.mixRecipes.isNotEmpty ||
                          definition.isBoss)
                        _MechanicStrip(
                          definition: definition,
                          frozenActive: frozenTubeIds.isNotEmpty,
                          lockedActive: lockedTubeId != null,
                          heatUnitsRemaining: heatUnitsRemaining,
                          bombRemaining: bombRemaining,
                          moves: game.moveCount,
                          onMechanicTap: (kind) =>
                              unawaited(_openMechanicTip(kind)),
                        ),
                      Expanded(
                        child: LayoutBuilder(
                          builder: (context, constraints) =>
                              SingleChildScrollView(
                                padding: const EdgeInsets.fromLTRB(
                                  12,
                                  2,
                                  12,
                                  5,
                                ),
                                child: ConstrainedBox(
                                  constraints: BoxConstraints(
                                    minHeight: constraints.maxHeight - 8,
                                  ),
                                  child: Center(
                                    child: ConstrainedBox(
                                      constraints: const BoxConstraints(
                                        maxWidth: 560,
                                      ),
                                      child: TubeBoard(
                                        gameState: game,
                                        animation: _pourController,
                                        shakeAnimation: _shakeController,
                                        celebrationAnimation:
                                            _celebrationController,
                                        ambientAnimation: _ambientController,
                                        celebratingTubeId: _celebratingTubeId,
                                        invalidTubeId: _invalidTubeId,
                                        frozenTubeIds: frozenTubeIds,
                                        lockedTubeId: lockedTubeId,
                                        hiddenTubeId: definition.hiddenTubeId,
                                        heatedTubeId: definition.heatedTubeId,
                                        portalTubeA: definition.portalTubeA,
                                        portalTubeB: definition.portalTubeB,
                                        valveTubeId: definition.valveTubeId,
                                        bombTubeId: definition.bombTubeId,
                                        bombRemaining: bombRemaining,
                                        movingLayoutShift: movingLayoutShift,
                                        bottomTubeCount:
                                            2 +
                                            (definition.heatedTubeId == null
                                                ? 0
                                                : 1) +
                                            (definition.valveTubeId == null
                                                ? 0
                                                : 1),
                                        pendingPour: _pendingPour,
                                        accessibilityPatterns:
                                            _accessibilityPatterns,
                                        reducedMotion: _reducedMotion,
                                        onTubeTap: _onTubeTap,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(9, 0, 9, 9),
                        child: GlassPanel(
                          padding: const EdgeInsets.fromLTRB(5, 8, 5, 7),
                          borderRadius: BorderRadius.circular(20),
                          child: Column(
                            children: [
                              GameControls(
                                enabled: enabled,
                                canUndo: game.history.isNotEmpty,
                                canAddTube: !game.extraTubeUsed,
                                hintEnabled:
                                    game.hintUses < GameEconomy.maxHintsPerLevel,
                                undoFree: game.freeUndosRemaining > 0,
                                hintFree:
                                    (rewardProgress?.freeHintTokens ?? 0) > 0,
                                undoCostCoins: GameEconomy.undoCoinCost,
                                hintCostCoins: GameEconomy.hintCoinCost,
                                addTubeCount: game.extraTubeUsed ? 0 : 1,
                                onUndo: () => unawaited(_undo()),
                                onRestart: () => unawaited(_restartLevel()),
                                onHint: () => unawaited(_useHint()),
                                onAddTube: ref
                                    .read(gameControllerProvider.notifier)
                                    .addExtraTube,
                              ),
                              const SizedBox(height: 7),
                              Text(
                                context.l10n.headerMeta(game.parMoves),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: const TextStyle(
                                  color: Color(0xFF8593AA),
                                  fontSize: 10,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned.fill(
                child: IgnorePointer(
                  child: _ComboBurst(
                    animation: _comboController,
                    combo: _burstCombo,
                  ),
                ),
              ),
              if (_mixedColor != null)
                Positioned.fill(
                  child: IgnorePointer(
                    child: _ColorMixBurst(
                      animation: _mixController,
                      color: _mixedColor!,
                    ),
                  ),
                ),
              if (_evaporatedColor != null)
                Positioned.fill(
                  child: IgnorePointer(
                    child: _HeatBurst(
                      animation: _heatController,
                      color: _evaporatedColor!,
                    ),
                  ),
                ),
              Positioned.fill(
                child: IgnorePointer(
                  child: _SpecialBurst(
                    animation: _specialController,
                    message: _specialMessage,
                    color: _specialColor,
                  ),
                ),
              ),
              if (game.status == GameStatus.completed && _levelResult != null)
                LevelCompleteOverlay(
                  level: game.currentLevel,
                  moves: game.moveCount,
                  parMoves: game.parMoves,
                  result: _levelResult,
                  onDoubleReward: _doubleReward,
                  onNext: () => unawaited(_nextLevel(game.currentLevel)),
                  onLevels: () => Navigator.of(context).pop(),
                ),
              if (game.status == GameStatus.failed)
                _TimeUpOverlay(
                  onRetry: () => unawaited(_restartLevel()),
                  onSkipWithAd: GameEconomy.canOfferLevelSkip(
                    level: game.currentLevel,
                    maxLevel: CampaignLevels.all.length,
                    failureCount: progress.failureCountFor(game.currentLevel),
                    alreadySkipped: progress.hasUsedLevelSkip(
                      game.currentLevel,
                    ),
                  )
                      ? () => unawaited(_skipLevelWithAd())
                      : null,
                  reason: ref
                      .read(gameControllerProvider.notifier)
                      .failureReason,
                  atDebtFloor: rewardProgress?.isAtCoinDebtFloor ?? false,
                ),
              if (_isPaused &&
                  !_showingMechanicIntro &&
                  game.status != GameStatus.completed &&
                  game.status != GameStatus.failed)
                _PauseOverlay(
                  onResume: _resumeGame,
                  onSettings: _openSettings,
                  onLevels: _leaveForLevels,
                  onHome: _leaveForHome,
                ),
            ],
          ),
        ),
      ),
    );
  }
}

class _GameHeader extends StatelessWidget {
  const _GameHeader({
    required this.level,
    required this.moves,
    required this.best,
    required this.coins,
    required this.flow,
    required this.tempo,
    required this.paused,
    required this.onPause,
    required this.onSettings,
  });

  final int level;
  final int moves;
  final int? best;
  final int coins;
  final FlowComboState flow;
  final TempoState tempo;
  final bool paused;
  final VoidCallback onPause;
  final VoidCallback onSettings;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return Padding(
    padding: const EdgeInsets.fromLTRB(10, 9, 10, 4),
    child: GlassPanel(
      padding: const EdgeInsets.fromLTRB(9, 8, 9, 9),
      borderRadius: BorderRadius.circular(19),
      child: Column(
        children: [
          Row(
            children: [
              PremiumCircleButton(
                icon: paused ? Icons.play_arrow_rounded : Icons.pause_rounded,
                tooltip: paused ? l10n.resumeTooltip : l10n.pauseTooltip,
                onPressed: onPause,
              ),
              const Spacer(),
              Column(
                children: [
                  Text(
                    l10n.levelNumber(level),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w900,
                      letterSpacing: -.3,
                    ),
                  ),
                  const SizedBox(height: 2),
                  _TempoBadge(tempo: tempo, paused: paused),
                ],
              ),
              const Spacer(),
              const Icon(
                Icons.monetization_on_rounded,
                color: Color(0xFFFFC13A),
                size: 17,
              ),
              const SizedBox(width: 3),
              Text(
                '$coins',
                style: TextStyle(
                  fontSize: 11,
                  fontWeight: FontWeight.w900,
                  color: coins < 0 ? AppColors.coral : AppColors.text,
                ),
              ),
              const SizedBox(width: 7),
              PremiumCircleButton(
                icon: Icons.settings_rounded,
                tooltip: l10n.settingsTooltip,
                onPressed: onSettings,
              ),
            ],
          ),
          const SizedBox(height: 9),
          Row(
            children: [
              Expanded(
                child: _HeaderStat(
                  label: l10n.movesLabel,
                  value: '$moves',
                  valueKey: const ValueKey('moves-counter'),
                ),
              ),
              Expanded(
                child: _HeaderStat(
                  label: l10n.bestLabel,
                  value: '${best ?? '—'}',
                ),
              ),
              Expanded(flex: 2, child: FlowComboBar(flow: flow, compact: true)),
            ],
          ),
        ],
      ),
    ),
  );
  }
}

class _TempoBadge extends StatelessWidget {
  const _TempoBadge({required this.tempo, required this.paused});

  final TempoState tempo;
  final bool paused;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final color = !tempo.enabled
        ? AppColors.mint
        : tempo.isUrgent
        ? AppColors.coral
        : AppColors.cyan;
    final label = paused
        ? l10n.pause.toUpperCase()
        : tempo.enabled
        ? l10n.tempoBadge(tempo.difficulty.label(l10n), tempo.secondsRemaining,
          )
        : l10n.easyRelaxed;
    return AnimatedContainer(
      duration: const Duration(milliseconds: 220),
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
      decoration: BoxDecoration(
        color: color.withValues(alpha: .13),
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: color.withValues(alpha: .72)),
        boxShadow: tempo.isUrgent
            ? [BoxShadow(color: color.withValues(alpha: .35), blurRadius: 10)]
            : const [],
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            paused
                ? Icons.pause_rounded
                : tempo.enabled
                ? Icons.timer_rounded
                : Icons.spa_rounded,
            color: color,
            size: 11,
          ),
          const SizedBox(width: 3),
          Text(
            label,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              color: color,
              fontSize: 8,
              fontWeight: FontWeight.w900,
              letterSpacing: .35,
            ),
          ),
        ],
      ),
    );
  }
}

class _MechanicStrip extends StatelessWidget {
  const _MechanicStrip({
    required this.definition,
    required this.frozenActive,
    required this.lockedActive,
    required this.heatUnitsRemaining,
    required this.bombRemaining,
    required this.moves,
    required this.onMechanicTap,
  });

  final LevelDefinition definition;
  final bool frozenActive;
  final bool lockedActive;
  final int heatUnitsRemaining;
  final int? bombRemaining;
  final int moves;
  final ValueChanged<MechanicKind> onMechanicTap;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return SizedBox(
    height: 42,
    child: ListView(
      scrollDirection: Axis.horizontal,
      padding: const EdgeInsets.fromLTRB(14, 2, 14, 5),
      children: [
        if (definition.isBoss)
          _MechanicChip(
            icon: Icons.local_fire_department_rounded,
            label: l10n.bossMovesLeft(
              ((definition.moveLimit ?? moves) - moves).clamp(0, 99),
            ),
            color: AppColors.coral,
            onTap: () => onMechanicTap(MechanicKind.boss),
          ),
        if (definition.hiddenTubeId != null)
          _MechanicChip(
            icon: Icons.visibility_off_rounded,
            label: l10n.hiddenLiquid,
            color: AppColors.violet,
            onTap: () => onMechanicTap(MechanicKind.hidden),
          ),
        if (definition.frozenTubeId != null)
          _MechanicChip(
            icon: frozenActive
                ? Icons.ac_unit_rounded
                : Icons.water_drop_rounded,
            label: frozenActive ? l10n.frozenTube : l10n.iceCleared,
            color: AppColors.cyan,
            onTap: () => onMechanicTap(MechanicKind.frozen),
          ),
        if (definition.lockedTubeId != null)
          _MechanicChip(
            icon: lockedActive ? Icons.lock_rounded : Icons.lock_open_rounded,
            label: lockedActive ? l10n.lockedTube : l10n.lockOpened,
            color: const Color(0xFFFFC34A),
            onTap: () => onMechanicTap(MechanicKind.locked),
          ),
        if (definition.heatedTubeId != null)
          _MechanicChip(
            icon: Icons.local_fire_department_rounded,
            label: definition.showHeatGuide
                ? l10n.heatBurn(heatUnitsRemaining)
                : l10n.heatTube(heatUnitsRemaining),
            color: const Color(0xFFFF7A1A),
            onTap: () => onMechanicTap(MechanicKind.heated),
          ),
        if (definition.portalTubeA != null)
          _MechanicChip(
            icon: Icons.sync_alt_rounded,
            label: l10n.portalPair,
            color: AppColors.cyan,
            onTap: () => onMechanicTap(MechanicKind.portal),
          ),
        if (definition.valveTubeId != null)
          _MechanicChip(
            icon: Icons.arrow_downward_rounded,
            label: l10n.oneWayValve,
            color: const Color(0xFFFFC34A),
            onTap: () => onMechanicTap(MechanicKind.valve),
          ),
        if (definition.bombTubeId != null)
          _MechanicChip(
            icon: Icons.timer_rounded,
            label: l10n.bombCountdown(bombRemaining ?? 0),
            color: AppColors.coral,
            onTap: () => onMechanicTap(MechanicKind.bomb),
          ),
        if (definition.movingEveryMoves > 0)
          _MechanicChip(
            icon: Icons.swap_horiz_rounded,
            label: l10n.movingEvery(definition.movingEveryMoves),
            color: AppColors.violet,
            onTap: () => onMechanicTap(MechanicKind.moving),
          ),
        if (definition.hasNarrowTube)
          _MechanicChip(
            icon: Icons.compress_rounded,
            label: l10n.narrowTubeCap2,
            color: const Color(0xFFFF8A5B),
            onTap: () => onMechanicTap(MechanicKind.narrow),
          ),
        if (definition.mixRecipes.isNotEmpty && !definition.showMixGuide)
          _MechanicChip(
            icon: Icons.science_rounded,
            label: l10n.hiddenMix,
            color: AppColors.mint,
            onTap: () => onMechanicTap(MechanicKind.mix),
          ),
        if (definition.showMixGuide)
          for (final recipe in definition.mixRecipes)
            _RecipeEquation(
              recipe: recipe,
              onTap: () => onMechanicTap(MechanicKind.mix),
            ),
      ],
    ),
  );
  }
}

class _MechanicChip extends StatelessWidget {
  const _MechanicChip({
    required this.icon,
    required this.label,
    required this.color,
    this.onTap,
  });

  final IconData icon;
  final String label;
  final Color color;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) => Padding(
    padding: const EdgeInsets.only(right: 6),
    child: Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(12),
        child: Ink(
          padding: const EdgeInsets.symmetric(horizontal: 9, vertical: 5),
          decoration: BoxDecoration(
            color: color.withValues(alpha: .12),
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: color.withValues(alpha: .55)),
            boxShadow: [
              BoxShadow(color: color.withValues(alpha: .16), blurRadius: 8),
            ],
          ),
          child: Row(
            children: [
              Icon(icon, color: color, size: 14),
              const SizedBox(width: 4),
              Text(
                label,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  color: color,
                  fontSize: 9,
                  fontWeight: FontWeight.w900,
                  letterSpacing: .35,
                ),
              ),
            ],
          ),
        ),
      ),
    ),
  );
}

class _RecipeEquation extends StatelessWidget {
  const _RecipeEquation({required this.recipe, this.onTap});

  final ColorMixRecipe recipe;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) => Padding(
    padding: const EdgeInsets.only(right: 6),
    child: Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(12),
        child: Ink(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
          decoration: BoxDecoration(
            color: const Color(0x66102038),
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: AppColors.mint.withValues(alpha: .55)),
          ),
          child: Row(
            children: [
              _ColorDot(color: recipe.first.color),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 3),
                child: Text('+', style: TextStyle(fontWeight: FontWeight.w900)),
              ),
              _ColorDot(color: recipe.second.color),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 3),
                child: Text('=', style: TextStyle(fontWeight: FontWeight.w900)),
              ),
              _ColorDot(color: recipe.result.color, glow: true),
            ],
          ),
        ),
      ),
    ),
  );
}

class _ColorDot extends StatelessWidget {
  const _ColorDot({required this.color, this.glow = false});

  final Color color;
  final bool glow;

  @override
  Widget build(BuildContext context) => Container(
    width: 14,
    height: 14,
    decoration: BoxDecoration(
      color: color,
      shape: BoxShape.circle,
      border: Border.all(color: Colors.white70, width: .7),
      boxShadow: glow
          ? [BoxShadow(color: color.withValues(alpha: .8), blurRadius: 8)]
          : const [],
    ),
  );
}

class _HeaderStat extends StatelessWidget {
  const _HeaderStat({required this.label, required this.value, this.valueKey});

  final String label;
  final String value;
  final Key? valueKey;

  @override
  Widget build(BuildContext context) => Padding(
    padding: const EdgeInsets.only(right: 7),
    child: Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          '$label: ',
          style: const TextStyle(
            color: Color(0xFFA9B3C4),
            fontSize: 10,
            fontWeight: FontWeight.w700,
          ),
        ),
        Text(
          value,
          key: valueKey,
          style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w900),
        ),
      ],
    ),
  );
}

class _PauseOverlay extends StatelessWidget {
  const _PauseOverlay({
    required this.onResume,
    required this.onSettings,
    required this.onLevels,
    required this.onHome,
  });

  final VoidCallback onResume;
  final VoidCallback onSettings;
  final VoidCallback onLevels;
  final VoidCallback onHome;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return Positioned.fill(
    child: ColoredBox(
      color: const Color(0xD1050918),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 380),
            child: GlassPanel(
              padding: const EdgeInsets.fromLTRB(20, 22, 20, 18),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    width: 74,
                    height: 74,
                    decoration: const BoxDecoration(
                      color: Color(0x3322D3EE),
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(color: Color(0x8822D3EE), blurRadius: 26),
                      ],
                    ),
                    child: IconButton(
                      tooltip: l10n.resumeTooltip,
                      onPressed: onResume,
                      icon: const Icon(
                        Icons.play_arrow_rounded,
                        color: AppColors.cyan,
                        size: 48,
                      ),
                    ),
                  ),
                  const SizedBox(height: 13),
                  Text(
                    l10n.pausedTitle,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      fontSize: 21,
                      fontWeight: FontWeight.w900,
                      letterSpacing: .7,
                    ),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    l10n.pausedBody,
                    softWrap: true,
                    textAlign: TextAlign.center,
                    style: const TextStyle(color: AppColors.textMuted, fontSize: 12),
                  ),
                  const SizedBox(height: 17),
                  SizedBox(
                    width: double.infinity,
                    height: 48,
                    child: FilledButton.icon(
                      onPressed: onResume,
                      icon: const Icon(Icons.play_arrow_rounded),
                      label: FittedBox(
                        fit: BoxFit.scaleDown,
                        child: Text(
                          l10n.resumeCta,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      Expanded(
                        child: _PauseMenuButton(
                          icon: Icons.settings_rounded,
                          label: l10n.settings,
                          onTap: onSettings,
                        ),
                      ),
                      const SizedBox(width: 8),
                      Expanded(
                        child: _PauseMenuButton(
                          icon: Icons.map_rounded,
                          label: l10n.levels,
                          onTap: onLevels,
                        ),
                      ),
                      const SizedBox(width: 8),
                      Expanded(
                        child: _PauseMenuButton(
                          icon: Icons.home_rounded,
                          label: l10n.home,
                          onTap: onHome,
                        ),
                      ),
                    ],
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

class _PauseMenuButton extends StatelessWidget {
  const _PauseMenuButton({
    required this.icon,
    required this.label,
    required this.onTap,
  });

  final IconData icon;
  final String label;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) => OutlinedButton(
    onPressed: onTap,
    style: OutlinedButton.styleFrom(
      padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 10),
      foregroundColor: AppColors.text,
      side: const BorderSide(color: Color(0x664F8EAD)),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(13)),
    ),
    child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(icon, size: 19, color: AppColors.cyan),
        const SizedBox(height: 3),
        FittedBox(
          child: Text(
            label,
            style: const TextStyle(fontSize: 9, fontWeight: FontWeight.w800),
          ),
        ),
      ],
    ),
  );
}

class _TimeUpOverlay extends StatelessWidget {
  const _TimeUpOverlay({
    required this.onRetry,
    required this.reason,
    this.onSkipWithAd,
    this.atDebtFloor = false,
  });

  final VoidCallback onRetry;
  final VoidCallback? onSkipWithAd;
  final GameFailureReason? reason;
  final bool atDebtFloor;

  String _title(AppLocalizations l10n) => switch (reason) {
    GameFailureReason.time => l10n.timeUp,
    GameFailureReason.bomb => l10n.bombExploded,
    _ => l10n.moveLimitReached,
  };

  String _description(AppLocalizations l10n) {
    final penalty = l10n.failurePenaltyLine(
      GameEconomy.failurePenaltyCoins,
      GameEconomy.coinDebtFloor,
    );
    final body = switch (reason) {
      GameFailureReason.time => l10n.tryEasyModeHint,
      GameFailureReason.bomb => l10n.bombFailHint,
      _ => l10n.bossFailHint,
    };
    if (atDebtFloor) {
      return '$penalty\n${l10n.debtLimitRetryHint}\n$body';
    }
    return '$penalty\n$body';
  }

  IconData get _icon => switch (reason) {
    GameFailureReason.time => Icons.timer_off_rounded,
    GameFailureReason.bomb => Icons.warning_amber_rounded,
    _ => Icons.flag_rounded,
  };

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final showSkip = onSkipWithAd != null;
    return Positioned.fill(
      child: ColoredBox(
        color: const Color(0xC9040814),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(26),
            child: GlassPanel(
              padding: const EdgeInsets.all(24),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    width: 68,
                    height: 68,
                    decoration: const BoxDecoration(
                      color: Color(0x33FF315B),
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(color: Color(0x88FF315B), blurRadius: 24),
                      ],
                    ),
                    child: Icon(_icon, color: AppColors.coral, size: 38),
                  ),
                  const SizedBox(height: 15),
                  Text(
                    _title(l10n),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      color: AppColors.coral,
                      fontSize: 24,
                      fontWeight: FontWeight.w900,
                      letterSpacing: .8,
                    ),
                  ),
                  const SizedBox(height: 6),
                  Text(
                    _description(l10n),
                    textAlign: TextAlign.center,
                    softWrap: true,
                    style: const TextStyle(
                      color: AppColors.textMuted,
                      height: 1.35,
                    ),
                  ),
                  if (showSkip) ...[
                    const SizedBox(height: 12),
                    Text(
                      l10n.skipLevelOfferBody,
                      textAlign: TextAlign.center,
                      softWrap: true,
                      style: const TextStyle(
                        color: AppColors.text,
                        fontWeight: FontWeight.w700,
                        height: 1.35,
                      ),
                    ),
                  ],
                  const SizedBox(height: 18),
                  SizedBox(
                    width: double.infinity,
                    child: FilledButton.icon(
                      onPressed: onRetry,
                      icon: Icon(
                        atDebtFloor
                            ? Icons.ondemand_video_rounded
                            : Icons.refresh_rounded,
                      ),
                      label: FittedBox(
                        fit: BoxFit.scaleDown,
                        child: Text(
                          atDebtFloor ? l10n.retryWithAd : l10n.retryAgain,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ),
                  ),
                  if (showSkip) ...[
                    const SizedBox(height: 10),
                    SizedBox(
                      width: double.infinity,
                      child: OutlinedButton.icon(
                        onPressed: onSkipWithAd,
                        icon: const Icon(Icons.skip_next_rounded),
                        style: OutlinedButton.styleFrom(
                          foregroundColor: const Color(0xFFFFC34A),
                          side: const BorderSide(color: Color(0x88FFC34A)),
                          padding: const EdgeInsets.symmetric(vertical: 12),
                        ),
                        label: FittedBox(
                          fit: BoxFit.scaleDown,
                          child: Text(
                            l10n.skipLevelCta,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: const TextStyle(fontWeight: FontWeight.w900),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      l10n.skipLevelNote,
                      textAlign: TextAlign.center,
                      softWrap: true,
                      style: const TextStyle(
                        color: Color(0xFF6F7C96),
                        fontSize: 11,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _HeatBurst extends StatelessWidget {
  const _HeatBurst({required this.animation, required this.color});

  final Animation<double> animation;
  final LiquidColorId color;

  @override
  Widget build(BuildContext context) => AnimatedBuilder(
    animation: animation,
    builder: (context, child) {
      final l10n = context.l10n;
      final progress = animation.value;
      final fade = math.sin(progress * math.pi).clamp(0.0, 1.0);
      return Center(
        child: Opacity(
          opacity: fade,
          child: Transform.translate(
            offset: Offset(0, -progress * 46),
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 11),
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  colors: [Color(0xFFFF3D00), Color(0xFFFFA31A)],
                ),
                borderRadius: BorderRadius.circular(22),
                border: Border.all(color: Colors.white, width: 1.2),
                boxShadow: const [
                  BoxShadow(
                    color: Color(0xCCFF4A00),
                    blurRadius: 34,
                    spreadRadius: 4,
                  ),
                ],
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Icon(Icons.local_fire_department_rounded, size: 27),
                  const SizedBox(width: 7),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        l10n.vaporized,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w900,
                          letterSpacing: .7,
                        ),
                      ),
                      Text(
                        l10n.colorClearedBonus(color.localizedName(l10n).toUpperCase(),
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                          fontSize: 9,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      );
    },
  );
}

class _ColorMixBurst extends StatelessWidget {
  const _ColorMixBurst({required this.animation, required this.color});

  final Animation<double> animation;
  final LiquidColorId color;

  @override
  Widget build(BuildContext context) => AnimatedBuilder(
    animation: animation,
    builder: (context, child) {
      final l10n = context.l10n;
      final progress = animation.value;
      final pulse = math.sin(progress * math.pi).clamp(0.0, 1.0);
      return Center(
        child: Opacity(
          opacity: pulse,
          child: Transform.scale(
            scale: .68 + progress * .48,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 13),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    color.color.withValues(alpha: .96),
                    color.style.highlight,
                  ],
                ),
                borderRadius: BorderRadius.circular(24),
                border: Border.all(color: Colors.white, width: 1.3),
                boxShadow: [
                  BoxShadow(
                    color: color.color.withValues(alpha: .85),
                    blurRadius: 36,
                    spreadRadius: 5,
                  ),
                ],
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    l10n.newColorFormed,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w900,
                      letterSpacing: .7,
                    ),
                  ),
                  const SizedBox(height: 2),
                  Text(
                    l10n.colorBonusSeconds(color.localizedName(l10n).toUpperCase(),
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      fontSize: 11,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      );
    },
  );
}

class _ComboBurst extends StatelessWidget {
  const _ComboBurst({required this.animation, required this.combo});

  final Animation<double> animation;
  final int combo;

  @override
  Widget build(BuildContext context) => AnimatedBuilder(
    animation: animation,
    builder: (context, child) {
      final l10n = context.l10n;
      final pulse = math.sin(math.pi * animation.value).clamp(0.0, 1.0);
      return Center(
        child: Opacity(
          opacity: pulse,
          child: Transform.scale(
            scale: .72 + animation.value * .5,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 9),
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  colors: [AppColors.cyan, AppColors.violet],
                ),
                borderRadius: BorderRadius.circular(28),
                boxShadow: const [
                  BoxShadow(color: Color(0x995A70FF), blurRadius: 28),
                ],
              ),
              child: Text(
                combo >= 6
                    ? l10n.legendaryFlow
                    : l10n.flowMultiplier(combo),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 17,
                  fontWeight: FontWeight.w900,
                  letterSpacing: .7,
                ),
              ),
            ),
          ),
        ),
      );
    },
  );
}

class _SpecialBurst extends StatelessWidget {
  const _SpecialBurst({
    required this.animation,
    required this.message,
    required this.color,
  });

  final Animation<double> animation;
  final String message;
  final Color color;

  @override
  Widget build(BuildContext context) => AnimatedBuilder(
    animation: animation,
    builder: (context, child) {
      if (message.isEmpty) return const SizedBox.shrink();
      final pulse = math.sin(math.pi * animation.value).clamp(0.0, 1.0);
      return Align(
        alignment: const Alignment(0, -.2),
        child: Opacity(
          opacity: pulse,
          child: Transform.scale(
            scale: .78 + animation.value * .28,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 9),
              decoration: BoxDecoration(
                color: const Color(0xEE071227),
                borderRadius: BorderRadius.circular(22),
                border: Border.all(color: color, width: 1.3),
                boxShadow: [
                  BoxShadow(
                    color: color.withValues(alpha: .8),
                    blurRadius: 30,
                    spreadRadius: 3,
                  ),
                ],
              ),
              child: Text(
                message,
                style: TextStyle(
                  color: color,
                  fontSize: 15,
                  fontWeight: FontWeight.w900,
                  letterSpacing: .7,
                ),
              ),
            ),
          ),
        ),
      );
    },
  );
}
