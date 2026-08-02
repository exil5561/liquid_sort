// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get appTitle => 'Liquid Sort Puzzle';

  @override
  String get brandName => 'Liquid Sort';

  @override
  String get brandPuzzle => 'PUZZLE';

  @override
  String get splashTagline => 'Sort the colors. Clear your mind.';

  @override
  String get back => 'Back';

  @override
  String get cancel => 'Cancel';

  @override
  String get play => 'PLAY';

  @override
  String get settings => 'Settings';

  @override
  String get home => 'Home';

  @override
  String get levels => 'Levels';

  @override
  String get collection => 'Collection';

  @override
  String get achievements => 'Achievements';

  @override
  String get continueLabel => 'Continue';

  @override
  String get pause => 'Pause';

  @override
  String get close => 'Close';

  @override
  String get free => 'Free';

  @override
  String get coin => 'Coin';

  @override
  String get coins => 'Coins';

  @override
  String get secondsShort => 's';

  @override
  String get moves => 'Moves';

  @override
  String get best => 'Best';

  @override
  String get par => 'Par';

  @override
  String get locked => 'Locked';

  @override
  String get ad => 'AD';

  @override
  String get watchAd => 'Watch ad';

  @override
  String get claiming => 'Claiming...';

  @override
  String get homeTagline => 'Sort smart, mix colors!';

  @override
  String get progressAndAchievements => 'PROGRESS & ACHIEVEMENTS';

  @override
  String get progressTapHint => 'Tap: stats and badges';

  @override
  String get dailyReward => 'Daily Reward';

  @override
  String get rewardReady => 'Reward ready';

  @override
  String get comeTomorrow => 'Come tomorrow';

  @override
  String get collectionSubtitle => 'Browse themes';

  @override
  String get premiumThemes => 'PREMIUM THEMES';

  @override
  String get premiumThemesBody =>
      'Classic, Galaxy, Ocean, Neon and Golden Age themes unlock here.';

  @override
  String get playCta => 'PLAY';

  @override
  String dailyClaimSnack(int coins, String hintSuffix) {
    final intl.NumberFormat coinsNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String coinsString = coinsNumberFormat.format(coins);

    return '+$coinsString coins$hintSuffix';
  }

  @override
  String freeHintSuffix(int count) {
    final intl.NumberFormat countNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String countString = countNumberFormat.format(count);

    return ' + $countString free hint';
  }

  @override
  String get levelMapTitle => 'LEVEL MAP';

  @override
  String levelsCompletedProgress(int completed, int total) {
    final intl.NumberFormat completedNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String completedString = completedNumberFormat.format(completed);
    final intl.NumberFormat totalNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String totalString = totalNumberFormat.format(total);

    return '$completedString/$totalString levels completed';
  }

  @override
  String get newExperimentsBanner =>
      'NEW EXPERIMENTS\nPORTAL • BOMB • VALVE • REACTOR';

  @override
  String get settingsTitle => 'SETTINGS';

  @override
  String get settingsSubtitleAudio => 'Sound and haptics controls';

  @override
  String get settingsSubtitleVisual => 'Colors, patterns and animations';

  @override
  String get settingsSubtitleGeneral => 'Difficulty and general preferences';

  @override
  String get sectionAudioFeedback => 'SOUND & FEEDBACK';

  @override
  String get soundEffects => 'Sound effects';

  @override
  String get soundEffectsSubtitle => 'Select, pour and success sounds';

  @override
  String get backgroundMusic => 'Background music';

  @override
  String get backgroundMusicSubtitle => 'Calm cosmic ambient music';

  @override
  String get haptics => 'Haptics';

  @override
  String get hapticsSubtitle => 'Light feedback on taps';

  @override
  String get sectionVisual => 'VISUAL PREFERENCES';

  @override
  String get neonPalette => 'Neon liquid palette';

  @override
  String get neonPaletteSubtitle => 'Vivid neon colors used in the game';

  @override
  String get colorAccessibility => 'Color accessibility';

  @override
  String get colorAccessibilitySubtitle => 'Adds subtle patterns to liquids';

  @override
  String get reducedAnimations => 'Reduced animations';

  @override
  String get reducedAnimationsSubtitle => 'Speeds up pour motions';

  @override
  String get sectionDifficulty => 'DIFFICULTY & TIME PRESSURE';

  @override
  String get offlineProgress => 'Offline progress';

  @override
  String get offlineProgressBody =>
      'Your levels and settings are saved safely on this device.';

  @override
  String settingsVersion(String version) {
    return 'Liquid Sort Puzzle  •  v$version';
  }

  @override
  String get tabAudio => 'Audio';

  @override
  String get tabVisual => 'Visual';

  @override
  String get tabGeneral => 'Settings';

  @override
  String get language => 'Language';

  @override
  String get languageSubtitle => 'Choose app language';

  @override
  String get languageSystem => 'System default';

  @override
  String get languageSystemSubtitle => 'Match your phone or tablet language';

  @override
  String get difficultyEasy => 'Easy';

  @override
  String get difficultyNormal => 'Normal';

  @override
  String get difficultyHard => 'Hard';

  @override
  String get difficultyEasyDesc =>
      'No time pressure • fewer coins • more interstitial ads';

  @override
  String get difficultyNormalDesc => 'Moderate timer, light pressure';

  @override
  String get difficultyHardDesc => 'Very short timer, -5s on mistakes';

  @override
  String get dailyRewardTitle => 'DAILY REWARD';

  @override
  String get dailyRewardClaimBody =>
      'Claim today\'s gift. Come back daily to grow the reward.';

  @override
  String get dailyRewardClaimedBody =>
      'You already claimed today. Come back tomorrow.';

  @override
  String dailyStreak(int streak) {
    final intl.NumberFormat streakNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String streakString = streakNumberFormat.format(streak);

    return 'Streak: $streakString days';
  }

  @override
  String dayChip(int day) {
    final intl.NumberFormat dayNumberFormat = intl.NumberFormat.decimalPattern(
      localeName,
    );
    final String dayString = dayNumberFormat.format(day);

    return 'D$dayString';
  }

  @override
  String get plusHint => '+hint';

  @override
  String get claimDailyReward => 'Claim today\'s reward';

  @override
  String get comeAgainTomorrow => 'Come again tomorrow';

  @override
  String get achievementsTitle => 'ACHIEVEMENTS';

  @override
  String get achGreetingEmpty =>
      'You\'re set. Finish your first level and badges will start stacking here.';

  @override
  String get achGreetingFlow =>
      'Your flow is on fire — you\'ve got this game\'s rhythm.';

  @override
  String get achGreetingStars =>
      'Your star collection shines. Keep going, legend.';

  @override
  String get achGreetingVeteran => 'Nice pace. The lab is matching your tempo.';

  @override
  String get achGreetingProgress =>
      'Solid progress. Every clean level makes you sharper.';

  @override
  String get achGreetingStarter =>
      'Strong start. A few more levels and badges will pour in.';

  @override
  String get statLevel => 'Level';

  @override
  String get statStars => 'Stars';

  @override
  String get statCoins => 'Coins';

  @override
  String get statFlow => 'Flow';

  @override
  String get statUnlocked => 'Unlocked';

  @override
  String get achievementLocked => 'Locked';

  @override
  String get achievementPerfectSort => 'Perfect Sort';

  @override
  String get achievementPerfectSortDesc =>
      'Finish within par with no assistance';

  @override
  String get achievementUnderPar => 'Under Par';

  @override
  String get achievementUnderParDesc => 'Do not exceed the target moves';

  @override
  String get achievementNoUndo => 'No Undo';

  @override
  String get achievementNoUndoDesc => 'Finish without using undo';

  @override
  String get achievementNoHint => 'No Hints';

  @override
  String get achievementNoHintDesc => 'Solve without using hints';

  @override
  String get achievementFlowMaster => 'Flow Master';

  @override
  String get achievementFlowMasterDesc => 'Reach Flow x5 in a level';

  @override
  String get achievementNewRecord => 'New Record';

  @override
  String get achievementNewRecordDesc => 'Beat your best move count';

  @override
  String get achievementFirstTry => 'First Try';

  @override
  String get achievementFirstTryDesc => 'Complete without restarting';

  @override
  String get achievementNoExtraTube => 'No Extra Tube';

  @override
  String get achievementNoExtraTubeDesc => 'Finish without adding a tube';

  @override
  String get undo => 'Undo';

  @override
  String get restart => 'Restart';

  @override
  String get hint => 'Hint';

  @override
  String get addTube => 'Add tube';

  @override
  String get perfect => 'PERFECT!';

  @override
  String levelCompleted(int level) {
    final intl.NumberFormat levelNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String levelString = levelNumberFormat.format(level);

    return 'Level $levelString complete';
  }

  @override
  String movesAndPar(int moves, int par) {
    final intl.NumberFormat movesNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String movesString = movesNumberFormat.format(moves);
    final intl.NumberFormat parNumberFormat = intl.NumberFormat.decimalPattern(
      localeName,
    );
    final String parString = parNumberFormat.format(par);

    return '$movesString moves  •  Par $parString';
  }

  @override
  String get newRecordAchievements => 'NEW RECORD • ACHIEVEMENTS';

  @override
  String get achievementsHeader => 'ACHIEVEMENTS';

  @override
  String assistancePenalty(int amount) {
    final intl.NumberFormat amountNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String amountString = amountNumberFormat.format(amount);

    return 'Hint penalty: -$amountString coins';
  }

  @override
  String get doubleReward => 'DOUBLE REWARD';

  @override
  String get goToLevels => 'LEVELS';

  @override
  String get continueNext => 'CONTINUE';

  @override
  String get backToLevelSelect => 'Back to level select';

  @override
  String get bestLabel => 'Best';

  @override
  String get flowCombo => 'Flow Combo';

  @override
  String get extraTube => 'Extra tube';

  @override
  String get fullReward => 'Full reward';

  @override
  String get halfReward => 'Half reward';

  @override
  String get quarterReward => 'Quarter reward';

  @override
  String starRewardLabel(int stars, String tone, int percent) {
    final intl.NumberFormat starsNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String starsString = starsNumberFormat.format(stars);
    final intl.NumberFormat percentNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String percentString = percentNumberFormat.format(percent);

    return '$starsString★ • $tone ($percentString%)';
  }

  @override
  String get newRule => 'NEW RULE';

  @override
  String get gotItStart => 'GOT IT, START';

  @override
  String get firstTimeTipOnly => 'Shown only the first time';

  @override
  String get mechanicBasicsTitle => 'HOW TO PLAY';

  @override
  String get mechanicBasicsHeadline => 'Pick tubes, pour liquid';

  @override
  String get mechanicBasicsBody =>
      'Tap a tube to select its top color. Then tap a target tube — matching colors can stack, or pour into an empty tube.';

  @override
  String get mechanicBasicsTip =>
      'Goal: every filled tube becomes one solid color. Empty tubes are helpers.';

  @override
  String get mechanicBasicsCaption => 'Select → Pour → Sort';

  @override
  String get mechanicHiddenTitle => 'HIDDEN TUBE';

  @override
  String get mechanicHiddenHeadline => 'Only the top color is visible';

  @override
  String get mechanicHiddenBody =>
      'In this tube you only see the top color. Layers below stay foggy until the top clears.';

  @override
  String get mechanicHiddenTip =>
      'Don\'t pour blind — clear the top first, reveal below, then decide.';

  @override
  String get mechanicHiddenCaption => 'Top clear • lower foggy';

  @override
  String get mechanicMixTitle => 'COLOR MIXING';

  @override
  String get mechanicMixHeadline => 'Two colors combine into a new one';

  @override
  String get mechanicMixBody =>
      'Pour certain colors onto each other to mix a new color. Follow the equations shown on top.';

  @override
  String get mechanicMixTip =>
      'Amounts must match and the target needs free space.';

  @override
  String get mechanicMixCaption => 'Red + Yellow = Orange';

  @override
  String get mechanicFrozenTitle => 'FROZEN TUBE';

  @override
  String get mechanicFrozenHeadline => 'Untouchable for a while';

  @override
  String get mechanicFrozenBody =>
      'You can\'t pour into or out of an iced tube. After enough moves, the ice melts.';

  @override
  String get mechanicFrozenTip =>
      'Open a path with other tubes; use it as soon as ice clears.';

  @override
  String get mechanicFrozenCaption => 'Wait moves → ice melts';

  @override
  String get mechanicLockedTitle => 'LOCKED TUBE';

  @override
  String get mechanicLockedHeadline => 'Finish another tube first';

  @override
  String get mechanicLockedBody =>
      'A locked tube stays closed until you complete a set number of tubes.';

  @override
  String get mechanicLockedTip =>
      'Finish easy tubes first, then use the locked space.';

  @override
  String get mechanicLockedCaption => 'Complete → unlock';

  @override
  String get mechanicHeatedTitle => 'HEATER TUBE';

  @override
  String get mechanicHeatedHeadline => 'Vaporize waste liquid';

  @override
  String get mechanicHeatedBody =>
      'Liquid poured into the heater disappears. Heat charges are limited — usually for waste colors.';

  @override
  String get mechanicHeatedTip =>
      'When heat is gone you can\'t pour there. Clear waste early.';

  @override
  String get mechanicHeatedCaption => 'Waste → vapor';

  @override
  String get mechanicValveTitle => 'ONE-WAY VALVE';

  @override
  String get mechanicValveHeadline => 'Only pours in';

  @override
  String get mechanicValveBody =>
      'You can pour into a valve tube but can\'t take liquid out. It acts like a permanent store.';

  @override
  String get mechanicValveTip =>
      'Wrong color can trap you. Fill valves carefully.';

  @override
  String get mechanicValveCaption => 'In only';

  @override
  String get mechanicPortalTitle => 'PORTAL PAIR';

  @override
  String get mechanicPortalHeadline => 'Enter one, exit the other';

  @override
  String get mechanicPortalBody =>
      'Pour into one portal and the liquid appears in its twin. The two tubes are linked.';

  @override
  String get mechanicPortalTip =>
      'Target one portal — the fill happens on the other side.';

  @override
  String get mechanicPortalCaption => 'A in → B out';

  @override
  String get mechanicBombTitle => 'BOMB TUBE';

  @override
  String get mechanicBombHeadline => 'Finish before the timer';

  @override
  String get mechanicBombBody =>
      'The marked tube has a countdown. Fill it with one color before it hits zero or the level fails.';

  @override
  String get mechanicBombTip =>
      'Secure the bomb tube first, then sort the rest.';

  @override
  String get mechanicBombCaption => 'Fill before countdown ends';

  @override
  String get mechanicNarrowTitle => 'NARROW TUBE';

  @override
  String get mechanicNarrowHeadline => 'Capacity-2 buffer';

  @override
  String get mechanicNarrowBody =>
      'This level has a short helper tube that holds at most 2 units. Use it for tight maneuvers.';

  @override
  String get mechanicNarrowTip =>
      'It must be empty to finish. Holding 2 units does not count as complete — empty it again.';

  @override
  String get mechanicNarrowCaption => 'Capacity 2 • empty to finish';

  @override
  String get mechanicMovingTitle => 'MOVING LAYOUT';

  @override
  String get mechanicMovingHeadline => 'Tubes swap places';

  @override
  String get mechanicMovingBody =>
      'Every few moves the board shifts and tube order changes. Same tubes — new positions.';

  @override
  String get mechanicMovingTip => 'Track tubes by id and colors.';

  @override
  String get mechanicMovingCaption => 'Shifts every 3 moves';

  @override
  String get mechanicBossTitle => 'BOSS EXPERIMENT';

  @override
  String get mechanicBossHeadline => 'Tougher rules';

  @override
  String get mechanicBossBody =>
      'Boss levels have a move limit and may combine several special rules. Play with a plan.';

  @override
  String get mechanicBossTip =>
      'Stay near par; avoid wasteful undos and messy pours.';

  @override
  String get mechanicBossCaption => 'Limit + special rules';

  @override
  String levelNumber(int level) {
    final intl.NumberFormat levelNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String levelString = levelNumberFormat.format(level);

    return 'Level $levelString';
  }

  @override
  String get movesLabel => 'Moves';

  @override
  String headerMeta(int par) {
    final intl.NumberFormat parNumberFormat = intl.NumberFormat.decimalPattern(
      localeName,
    );
    final String parString = parNumberFormat.format(par);

    return 'Par $parString  •  Unlimited retries  •  Offline';
  }

  @override
  String get pauseTooltip => 'Pause';

  @override
  String get resumeTooltip => 'Resume';

  @override
  String get settingsTooltip => 'Settings';

  @override
  String get pausedTitle => 'GAME PAUSED';

  @override
  String get pausedBody => 'Timer and countdown sounds are paused.';

  @override
  String get resumeCta => 'RESUME';

  @override
  String tempoBadge(String difficulty, int seconds) {
    final intl.NumberFormat secondsNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String secondsString = secondsNumberFormat.format(seconds);

    return '$difficulty  $secondsString s';
  }

  @override
  String get easyRelaxed => 'EASY  •  RELAXED';

  @override
  String bossMovesLeft(int moves) {
    final intl.NumberFormat movesNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String movesString = movesNumberFormat.format(moves);

    return 'BOSS • $movesString MOVES';
  }

  @override
  String get hiddenLiquid => 'HIDDEN LIQUID';

  @override
  String get frozenTube => 'FROZEN TUBE';

  @override
  String get iceCleared => 'ICE CLEARED';

  @override
  String get lockedTube => 'LOCKED TUBE';

  @override
  String get lockOpened => 'LOCK OPENED';

  @override
  String heatBurn(int remaining) {
    final intl.NumberFormat remainingNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String remainingString = remainingNumberFormat.format(remaining);

    return 'BURN WASTE • $remainingString';
  }

  @override
  String heatTube(int remaining) {
    final intl.NumberFormat remainingNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String remainingString = remainingNumberFormat.format(remaining);

    return 'HEAT TUBE • $remainingString';
  }

  @override
  String get portalPair => 'PORTAL PAIR';

  @override
  String get oneWayValve => 'ONE-WAY VALVE';

  @override
  String bombCountdown(int remaining) {
    final intl.NumberFormat remainingNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String remainingString = remainingNumberFormat.format(remaining);

    return 'BOMB • $remainingString';
  }

  @override
  String movingEvery(int moves) {
    final intl.NumberFormat movesNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String movesString = movesNumberFormat.format(moves);

    return 'MOVES EVERY $movesString';
  }

  @override
  String get narrowTubeCap2 => 'NARROW TUBE • CAP 2';

  @override
  String get hiddenMix => 'HIDDEN MIX';

  @override
  String get portalFlow => 'PORTAL FLOW!';

  @override
  String get tubesShifted => 'TUBES SHIFTED!';

  @override
  String bombMovesLeft(int remaining) {
    final intl.NumberFormat remainingNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String remainingString = remainingNumberFormat.format(remaining);

    return 'BOMB: $remainingString MOVES!';
  }

  @override
  String get iceBroken => 'Ice broken! The frozen tube is usable now.';

  @override
  String get lockUnlocked => 'Lock opened! A new tube is ready.';

  @override
  String get tubeFrozenMsg =>
      'This tube is frozen. A few correct moves will thaw it.';

  @override
  String get tubeLockedMsg =>
      'This tube is locked. Complete another color first.';

  @override
  String get valveOneWayMsg =>
      'The gold valve is one-way: you can pour in, but not out.';

  @override
  String get heatExhaustedMsg => 'This heater is out of burn charges.';

  @override
  String insufficientCoins(int cost) {
    final intl.NumberFormat costNumberFormat = intl.NumberFormat.decimalPattern(
      localeName,
    );
    final String costString = costNumberFormat.format(cost);

    return 'Not enough coins ($costString).';
  }

  @override
  String get adFailed => 'Ad could not be completed.';

  @override
  String reopenPaid(int cost, String title) {
    final intl.NumberFormat costNumberFormat = intl.NumberFormat.decimalPattern(
      localeName,
    );
    final String costString = costNumberFormat.format(cost);

    return '-$costString coins • $title reopened';
  }

  @override
  String reopenAd(String title) {
    return 'Opened with ad • $title';
  }

  @override
  String get tipQuotaEmpty => 'You\'re out of hints for this level.';

  @override
  String get rewardsNotReady => 'Reward system is not ready.';

  @override
  String get freeHintUsed => 'Free hint used.';

  @override
  String hintCost(int cost) {
    final intl.NumberFormat costNumberFormat = intl.NumberFormat.decimalPattern(
      localeName,
    );
    final String costString = costNumberFormat.format(cost);

    return 'Hint: -$costString coins';
  }

  @override
  String get noHintAvailable => 'No useful hint right now.';

  @override
  String get assistHint => 'hint';

  @override
  String get assistUndo => 'undo';

  @override
  String get freeHintEarned => '1 free hint earned.';

  @override
  String get freeUndoEarned => '1 free undo earned.';

  @override
  String failureCredit(int deducted, int floor) {
    final intl.NumberFormat deductedNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String deductedString = deductedNumberFormat.format(deducted);
    final intl.NumberFormat floorNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String floorString = floorNumberFormat.format(floor);

    return '-$deductedString credit • failed attempt (min $floorString)';
  }

  @override
  String debtLimitToast(int floor) {
    final intl.NumberFormat floorNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String floorString = floorNumberFormat.format(floor);

    return 'Debt limit ($floorString). Watch an ad to retry.';
  }

  @override
  String restartCredit(int deducted) {
    final intl.NumberFormat deductedNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String deductedString = deductedNumberFormat.format(deducted);

    return '-$deductedString credit • restart';
  }

  @override
  String insufficientCoinsTitle(int cost) {
    final intl.NumberFormat costNumberFormat = intl.NumberFormat.decimalPattern(
      localeName,
    );
    final String costString = costNumberFormat.format(cost);

    return 'Not enough coins ($costString)';
  }

  @override
  String watchAdEarnAssist(String label) {
    return 'Watch an ad to earn 1 free $label.';
  }

  @override
  String debtLimitTitle(int floor) {
    final intl.NumberFormat floorNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String floorString = floorNumberFormat.format(floor);

    return 'Debt limit ($floorString)';
  }

  @override
  String get debtLimitBody =>
      'You\'re at the debt floor. Watch an ad to try again.';

  @override
  String get tipUnlockPaidBody =>
      'You saw this rule once for free.\nRe-reading costs coins.';

  @override
  String get tipUnlockAdBody =>
      'Not enough coins.\nWatch an ad to open this tip for free.';

  @override
  String get yourBalance => 'Balance: ';

  @override
  String payCost(int cost) {
    final intl.NumberFormat costNumberFormat = intl.NumberFormat.decimalPattern(
      localeName,
    );
    final String costString = costNumberFormat.format(cost);

    return 'Pay $costString';
  }

  @override
  String get timeUp => 'TIME\'S UP';

  @override
  String get bombExploded => 'BOMB EXPLODED';

  @override
  String get moveLimitReached => 'MOVE LIMIT REACHED';

  @override
  String failurePenaltyLine(int amount, int floor) {
    final intl.NumberFormat amountNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String amountString = amountNumberFormat.format(amount);
    final intl.NumberFormat floorNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String floorString = floorNumberFormat.format(floor);

    return 'Failed attempt: -$amountString credit (debt min $floorString).';
  }

  @override
  String get tryEasyModeHint => 'You can turn off time pressure in Easy mode.';

  @override
  String get bombFailHint =>
      'Fill the marked tube with one color before the red countdown ends.';

  @override
  String get bossFailHint =>
      'Boss experiment exceeded the move limit. Plan mixes and empty tubes carefully.';

  @override
  String get debtLimitRetryHint =>
      'You\'re at the debt limit — watch an ad to retry.';

  @override
  String get retryWithAd => 'WATCH AD • RETRY';

  @override
  String get retryAgain => 'TRY AGAIN';

  @override
  String get vaporized => 'VAPORIZED!';

  @override
  String colorClearedBonus(String color) {
    return '$color CLEARED  •  +4 S';
  }

  @override
  String get newColorFormed => 'NEW COLOR FORMED!';

  @override
  String colorBonusSeconds(String color) {
    return '$color  •  +6 S';
  }

  @override
  String get legendaryFlow => 'LEGENDARY FLOW!';

  @override
  String flowMultiplier(int combo) {
    final intl.NumberFormat comboNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String comboString = comboNumberFormat.format(combo);

    return 'FLOW x$comboString';
  }

  @override
  String get legendaryFlowLabel => 'Legendary Flow';

  @override
  String flowLabel(int multiplier) {
    final intl.NumberFormat multiplierNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String multiplierString = multiplierNumberFormat.format(multiplier);

    return 'FLOW x$multiplierString';
  }

  @override
  String tubeSemantics(String id, int units) {
    final intl.NumberFormat unitsNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String unitsString = unitsNumberFormat.format(units);

    return 'Tube $id, $unitsString units filled';
  }

  @override
  String get colorRed => 'Red';

  @override
  String get colorBlue => 'Blue';

  @override
  String get colorPurple => 'Purple';

  @override
  String get colorYellow => 'Yellow';

  @override
  String get colorGreen => 'Green';

  @override
  String get colorOrange => 'Orange';

  @override
  String get colorPink => 'Pink';

  @override
  String get colorCyan => 'Cyan';

  @override
  String get colorLime => 'Lime';

  @override
  String get colorBrown => 'Brown';

  @override
  String get skipLevelOfferBody =>
      'This level is tough. Watch an ad to unlock the next one.';

  @override
  String get skipLevelCta => 'WATCH AD • SKIP';

  @override
  String get skipLevelNote => 'You can come back and finish this level later.';

  @override
  String get skipLevelUnlocked => 'Next level unlocked!';

  @override
  String get developerModeTitle => 'Developer Mode';

  @override
  String get developerModePasswordHint => 'Password';

  @override
  String get developerModeUnlock => 'Unlock';

  @override
  String get developerModeEnabled => 'All levels unlocked for testing.';

  @override
  String get developerModeWrongPassword => 'Wrong password';

  @override
  String get developerModeActive => 'Developer mode active';

  @override
  String get developerModeDisable => 'Disable developer mode';
}
