// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Chinese (`zh`).
class AppLocalizationsZh extends AppLocalizations {
  AppLocalizationsZh([String locale = 'zh']) : super(locale);

  @override
  String get appTitle => 'Liquid Sort Puzzle';

  @override
  String get brandName => 'Liquid Sort';

  @override
  String get brandPuzzle => 'PUZZLE';

  @override
  String get splashTagline => '分类颜色，清空思绪。';

  @override
  String get back => '返回';

  @override
  String get cancel => '取消';

  @override
  String get play => '开始';

  @override
  String get settings => '设置';

  @override
  String get home => '主页';

  @override
  String get levels => '关卡';

  @override
  String get collection => '收藏';

  @override
  String get achievements => '成就';

  @override
  String get continueLabel => '继续';

  @override
  String get pause => '暂停';

  @override
  String get close => '关闭';

  @override
  String get free => '免费';

  @override
  String get coin => '金币';

  @override
  String get coins => '金币';

  @override
  String get secondsShort => '秒';

  @override
  String get moves => '步数';

  @override
  String get best => '最佳';

  @override
  String get par => 'Par';

  @override
  String get locked => '已锁定';

  @override
  String get ad => '广告';

  @override
  String get watchAd => '观看广告';

  @override
  String get claiming => '领取中...';

  @override
  String get homeTagline => '聪明分类，混合颜色！';

  @override
  String get progressAndAchievements => '进度与成就';

  @override
  String get progressTapHint => '点击：统计与徽章';

  @override
  String get dailyReward => '每日奖励';

  @override
  String get rewardReady => '奖励已就绪';

  @override
  String get comeTomorrow => '明天再来';

  @override
  String get collectionSubtitle => '浏览主题';

  @override
  String get premiumThemes => '高级主题';

  @override
  String get premiumThemesBody => '经典、银河、海洋、霓虹和黄金时代主题在此解锁。';

  @override
  String get playCta => '开始';

  @override
  String dailyClaimSnack(int coins, String hintSuffix) {
    final intl.NumberFormat coinsNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String coinsString = coinsNumberFormat.format(coins);

    return '+$coinsString金币$hintSuffix';
  }

  @override
  String freeHintSuffix(int count) {
    final intl.NumberFormat countNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String countString = countNumberFormat.format(count);

    return ' + $countString次免费提示';
  }

  @override
  String get levelMapTitle => '关卡地图';

  @override
  String levelsCompletedProgress(int completed, int total) {
    final intl.NumberFormat completedNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String completedString = completedNumberFormat.format(completed);
    final intl.NumberFormat totalNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String totalString = totalNumberFormat.format(total);

    return '已完成$completedString/$totalString关';
  }

  @override
  String get newExperimentsBanner => '新实验\n传送门 • 炸弹 • 阀门 • 反应堆';

  @override
  String get settingsTitle => '设置';

  @override
  String get settingsSubtitleAudio => '声音与触觉控制';

  @override
  String get settingsSubtitleVisual => '颜色、图案与动画';

  @override
  String get settingsSubtitleGeneral => '难度与常规偏好';

  @override
  String get sectionAudioFeedback => '声音与反馈';

  @override
  String get soundEffects => '音效';

  @override
  String get soundEffectsSubtitle => '选择、倾倒与成功音效';

  @override
  String get backgroundMusic => '背景音乐';

  @override
  String get backgroundMusicSubtitle => '舒缓宇宙氛围音乐';

  @override
  String get haptics => '触觉反馈';

  @override
  String get hapticsSubtitle => '点击时的轻反馈';

  @override
  String get sectionVisual => '视觉偏好';

  @override
  String get neonPalette => '霓虹液体配色';

  @override
  String get neonPaletteSubtitle => '游戏中使用的鲜艳霓虹色';

  @override
  String get colorAccessibility => '颜色无障碍';

  @override
  String get colorAccessibilitySubtitle => '为液体添加细微图案';

  @override
  String get reducedAnimations => '减少动画';

  @override
  String get reducedAnimationsSubtitle => '加快倾倒动作';

  @override
  String get sectionDifficulty => '难度与时间压力';

  @override
  String get offlineProgress => '离线进度';

  @override
  String get offlineProgressBody => '你的关卡和设置已安全保存在本设备。';

  @override
  String settingsVersion(String version) {
    return 'Liquid Sort Puzzle  •  v$version';
  }

  @override
  String get tabAudio => '音频';

  @override
  String get tabVisual => '视觉';

  @override
  String get tabGeneral => '设置';

  @override
  String get language => '语言';

  @override
  String get languageSubtitle => '选择应用语言';

  @override
  String get languageSystem => '跟随系统';

  @override
  String get languageSystemSubtitle => '使用手机或平板语言';

  @override
  String get difficultyEasy => '简单';

  @override
  String get difficultyNormal => '普通';

  @override
  String get difficultyHard => '困难';

  @override
  String get difficultyEasyDesc => '无时间压力 • 金币较少 • 更多插屏广告';

  @override
  String get difficultyNormalDesc => '适中计时，轻度压力';

  @override
  String get difficultyHardDesc => '计时很短，失误-5秒';

  @override
  String get dailyRewardTitle => '每日奖励';

  @override
  String get dailyRewardClaimBody => '领取今日礼物。每天回来，奖励会增长。';

  @override
  String get dailyRewardClaimedBody => '今日已领取。明天再来。';

  @override
  String dailyStreak(int streak) {
    final intl.NumberFormat streakNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String streakString = streakNumberFormat.format(streak);

    return '连续：$streakString天';
  }

  @override
  String dayChip(int day) {
    final intl.NumberFormat dayNumberFormat = intl.NumberFormat.decimalPattern(
      localeName,
    );
    final String dayString = dayNumberFormat.format(day);

    return '第$dayString天';
  }

  @override
  String get plusHint => '+提示';

  @override
  String get claimDailyReward => '领取今日奖励';

  @override
  String get comeAgainTomorrow => '明天再来';

  @override
  String get achievementsTitle => '成就';

  @override
  String get achGreetingEmpty => '准备就绪。完成第一关，徽章将开始在此累积。';

  @override
  String get achGreetingFlow => '你的连击火热 — 已经摸清了游戏节奏。';

  @override
  String get achGreetingStars => '你的星星收藏闪耀。继续，传奇。';

  @override
  String get achGreetingVeteran => '节奏不错。实验室正跟上你的 tempo。';

  @override
  String get achGreetingProgress => '进展扎实。每一关干净完成都让你更熟练。';

  @override
  String get achGreetingStarter => '开局不错。再几关，徽章就会涌来。';

  @override
  String get statLevel => '关卡';

  @override
  String get statStars => '星星';

  @override
  String get statCoins => '金币';

  @override
  String get statFlow => '连击';

  @override
  String get statUnlocked => '已解锁';

  @override
  String get achievementLocked => '已锁定';

  @override
  String get achievementPerfectSort => '完美分类';

  @override
  String get achievementPerfectSortDesc => '在 Par 内且无辅助完成';

  @override
  String get achievementUnderPar => '低于 Par';

  @override
  String get achievementUnderParDesc => '不超过目标步数';

  @override
  String get achievementNoUndo => '无撤销';

  @override
  String get achievementNoUndoDesc => '不使用撤销完成';

  @override
  String get achievementNoHint => '无提示';

  @override
  String get achievementNoHintDesc => '不使用提示完成';

  @override
  String get achievementFlowMaster => '连击大师';

  @override
  String get achievementFlowMasterDesc => '单关达到连击 x5';

  @override
  String get achievementNewRecord => '新纪录';

  @override
  String get achievementNewRecordDesc => '打破最佳步数';

  @override
  String get achievementFirstTry => '一次过';

  @override
  String get achievementFirstTryDesc => '不重启完成';

  @override
  String get achievementNoExtraTube => '无额外试管';

  @override
  String get achievementNoExtraTubeDesc => '不添加试管完成';

  @override
  String get undo => '撤销';

  @override
  String get restart => '重开';

  @override
  String get hint => '提示';

  @override
  String get addTube => '添加试管';

  @override
  String get perfect => '完美！';

  @override
  String levelCompleted(int level) {
    final intl.NumberFormat levelNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String levelString = levelNumberFormat.format(level);

    return '第$levelString关完成';
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

    return '$movesString步  •  Par $parString';
  }

  @override
  String get newRecordAchievements => '新纪录 • 成就';

  @override
  String get achievementsHeader => '成就';

  @override
  String assistancePenalty(int amount) {
    final intl.NumberFormat amountNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String amountString = amountNumberFormat.format(amount);

    return '提示惩罚：-$amountString金币';
  }

  @override
  String get doubleReward => '双倍奖励';

  @override
  String get goToLevels => '关卡';

  @override
  String get continueNext => '继续';

  @override
  String get backToLevelSelect => '返回选关';

  @override
  String get bestLabel => '最佳';

  @override
  String get flowCombo => '连击组合';

  @override
  String get extraTube => '额外试管';

  @override
  String get fullReward => '全额奖励';

  @override
  String get halfReward => '一半奖励';

  @override
  String get quarterReward => '四分之一奖励';

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
  String get newRule => '新规则';

  @override
  String get gotItStart => '知道了，开始';

  @override
  String get firstTimeTipOnly => '仅首次显示';

  @override
  String get mechanicBasicsTitle => '玩法说明';

  @override
  String get mechanicBasicsHeadline => '选试管，倒液体';

  @override
  String get mechanicBasicsBody => '点击试管选择顶部颜色。再点击目标试管 — 同色可堆叠，或倒入空试管。';

  @override
  String get mechanicBasicsTip => '目标：每个满试管只有一种颜色。空试管是辅助。';

  @override
  String get mechanicBasicsCaption => '选择 → 倾倒 → 分类';

  @override
  String get mechanicHiddenTitle => '隐藏试管';

  @override
  String get mechanicHiddenHeadline => '仅可见顶部颜色';

  @override
  String get mechanicHiddenBody => '此试管只能看到顶部颜色。下层在顶部清空前保持模糊。';

  @override
  String get mechanicHiddenTip => '别盲倒 — 先清顶部，再看下层，再决定。';

  @override
  String get mechanicHiddenCaption => '顶部可见 • 下层模糊';

  @override
  String get mechanicMixTitle => '颜色混合';

  @override
  String get mechanicMixHeadline => '两色合成新色';

  @override
  String get mechanicMixBody => '将特定颜色相互倾倒以混合新色。遵循上方方程式。';

  @override
  String get mechanicMixTip => '数量须匹配，目标需有空位。';

  @override
  String get mechanicMixCaption => '红 + 黄 = 橙';

  @override
  String get mechanicFrozenTitle => '冰冻试管';

  @override
  String get mechanicFrozenHeadline => '暂时无法操作';

  @override
  String get mechanicFrozenBody => '冰冻试管无法倒入或倒出。足够步数后冰会融化。';

  @override
  String get mechanicFrozenTip => '用其他试管开路；冰化后立即使用。';

  @override
  String get mechanicFrozenCaption => '等待步数 → 冰融化';

  @override
  String get mechanicLockedTitle => '锁定试管';

  @override
  String get mechanicLockedHeadline => '先完成其他试管';

  @override
  String get mechanicLockedBody => '锁定试管在完成指定数量试管前保持关闭。';

  @override
  String get mechanicLockedTip => '先完成容易的试管，再使用锁定空间。';

  @override
  String get mechanicLockedCaption => '完成 → 解锁';

  @override
  String get mechanicHeatedTitle => '加热试管';

  @override
  String get mechanicHeatedHeadline => '蒸发多余液体';

  @override
  String get mechanicHeatedBody => '倒入加热器的液体会消失。加热次数有限 — 通常用于多余颜色。';

  @override
  String get mechanicHeatedTip => '加热用尽后无法倒入。尽早清理多余。';

  @override
  String get mechanicHeatedCaption => '多余 → 蒸发';

  @override
  String get mechanicValveTitle => '单向阀门';

  @override
  String get mechanicValveHeadline => '只能倒入';

  @override
  String get mechanicValveBody => '可向阀门试管倒入但无法取出。如同永久存储。';

  @override
  String get mechanicValveTip => '错误颜色可能卡住。谨慎填充阀门。';

  @override
  String get mechanicValveCaption => '仅入口';

  @override
  String get mechanicPortalTitle => '传送门对';

  @override
  String get mechanicPortalHeadline => '进一个，出另一个';

  @override
  String get mechanicPortalBody => '倒入一个传送门，液体出现在配对端。两管相连。';

  @override
  String get mechanicPortalTip => '瞄准一个传送门 — 填充发生在另一端。';

  @override
  String get mechanicPortalCaption => 'A进 → B出';

  @override
  String get mechanicBombTitle => '炸弹试管';

  @override
  String get mechanicBombHeadline => '计时前完成';

  @override
  String get mechanicBombBody => '标记试管有倒计时。归零前用单色填满，否则失败。';

  @override
  String get mechanicBombTip => '先确保炸弹试管，再分类其余。';

  @override
  String get mechanicBombCaption => '倒计时前填满';

  @override
  String get mechanicNarrowTitle => '窄试管';

  @override
  String get mechanicNarrowHeadline => '容量2缓冲';

  @override
  String get mechanicNarrowBody => '本关有最多2单位的短辅助试管。用于紧凑操作。';

  @override
  String get mechanicNarrowTip => '完成时需为空。持有2单位不算完成 — 再次清空。';

  @override
  String get mechanicNarrowCaption => '容量2 • 空管完成';

  @override
  String get mechanicMovingTitle => '移动布局';

  @override
  String get mechanicMovingHeadline => '试管换位';

  @override
  String get mechanicMovingBody => '每几步棋盘移动，试管顺序改变。同样试管 — 新位置。';

  @override
  String get mechanicMovingTip => '用 id 和颜色跟踪试管。';

  @override
  String get mechanicMovingCaption => '每3步移动';

  @override
  String get mechanicBossTitle => 'BOSS实验';

  @override
  String get mechanicBossHeadline => '更严规则';

  @override
  String get mechanicBossBody => 'Boss关有步数限制，可能组合多种特殊规则。有计划地玩。';

  @override
  String get mechanicBossTip => '贴近 Par；避免浪费撤销和倾倒。';

  @override
  String get mechanicBossCaption => '限制 + 特殊规则';

  @override
  String levelNumber(int level) {
    final intl.NumberFormat levelNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String levelString = levelNumberFormat.format(level);

    return '第$levelString关';
  }

  @override
  String get movesLabel => '步数';

  @override
  String headerMeta(int par) {
    final intl.NumberFormat parNumberFormat = intl.NumberFormat.decimalPattern(
      localeName,
    );
    final String parString = parNumberFormat.format(par);

    return 'Par $parString  •  无限重试  •  离线';
  }

  @override
  String get pauseTooltip => '暂停';

  @override
  String get resumeTooltip => '继续';

  @override
  String get settingsTooltip => '设置';

  @override
  String get pausedTitle => '游戏暂停';

  @override
  String get pausedBody => '计时器和倒计时音效已暂停。';

  @override
  String get resumeCta => '继续';

  @override
  String tempoBadge(String difficulty, int seconds) {
    final intl.NumberFormat secondsNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String secondsString = secondsNumberFormat.format(seconds);

    return '$difficulty  $secondsString秒';
  }

  @override
  String get easyRelaxed => '简单  •  轻松';

  @override
  String bossMovesLeft(int moves) {
    final intl.NumberFormat movesNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String movesString = movesNumberFormat.format(moves);

    return 'BOSS • $movesString步';
  }

  @override
  String get hiddenLiquid => '隐藏液体';

  @override
  String get frozenTube => '冰冻试管';

  @override
  String get iceCleared => '冰已清除';

  @override
  String get lockedTube => '锁定试管';

  @override
  String get lockOpened => '锁已打开';

  @override
  String heatBurn(int remaining) {
    final intl.NumberFormat remainingNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String remainingString = remainingNumberFormat.format(remaining);

    return '烧掉多余 • $remainingString';
  }

  @override
  String heatTube(int remaining) {
    final intl.NumberFormat remainingNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String remainingString = remainingNumberFormat.format(remaining);

    return '加热试管 • $remainingString';
  }

  @override
  String get portalPair => '传送门对';

  @override
  String get oneWayValve => '单向阀门';

  @override
  String bombCountdown(int remaining) {
    final intl.NumberFormat remainingNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String remainingString = remainingNumberFormat.format(remaining);

    return '炸弹 • $remainingString';
  }

  @override
  String movingEvery(int moves) {
    final intl.NumberFormat movesNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String movesString = movesNumberFormat.format(moves);

    return '每$movesString步移动';
  }

  @override
  String get narrowTubeCap2 => '窄试管 • 容量2';

  @override
  String get hiddenMix => '隐藏混合';

  @override
  String get portalFlow => '传送门连击！';

  @override
  String get tubesShifted => '试管已移动!';

  @override
  String bombMovesLeft(int remaining) {
    final intl.NumberFormat remainingNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String remainingString = remainingNumberFormat.format(remaining);

    return '炸弹: $remainingString步!';
  }

  @override
  String get iceBroken => '冰破了！冰冻试管现在可用。';

  @override
  String get lockUnlocked => '锁打开了！新试管已就绪。';

  @override
  String get tubeFrozenMsg => '此试管已冻结。几步正确操作后会解冻。';

  @override
  String get tubeLockedMsg => '此试管已锁定。请先完成另一种颜色。';

  @override
  String get valveOneWayMsg => '金色阀门是单向的：可以倒入，不能取出。';

  @override
  String get heatExhaustedMsg => '此加热器燃烧次数已用尽。';

  @override
  String insufficientCoins(int cost) {
    final intl.NumberFormat costNumberFormat = intl.NumberFormat.decimalPattern(
      localeName,
    );
    final String costString = costNumberFormat.format(cost);

    return '金币不足 ($costString)。';
  }

  @override
  String get adFailed => '广告未能完成。';

  @override
  String reopenPaid(int cost, String title) {
    final intl.NumberFormat costNumberFormat = intl.NumberFormat.decimalPattern(
      localeName,
    );
    final String costString = costNumberFormat.format(cost);

    return '-$costString金币 • $title已重新打开';
  }

  @override
  String reopenAd(String title) {
    return '通过广告打开 • $title';
  }

  @override
  String get tipQuotaEmpty => '本关提示已用完。';

  @override
  String get rewardsNotReady => '奖励系统未就绪。';

  @override
  String get freeHintUsed => '已使用免费提示。';

  @override
  String hintCost(int cost) {
    final intl.NumberFormat costNumberFormat = intl.NumberFormat.decimalPattern(
      localeName,
    );
    final String costString = costNumberFormat.format(cost);

    return '提示: -$costString金币';
  }

  @override
  String get noHintAvailable => '目前没有可用提示。';

  @override
  String get assistHint => '提示';

  @override
  String get assistUndo => '撤销';

  @override
  String get freeHintEarned => '获得1次免费提示。';

  @override
  String get freeUndoEarned => '获得1次免费撤销。';

  @override
  String failureCredit(int deducted, int floor) {
    final intl.NumberFormat deductedNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String deductedString = deductedNumberFormat.format(deducted);
    final intl.NumberFormat floorNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String floorString = floorNumberFormat.format(floor);

    return '-$deductedString积分 • 失败尝试 (最低$floorString)';
  }

  @override
  String debtLimitToast(int floor) {
    final intl.NumberFormat floorNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String floorString = floorNumberFormat.format(floor);

    return '债务上限 ($floorString)。看广告重试。';
  }

  @override
  String restartCredit(int deducted) {
    final intl.NumberFormat deductedNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String deductedString = deductedNumberFormat.format(deducted);

    return '-$deductedString积分 • 重开';
  }

  @override
  String insufficientCoinsTitle(int cost) {
    final intl.NumberFormat costNumberFormat = intl.NumberFormat.decimalPattern(
      localeName,
    );
    final String costString = costNumberFormat.format(cost);

    return '金币不足 ($costString)';
  }

  @override
  String watchAdEarnAssist(String label) {
    return '看广告获得1次免费$label。';
  }

  @override
  String debtLimitTitle(int floor) {
    final intl.NumberFormat floorNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String floorString = floorNumberFormat.format(floor);

    return '债务上限 ($floorString)';
  }

  @override
  String get debtLimitBody => '已达债务下限。看广告再试。';

  @override
  String get tipUnlockPaidBody => '你已免费看过此规则一次。\n再次阅读需花费金币。';

  @override
  String get tipUnlockAdBody => '金币不足。\n看广告免费打开此提示。';

  @override
  String get yourBalance => '余额：';

  @override
  String payCost(int cost) {
    final intl.NumberFormat costNumberFormat = intl.NumberFormat.decimalPattern(
      localeName,
    );
    final String costString = costNumberFormat.format(cost);

    return '支付$costString';
  }

  @override
  String get timeUp => '时间到';

  @override
  String get bombExploded => '炸弹爆炸!';

  @override
  String get moveLimitReached => '步数上限已达';

  @override
  String failurePenaltyLine(int amount, int floor) {
    final intl.NumberFormat amountNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String amountString = amountNumberFormat.format(amount);
    final intl.NumberFormat floorNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String floorString = floorNumberFormat.format(floor);

    return '失败: -$amountString积分 (债务最低$floorString)。';
  }

  @override
  String get tryEasyModeHint => '可在简单模式关闭时间压力。';

  @override
  String get bombFailHint => '红色倒计时结束前用单色填满标记试管。';

  @override
  String get bossFailHint => 'Boss实验超出步数限制。谨慎规划混合与空试管。';

  @override
  String get debtLimitRetryHint => '已达债务上限 — 看广告重试。';

  @override
  String get retryWithAd => '看广告 • 重试';

  @override
  String get retryAgain => '再试一次';

  @override
  String get vaporized => '已蒸发!';

  @override
  String colorClearedBonus(String color) {
    return '$color清除  •  +4秒';
  }

  @override
  String get newColorFormed => '新颜色形成!';

  @override
  String colorBonusSeconds(String color) {
    return '$color  •  +6秒';
  }

  @override
  String get legendaryFlow => '传奇连击！';

  @override
  String flowMultiplier(int combo) {
    final intl.NumberFormat comboNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String comboString = comboNumberFormat.format(combo);

    return '连击 x$comboString';
  }

  @override
  String get legendaryFlowLabel => '传奇连击';

  @override
  String flowLabel(int multiplier) {
    final intl.NumberFormat multiplierNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String multiplierString = multiplierNumberFormat.format(multiplier);

    return '连击 x$multiplierString';
  }

  @override
  String tubeSemantics(String id, int units) {
    final intl.NumberFormat unitsNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String unitsString = unitsNumberFormat.format(units);

    return '试管$id，已填$unitsString单位';
  }

  @override
  String get colorRed => '红';

  @override
  String get colorBlue => '蓝';

  @override
  String get colorPurple => '紫';

  @override
  String get colorYellow => '黄';

  @override
  String get colorGreen => '绿';

  @override
  String get colorOrange => '橙';

  @override
  String get colorPink => '粉';

  @override
  String get colorCyan => '青';

  @override
  String get colorLime => '青柠';

  @override
  String get colorBrown => '棕';

  @override
  String get skipLevelOfferBody => '这一关很难。观看广告即可解锁下一关。';

  @override
  String get skipLevelCta => '看广告 • 跳过';

  @override
  String get skipLevelNote => '之后还可以回来通关这一关。';

  @override
  String get skipLevelUnlocked => '已解锁下一关！';

  @override
  String get developerModeTitle => '开发者模式';

  @override
  String get developerModePasswordHint => '密码';

  @override
  String get developerModeUnlock => '解锁';

  @override
  String get developerModeEnabled => '已解锁全部关卡用于测试。';

  @override
  String get developerModeWrongPassword => '密码错误';

  @override
  String get developerModeActive => '开发者模式已开启';

  @override
  String get developerModeDisable => '关闭开发者模式';
}

/// The translations for Chinese, as used in China (`zh_CN`).
class AppLocalizationsZhCn extends AppLocalizationsZh {
  AppLocalizationsZhCn() : super('zh_CN');

  @override
  String get appTitle => 'Liquid Sort Puzzle';

  @override
  String get brandName => 'Liquid Sort';

  @override
  String get brandPuzzle => 'PUZZLE';

  @override
  String get splashTagline => '分类颜色，清空思绪。';

  @override
  String get back => '返回';

  @override
  String get cancel => '取消';

  @override
  String get play => '开始';

  @override
  String get settings => '设置';

  @override
  String get home => '主页';

  @override
  String get levels => '关卡';

  @override
  String get collection => '收藏';

  @override
  String get achievements => '成就';

  @override
  String get continueLabel => '继续';

  @override
  String get pause => '暂停';

  @override
  String get close => '关闭';

  @override
  String get free => '免费';

  @override
  String get coin => '金币';

  @override
  String get coins => '金币';

  @override
  String get secondsShort => '秒';

  @override
  String get moves => '步数';

  @override
  String get best => '最佳';

  @override
  String get par => 'Par';

  @override
  String get locked => '已锁定';

  @override
  String get ad => '广告';

  @override
  String get watchAd => '观看广告';

  @override
  String get claiming => '领取中...';

  @override
  String get homeTagline => '聪明分类，混合颜色！';

  @override
  String get progressAndAchievements => '进度与成就';

  @override
  String get progressTapHint => '点击：统计与徽章';

  @override
  String get dailyReward => '每日奖励';

  @override
  String get rewardReady => '奖励已就绪';

  @override
  String get comeTomorrow => '明天再来';

  @override
  String get collectionSubtitle => '浏览主题';

  @override
  String get premiumThemes => '高级主题';

  @override
  String get premiumThemesBody => '经典、银河、海洋、霓虹和黄金时代主题在此解锁。';

  @override
  String get playCta => '开始';

  @override
  String dailyClaimSnack(int coins, String hintSuffix) {
    final intl.NumberFormat coinsNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String coinsString = coinsNumberFormat.format(coins);

    return '+$coinsString金币$hintSuffix';
  }

  @override
  String freeHintSuffix(int count) {
    final intl.NumberFormat countNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String countString = countNumberFormat.format(count);

    return ' + $countString次免费提示';
  }

  @override
  String get levelMapTitle => '关卡地图';

  @override
  String levelsCompletedProgress(int completed, int total) {
    final intl.NumberFormat completedNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String completedString = completedNumberFormat.format(completed);
    final intl.NumberFormat totalNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String totalString = totalNumberFormat.format(total);

    return '已完成$completedString/$totalString关';
  }

  @override
  String get newExperimentsBanner => '新实验\n传送门 • 炸弹 • 阀门 • 反应堆';

  @override
  String get settingsTitle => '设置';

  @override
  String get settingsSubtitleAudio => '声音与触觉控制';

  @override
  String get settingsSubtitleVisual => '颜色、图案与动画';

  @override
  String get settingsSubtitleGeneral => '难度与常规偏好';

  @override
  String get sectionAudioFeedback => '声音与反馈';

  @override
  String get soundEffects => '音效';

  @override
  String get soundEffectsSubtitle => '选择、倾倒与成功音效';

  @override
  String get backgroundMusic => '背景音乐';

  @override
  String get backgroundMusicSubtitle => '舒缓宇宙氛围音乐';

  @override
  String get haptics => '触觉反馈';

  @override
  String get hapticsSubtitle => '点击时的轻反馈';

  @override
  String get sectionVisual => '视觉偏好';

  @override
  String get neonPalette => '霓虹液体配色';

  @override
  String get neonPaletteSubtitle => '游戏中使用的鲜艳霓虹色';

  @override
  String get colorAccessibility => '颜色无障碍';

  @override
  String get colorAccessibilitySubtitle => '为液体添加细微图案';

  @override
  String get reducedAnimations => '减少动画';

  @override
  String get reducedAnimationsSubtitle => '加快倾倒动作';

  @override
  String get sectionDifficulty => '难度与时间压力';

  @override
  String get offlineProgress => '离线进度';

  @override
  String get offlineProgressBody => '你的关卡和设置已安全保存在本设备。';

  @override
  String settingsVersion(String version) {
    return 'Liquid Sort Puzzle  •  v$version';
  }

  @override
  String get tabAudio => '音频';

  @override
  String get tabVisual => '视觉';

  @override
  String get tabGeneral => '设置';

  @override
  String get language => '语言';

  @override
  String get languageSubtitle => '选择应用语言';

  @override
  String get languageSystem => '跟随系统';

  @override
  String get languageSystemSubtitle => '使用手机或平板语言';

  @override
  String get difficultyEasy => '简单';

  @override
  String get difficultyNormal => '普通';

  @override
  String get difficultyHard => '困难';

  @override
  String get difficultyEasyDesc => '无时间压力 • 金币较少 • 更多插屏广告';

  @override
  String get difficultyNormalDesc => '适中计时，轻度压力';

  @override
  String get difficultyHardDesc => '计时很短，失误-5秒';

  @override
  String get dailyRewardTitle => '每日奖励';

  @override
  String get dailyRewardClaimBody => '领取今日礼物。每天回来，奖励会增长。';

  @override
  String get dailyRewardClaimedBody => '今日已领取。明天再来。';

  @override
  String dailyStreak(int streak) {
    final intl.NumberFormat streakNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String streakString = streakNumberFormat.format(streak);

    return '连续：$streakString天';
  }

  @override
  String dayChip(int day) {
    final intl.NumberFormat dayNumberFormat = intl.NumberFormat.decimalPattern(
      localeName,
    );
    final String dayString = dayNumberFormat.format(day);

    return '第$dayString天';
  }

  @override
  String get plusHint => '+提示';

  @override
  String get claimDailyReward => '领取今日奖励';

  @override
  String get comeAgainTomorrow => '明天再来';

  @override
  String get achievementsTitle => '成就';

  @override
  String get achGreetingEmpty => '准备就绪。完成第一关，徽章将开始在此累积。';

  @override
  String get achGreetingFlow => '你的连击火热 — 已经摸清了游戏节奏。';

  @override
  String get achGreetingStars => '你的星星收藏闪耀。继续，传奇。';

  @override
  String get achGreetingVeteran => '节奏不错。实验室正跟上你的 tempo。';

  @override
  String get achGreetingProgress => '进展扎实。每一关干净完成都让你更熟练。';

  @override
  String get achGreetingStarter => '开局不错。再几关，徽章就会涌来。';

  @override
  String get statLevel => '关卡';

  @override
  String get statStars => '星星';

  @override
  String get statCoins => '金币';

  @override
  String get statFlow => '连击';

  @override
  String get statUnlocked => '已解锁';

  @override
  String get achievementLocked => '已锁定';

  @override
  String get achievementPerfectSort => '完美分类';

  @override
  String get achievementPerfectSortDesc => '在 Par 内且无辅助完成';

  @override
  String get achievementUnderPar => '低于 Par';

  @override
  String get achievementUnderParDesc => '不超过目标步数';

  @override
  String get achievementNoUndo => '无撤销';

  @override
  String get achievementNoUndoDesc => '不使用撤销完成';

  @override
  String get achievementNoHint => '无提示';

  @override
  String get achievementNoHintDesc => '不使用提示完成';

  @override
  String get achievementFlowMaster => '连击大师';

  @override
  String get achievementFlowMasterDesc => '单关达到连击 x5';

  @override
  String get achievementNewRecord => '新纪录';

  @override
  String get achievementNewRecordDesc => '打破最佳步数';

  @override
  String get achievementFirstTry => '一次过';

  @override
  String get achievementFirstTryDesc => '不重启完成';

  @override
  String get achievementNoExtraTube => '无额外试管';

  @override
  String get achievementNoExtraTubeDesc => '不添加试管完成';

  @override
  String get undo => '撤销';

  @override
  String get restart => '重开';

  @override
  String get hint => '提示';

  @override
  String get addTube => '添加试管';

  @override
  String get perfect => '完美！';

  @override
  String levelCompleted(int level) {
    final intl.NumberFormat levelNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String levelString = levelNumberFormat.format(level);

    return '第$levelString关完成';
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

    return '$movesString步  •  Par $parString';
  }

  @override
  String get newRecordAchievements => '新纪录 • 成就';

  @override
  String get achievementsHeader => '成就';

  @override
  String assistancePenalty(int amount) {
    final intl.NumberFormat amountNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String amountString = amountNumberFormat.format(amount);

    return '提示惩罚：-$amountString金币';
  }

  @override
  String get doubleReward => '双倍奖励';

  @override
  String get goToLevels => '关卡';

  @override
  String get continueNext => '继续';

  @override
  String get backToLevelSelect => '返回选关';

  @override
  String get bestLabel => '最佳';

  @override
  String get flowCombo => '连击组合';

  @override
  String get extraTube => '额外试管';

  @override
  String get fullReward => '全额奖励';

  @override
  String get halfReward => '一半奖励';

  @override
  String get quarterReward => '四分之一奖励';

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
  String get newRule => '新规则';

  @override
  String get gotItStart => '知道了，开始';

  @override
  String get firstTimeTipOnly => '仅首次显示';

  @override
  String get mechanicBasicsTitle => '玩法说明';

  @override
  String get mechanicBasicsHeadline => '选试管，倒液体';

  @override
  String get mechanicBasicsBody => '点击试管选择顶部颜色。再点击目标试管 — 同色可堆叠，或倒入空试管。';

  @override
  String get mechanicBasicsTip => '目标：每个满试管只有一种颜色。空试管是辅助。';

  @override
  String get mechanicBasicsCaption => '选择 → 倾倒 → 分类';

  @override
  String get mechanicHiddenTitle => '隐藏试管';

  @override
  String get mechanicHiddenHeadline => '仅可见顶部颜色';

  @override
  String get mechanicHiddenBody => '此试管只能看到顶部颜色。下层在顶部清空前保持模糊。';

  @override
  String get mechanicHiddenTip => '别盲倒 — 先清顶部，再看下层，再决定。';

  @override
  String get mechanicHiddenCaption => '顶部可见 • 下层模糊';

  @override
  String get mechanicMixTitle => '颜色混合';

  @override
  String get mechanicMixHeadline => '两色合成新色';

  @override
  String get mechanicMixBody => '将特定颜色相互倾倒以混合新色。遵循上方方程式。';

  @override
  String get mechanicMixTip => '数量须匹配，目标需有空位。';

  @override
  String get mechanicMixCaption => '红 + 黄 = 橙';

  @override
  String get mechanicFrozenTitle => '冰冻试管';

  @override
  String get mechanicFrozenHeadline => '暂时无法操作';

  @override
  String get mechanicFrozenBody => '冰冻试管无法倒入或倒出。足够步数后冰会融化。';

  @override
  String get mechanicFrozenTip => '用其他试管开路；冰化后立即使用。';

  @override
  String get mechanicFrozenCaption => '等待步数 → 冰融化';

  @override
  String get mechanicLockedTitle => '锁定试管';

  @override
  String get mechanicLockedHeadline => '先完成其他试管';

  @override
  String get mechanicLockedBody => '锁定试管在完成指定数量试管前保持关闭。';

  @override
  String get mechanicLockedTip => '先完成容易的试管，再使用锁定空间。';

  @override
  String get mechanicLockedCaption => '完成 → 解锁';

  @override
  String get mechanicHeatedTitle => '加热试管';

  @override
  String get mechanicHeatedHeadline => '蒸发多余液体';

  @override
  String get mechanicHeatedBody => '倒入加热器的液体会消失。加热次数有限 — 通常用于多余颜色。';

  @override
  String get mechanicHeatedTip => '加热用尽后无法倒入。尽早清理多余。';

  @override
  String get mechanicHeatedCaption => '多余 → 蒸发';

  @override
  String get mechanicValveTitle => '单向阀门';

  @override
  String get mechanicValveHeadline => '只能倒入';

  @override
  String get mechanicValveBody => '可向阀门试管倒入但无法取出。如同永久存储。';

  @override
  String get mechanicValveTip => '错误颜色可能卡住。谨慎填充阀门。';

  @override
  String get mechanicValveCaption => '仅入口';

  @override
  String get mechanicPortalTitle => '传送门对';

  @override
  String get mechanicPortalHeadline => '进一个，出另一个';

  @override
  String get mechanicPortalBody => '倒入一个传送门，液体出现在配对端。两管相连。';

  @override
  String get mechanicPortalTip => '瞄准一个传送门 — 填充发生在另一端。';

  @override
  String get mechanicPortalCaption => 'A进 → B出';

  @override
  String get mechanicBombTitle => '炸弹试管';

  @override
  String get mechanicBombHeadline => '计时前完成';

  @override
  String get mechanicBombBody => '标记试管有倒计时。归零前用单色填满，否则失败。';

  @override
  String get mechanicBombTip => '先确保炸弹试管，再分类其余。';

  @override
  String get mechanicBombCaption => '倒计时前填满';

  @override
  String get mechanicNarrowTitle => '窄试管';

  @override
  String get mechanicNarrowHeadline => '容量2缓冲';

  @override
  String get mechanicNarrowBody => '本关有最多2单位的短辅助试管。用于紧凑操作。';

  @override
  String get mechanicNarrowTip => '完成时需为空。持有2单位不算完成 — 再次清空。';

  @override
  String get mechanicNarrowCaption => '容量2 • 空管完成';

  @override
  String get mechanicMovingTitle => '移动布局';

  @override
  String get mechanicMovingHeadline => '试管换位';

  @override
  String get mechanicMovingBody => '每几步棋盘移动，试管顺序改变。同样试管 — 新位置。';

  @override
  String get mechanicMovingTip => '用 id 和颜色跟踪试管。';

  @override
  String get mechanicMovingCaption => '每3步移动';

  @override
  String get mechanicBossTitle => 'BOSS实验';

  @override
  String get mechanicBossHeadline => '更严规则';

  @override
  String get mechanicBossBody => 'Boss关有步数限制，可能组合多种特殊规则。有计划地玩。';

  @override
  String get mechanicBossTip => '贴近 Par；避免浪费撤销和倾倒。';

  @override
  String get mechanicBossCaption => '限制 + 特殊规则';

  @override
  String levelNumber(int level) {
    final intl.NumberFormat levelNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String levelString = levelNumberFormat.format(level);

    return '第$levelString关';
  }

  @override
  String get movesLabel => '步数';

  @override
  String headerMeta(int par) {
    final intl.NumberFormat parNumberFormat = intl.NumberFormat.decimalPattern(
      localeName,
    );
    final String parString = parNumberFormat.format(par);

    return 'Par $parString  •  无限重试  •  离线';
  }

  @override
  String get pauseTooltip => '暂停';

  @override
  String get resumeTooltip => '继续';

  @override
  String get settingsTooltip => '设置';

  @override
  String get pausedTitle => '游戏暂停';

  @override
  String get pausedBody => '计时器和倒计时音效已暂停。';

  @override
  String get resumeCta => '继续';

  @override
  String tempoBadge(String difficulty, int seconds) {
    final intl.NumberFormat secondsNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String secondsString = secondsNumberFormat.format(seconds);

    return '$difficulty  $secondsString秒';
  }

  @override
  String get easyRelaxed => '简单  •  轻松';

  @override
  String bossMovesLeft(int moves) {
    final intl.NumberFormat movesNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String movesString = movesNumberFormat.format(moves);

    return 'BOSS • $movesString步';
  }

  @override
  String get hiddenLiquid => '隐藏液体';

  @override
  String get frozenTube => '冰冻试管';

  @override
  String get iceCleared => '冰已清除';

  @override
  String get lockedTube => '锁定试管';

  @override
  String get lockOpened => '锁已打开';

  @override
  String heatBurn(int remaining) {
    final intl.NumberFormat remainingNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String remainingString = remainingNumberFormat.format(remaining);

    return '烧掉多余 • $remainingString';
  }

  @override
  String heatTube(int remaining) {
    final intl.NumberFormat remainingNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String remainingString = remainingNumberFormat.format(remaining);

    return '加热试管 • $remainingString';
  }

  @override
  String get portalPair => '传送门对';

  @override
  String get oneWayValve => '单向阀门';

  @override
  String bombCountdown(int remaining) {
    final intl.NumberFormat remainingNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String remainingString = remainingNumberFormat.format(remaining);

    return '炸弹 • $remainingString';
  }

  @override
  String movingEvery(int moves) {
    final intl.NumberFormat movesNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String movesString = movesNumberFormat.format(moves);

    return '每$movesString步移动';
  }

  @override
  String get narrowTubeCap2 => '窄试管 • 容量2';

  @override
  String get hiddenMix => '隐藏混合';

  @override
  String get portalFlow => '传送门连击！';

  @override
  String get tubesShifted => '试管已移动!';

  @override
  String bombMovesLeft(int remaining) {
    final intl.NumberFormat remainingNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String remainingString = remainingNumberFormat.format(remaining);

    return '炸弹: $remainingString步!';
  }

  @override
  String get iceBroken => '冰破了！冰冻试管现在可用。';

  @override
  String get lockUnlocked => '锁打开了！新试管已就绪。';

  @override
  String get tubeFrozenMsg => '此试管已冻结。几步正确操作后会解冻。';

  @override
  String get tubeLockedMsg => '此试管已锁定。请先完成另一种颜色。';

  @override
  String get valveOneWayMsg => '金色阀门是单向的：可以倒入，不能取出。';

  @override
  String get heatExhaustedMsg => '此加热器燃烧次数已用尽。';

  @override
  String insufficientCoins(int cost) {
    final intl.NumberFormat costNumberFormat = intl.NumberFormat.decimalPattern(
      localeName,
    );
    final String costString = costNumberFormat.format(cost);

    return '金币不足 ($costString)。';
  }

  @override
  String get adFailed => '广告未能完成。';

  @override
  String reopenPaid(int cost, String title) {
    final intl.NumberFormat costNumberFormat = intl.NumberFormat.decimalPattern(
      localeName,
    );
    final String costString = costNumberFormat.format(cost);

    return '-$costString金币 • $title已重新打开';
  }

  @override
  String reopenAd(String title) {
    return '通过广告打开 • $title';
  }

  @override
  String get tipQuotaEmpty => '本关提示已用完。';

  @override
  String get rewardsNotReady => '奖励系统未就绪。';

  @override
  String get freeHintUsed => '已使用免费提示。';

  @override
  String hintCost(int cost) {
    final intl.NumberFormat costNumberFormat = intl.NumberFormat.decimalPattern(
      localeName,
    );
    final String costString = costNumberFormat.format(cost);

    return '提示: -$costString金币';
  }

  @override
  String get noHintAvailable => '目前没有可用提示。';

  @override
  String get assistHint => '提示';

  @override
  String get assistUndo => '撤销';

  @override
  String get freeHintEarned => '获得1次免费提示。';

  @override
  String get freeUndoEarned => '获得1次免费撤销。';

  @override
  String failureCredit(int deducted, int floor) {
    final intl.NumberFormat deductedNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String deductedString = deductedNumberFormat.format(deducted);
    final intl.NumberFormat floorNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String floorString = floorNumberFormat.format(floor);

    return '-$deductedString积分 • 失败尝试 (最低$floorString)';
  }

  @override
  String debtLimitToast(int floor) {
    final intl.NumberFormat floorNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String floorString = floorNumberFormat.format(floor);

    return '债务上限 ($floorString)。看广告重试。';
  }

  @override
  String restartCredit(int deducted) {
    final intl.NumberFormat deductedNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String deductedString = deductedNumberFormat.format(deducted);

    return '-$deductedString积分 • 重开';
  }

  @override
  String insufficientCoinsTitle(int cost) {
    final intl.NumberFormat costNumberFormat = intl.NumberFormat.decimalPattern(
      localeName,
    );
    final String costString = costNumberFormat.format(cost);

    return '金币不足 ($costString)';
  }

  @override
  String watchAdEarnAssist(String label) {
    return '看广告获得1次免费$label。';
  }

  @override
  String debtLimitTitle(int floor) {
    final intl.NumberFormat floorNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String floorString = floorNumberFormat.format(floor);

    return '债务上限 ($floorString)';
  }

  @override
  String get debtLimitBody => '已达债务下限。看广告再试。';

  @override
  String get tipUnlockPaidBody => '你已免费看过此规则一次。\n再次阅读需花费金币。';

  @override
  String get tipUnlockAdBody => '金币不足。\n看广告免费打开此提示。';

  @override
  String get yourBalance => '余额：';

  @override
  String payCost(int cost) {
    final intl.NumberFormat costNumberFormat = intl.NumberFormat.decimalPattern(
      localeName,
    );
    final String costString = costNumberFormat.format(cost);

    return '支付$costString';
  }

  @override
  String get timeUp => '时间到';

  @override
  String get bombExploded => '炸弹爆炸!';

  @override
  String get moveLimitReached => '步数上限已达';

  @override
  String failurePenaltyLine(int amount, int floor) {
    final intl.NumberFormat amountNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String amountString = amountNumberFormat.format(amount);
    final intl.NumberFormat floorNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String floorString = floorNumberFormat.format(floor);

    return '失败: -$amountString积分 (债务最低$floorString)。';
  }

  @override
  String get tryEasyModeHint => '可在简单模式关闭时间压力。';

  @override
  String get bombFailHint => '红色倒计时结束前用单色填满标记试管。';

  @override
  String get bossFailHint => 'Boss实验超出步数限制。谨慎规划混合与空试管。';

  @override
  String get debtLimitRetryHint => '已达债务上限 — 看广告重试。';

  @override
  String get retryWithAd => '看广告 • 重试';

  @override
  String get retryAgain => '再试一次';

  @override
  String get vaporized => '已蒸发!';

  @override
  String colorClearedBonus(String color) {
    return '$color清除  •  +4秒';
  }

  @override
  String get newColorFormed => '新颜色形成!';

  @override
  String colorBonusSeconds(String color) {
    return '$color  •  +6秒';
  }

  @override
  String get legendaryFlow => '传奇连击！';

  @override
  String flowMultiplier(int combo) {
    final intl.NumberFormat comboNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String comboString = comboNumberFormat.format(combo);

    return '连击 x$comboString';
  }

  @override
  String get legendaryFlowLabel => '传奇连击';

  @override
  String flowLabel(int multiplier) {
    final intl.NumberFormat multiplierNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String multiplierString = multiplierNumberFormat.format(multiplier);

    return '连击 x$multiplierString';
  }

  @override
  String tubeSemantics(String id, int units) {
    final intl.NumberFormat unitsNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String unitsString = unitsNumberFormat.format(units);

    return '试管$id，已填$unitsString单位';
  }

  @override
  String get colorRed => '红';

  @override
  String get colorBlue => '蓝';

  @override
  String get colorPurple => '紫';

  @override
  String get colorYellow => '黄';

  @override
  String get colorGreen => '绿';

  @override
  String get colorOrange => '橙';

  @override
  String get colorPink => '粉';

  @override
  String get colorCyan => '青';

  @override
  String get colorLime => '青柠';

  @override
  String get colorBrown => '棕';

  @override
  String get skipLevelOfferBody => '这一关很难。观看广告即可解锁下一关。';

  @override
  String get skipLevelCta => '看广告 • 跳过';

  @override
  String get skipLevelNote => '之后还可以回来通关这一关。';

  @override
  String get skipLevelUnlocked => '已解锁下一关！';

  @override
  String get developerModeTitle => '开发者模式';

  @override
  String get developerModePasswordHint => '密码';

  @override
  String get developerModeUnlock => '解锁';

  @override
  String get developerModeEnabled => '已解锁全部关卡用于测试。';

  @override
  String get developerModeWrongPassword => '密码错误';

  @override
  String get developerModeActive => '开发者模式已开启';

  @override
  String get developerModeDisable => '关闭开发者模式';
}

/// The translations for Chinese, as used in Taiwan (`zh_TW`).
class AppLocalizationsZhTw extends AppLocalizationsZh {
  AppLocalizationsZhTw() : super('zh_TW');

  @override
  String get appTitle => 'Liquid Sort Puzzle';

  @override
  String get brandName => 'Liquid Sort';

  @override
  String get brandPuzzle => 'PUZZLE';

  @override
  String get splashTagline => '分類顏色，清空思緒。';

  @override
  String get back => '返回';

  @override
  String get cancel => '取消';

  @override
  String get play => '開始';

  @override
  String get settings => '設定';

  @override
  String get home => '主頁';

  @override
  String get levels => '關卡';

  @override
  String get collection => '收藏';

  @override
  String get achievements => '成就';

  @override
  String get continueLabel => '繼續';

  @override
  String get pause => '暫停';

  @override
  String get close => '關閉';

  @override
  String get free => '免費';

  @override
  String get coin => '金幣';

  @override
  String get coins => '金幣';

  @override
  String get secondsShort => '秒';

  @override
  String get moves => '步數';

  @override
  String get best => '最佳';

  @override
  String get par => 'Par';

  @override
  String get locked => '已鎖定';

  @override
  String get ad => '廣告';

  @override
  String get watchAd => '觀看廣告';

  @override
  String get claiming => '領取中...';

  @override
  String get homeTagline => '聰明分類，混合顏色！';

  @override
  String get progressAndAchievements => '進度與成就';

  @override
  String get progressTapHint => '點擊：統計與徽章';

  @override
  String get dailyReward => '每日獎勵';

  @override
  String get rewardReady => '獎勵已就緒';

  @override
  String get comeTomorrow => '明天再來';

  @override
  String get collectionSubtitle => '瀏覽主題';

  @override
  String get premiumThemes => '進階主題';

  @override
  String get premiumThemesBody => '經典、銀河、海洋、霓虹和黃金時代主題在此解鎖。';

  @override
  String get playCta => '開始';

  @override
  String dailyClaimSnack(int coins, String hintSuffix) {
    final intl.NumberFormat coinsNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String coinsString = coinsNumberFormat.format(coins);

    return '+$coinsString金幣$hintSuffix';
  }

  @override
  String freeHintSuffix(int count) {
    final intl.NumberFormat countNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String countString = countNumberFormat.format(count);

    return ' + $countString次免費提示';
  }

  @override
  String get levelMapTitle => '關卡地圖';

  @override
  String levelsCompletedProgress(int completed, int total) {
    final intl.NumberFormat completedNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String completedString = completedNumberFormat.format(completed);
    final intl.NumberFormat totalNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String totalString = totalNumberFormat.format(total);

    return '已完成$completedString/$totalString關';
  }

  @override
  String get newExperimentsBanner => '新實驗\n傳送門 • 炸彈 • 閥門 • 反應爐';

  @override
  String get settingsTitle => '設定';

  @override
  String get settingsSubtitleAudio => '聲音與觸覺控制';

  @override
  String get settingsSubtitleVisual => '顏色、圖案與動畫';

  @override
  String get settingsSubtitleGeneral => '難度與一般偏好';

  @override
  String get sectionAudioFeedback => '聲音與回饋';

  @override
  String get soundEffects => '音效';

  @override
  String get soundEffectsSubtitle => '選擇、傾倒與成功音效';

  @override
  String get backgroundMusic => '背景音樂';

  @override
  String get backgroundMusicSubtitle => '舒緩宇宙氛圍音樂';

  @override
  String get haptics => '觸覺回饋';

  @override
  String get hapticsSubtitle => '點擊時的輕回饋';

  @override
  String get sectionVisual => '視覺偏好';

  @override
  String get neonPalette => '霓虹液體配色';

  @override
  String get neonPaletteSubtitle => '遊戲中使用的鮮豔霓虹色';

  @override
  String get colorAccessibility => '顏色無障礙';

  @override
  String get colorAccessibilitySubtitle => '為液體添加細微圖案';

  @override
  String get reducedAnimations => '減少動畫';

  @override
  String get reducedAnimationsSubtitle => '加快傾倒動作';

  @override
  String get sectionDifficulty => '難度與時間壓力';

  @override
  String get offlineProgress => '離線進度';

  @override
  String get offlineProgressBody => '你的關卡和設定已安全保存在本裝置。';

  @override
  String settingsVersion(String version) {
    return 'Liquid Sort Puzzle  •  v$version';
  }

  @override
  String get tabAudio => '音訊';

  @override
  String get tabVisual => '視覺';

  @override
  String get tabGeneral => '設定';

  @override
  String get language => '語言';

  @override
  String get languageSubtitle => '選擇應用語言';

  @override
  String get languageSystem => '跟隨系統';

  @override
  String get languageSystemSubtitle => '使用手機或平板語言';

  @override
  String get difficultyEasy => '簡單';

  @override
  String get difficultyNormal => '普通';

  @override
  String get difficultyHard => '困難';

  @override
  String get difficultyEasyDesc => '無時間壓力 • 金幣較少 • 更多插頁廣告';

  @override
  String get difficultyNormalDesc => '適中計時，輕度壓力';

  @override
  String get difficultyHardDesc => '計時很短，失誤-5秒';

  @override
  String get dailyRewardTitle => '每日獎勵';

  @override
  String get dailyRewardClaimBody => '領取今日禮物。每天回來，獎勵會成長。';

  @override
  String get dailyRewardClaimedBody => '今日已領取。明天再來。';

  @override
  String dailyStreak(int streak) {
    final intl.NumberFormat streakNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String streakString = streakNumberFormat.format(streak);

    return '連續：$streakString天';
  }

  @override
  String dayChip(int day) {
    final intl.NumberFormat dayNumberFormat = intl.NumberFormat.decimalPattern(
      localeName,
    );
    final String dayString = dayNumberFormat.format(day);

    return '第$dayString天';
  }

  @override
  String get plusHint => '+提示';

  @override
  String get claimDailyReward => '領取今日獎勵';

  @override
  String get comeAgainTomorrow => '明天再來';

  @override
  String get achievementsTitle => '成就';

  @override
  String get achGreetingEmpty => '準備就緒。完成第一關，徽章將開始在此累積。';

  @override
  String get achGreetingFlow => '你的連擊火熱 — 已經摸清了遊戲節奏。';

  @override
  String get achGreetingStars => '你的星星收藏閃耀。繼續，傳奇。';

  @override
  String get achGreetingVeteran => '節奏不錯。實驗室正跟上你的 tempo。';

  @override
  String get achGreetingProgress => '進展紮實。每一關乾淨完成都讓你更熟練。';

  @override
  String get achGreetingStarter => '開局不錯。再幾關，徽章就會湧來。';

  @override
  String get statLevel => '關卡';

  @override
  String get statStars => '星星';

  @override
  String get statCoins => '金幣';

  @override
  String get statFlow => '連擊';

  @override
  String get statUnlocked => '已解鎖';

  @override
  String get achievementLocked => '已鎖定';

  @override
  String get achievementPerfectSort => '完美分類';

  @override
  String get achievementPerfectSortDesc => '在 Par 內且無輔助完成';

  @override
  String get achievementUnderPar => '低於 Par';

  @override
  String get achievementUnderParDesc => '不超過目標步數';

  @override
  String get achievementNoUndo => '無撤销';

  @override
  String get achievementNoUndoDesc => '不使用撤销完成';

  @override
  String get achievementNoHint => '無提示';

  @override
  String get achievementNoHintDesc => '不使用提示完成';

  @override
  String get achievementFlowMaster => '連擊大師';

  @override
  String get achievementFlowMasterDesc => '單關達到連擊 x5';

  @override
  String get achievementNewRecord => '新紀錄';

  @override
  String get achievementNewRecordDesc => '打破最佳步數';

  @override
  String get achievementFirstTry => '一次過';

  @override
  String get achievementFirstTryDesc => '不重開完成';

  @override
  String get achievementNoExtraTube => '無額外試管';

  @override
  String get achievementNoExtraTubeDesc => '不添加試管完成';

  @override
  String get undo => '撤销';

  @override
  String get restart => '重開';

  @override
  String get hint => '提示';

  @override
  String get addTube => '添加試管';

  @override
  String get perfect => '完美！';

  @override
  String levelCompleted(int level) {
    final intl.NumberFormat levelNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String levelString = levelNumberFormat.format(level);

    return '第$levelString關完成';
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

    return '$movesString步  •  Par $parString';
  }

  @override
  String get newRecordAchievements => '新紀錄 • 成就';

  @override
  String get achievementsHeader => '成就';

  @override
  String assistancePenalty(int amount) {
    final intl.NumberFormat amountNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String amountString = amountNumberFormat.format(amount);

    return '提示懲罰：-$amountString金幣';
  }

  @override
  String get doubleReward => '雙倍獎勵';

  @override
  String get goToLevels => '關卡';

  @override
  String get continueNext => '繼續';

  @override
  String get backToLevelSelect => '返回選關';

  @override
  String get bestLabel => '最佳';

  @override
  String get flowCombo => '連擊組合';

  @override
  String get extraTube => '額外試管';

  @override
  String get fullReward => '全額獎勵';

  @override
  String get halfReward => '一半獎勵';

  @override
  String get quarterReward => '四分之一獎勵';

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
  String get newRule => '新規則';

  @override
  String get gotItStart => '知道了，開始';

  @override
  String get firstTimeTipOnly => '僅首次顯示';

  @override
  String get mechanicBasicsTitle => '玩法說明';

  @override
  String get mechanicBasicsHeadline => '選試管，倒液體';

  @override
  String get mechanicBasicsBody => '點擊試管選擇頂部顏色。再點擊目標試管 — 同色可堆疊，或倒入空試管。';

  @override
  String get mechanicBasicsTip => '目標：每個滿試管只有一種顏色。空試管是輔助。';

  @override
  String get mechanicBasicsCaption => '選擇 → 傾倒 → 分類';

  @override
  String get mechanicHiddenTitle => '隱藏試管';

  @override
  String get mechanicHiddenHeadline => '僅可見頂部顏色';

  @override
  String get mechanicHiddenBody => '此試管只能看到頂部顏色。下層在頂部清空前保持模糊。';

  @override
  String get mechanicHiddenTip => '別盲倒 — 先清頂部，再看下層，再決定。';

  @override
  String get mechanicHiddenCaption => '頂部可見 • 下層模糊';

  @override
  String get mechanicMixTitle => '顏色混合';

  @override
  String get mechanicMixHeadline => '兩色合成新色';

  @override
  String get mechanicMixBody => '將特定顏色相互傾倒以混合新色。遵循上方方程式。';

  @override
  String get mechanicMixTip => '數量須匹配，目標需有空位。';

  @override
  String get mechanicMixCaption => '紅 + 黃 = 橙';

  @override
  String get mechanicFrozenTitle => '冰凍試管';

  @override
  String get mechanicFrozenHeadline => '暫時無法操作';

  @override
  String get mechanicFrozenBody => '冰凍試管無法倒入或倒出。足夠步數後冰會融化。';

  @override
  String get mechanicFrozenTip => '用其他試管開路；冰化後立即使用。';

  @override
  String get mechanicFrozenCaption => '等待步數 → 冰融化';

  @override
  String get mechanicLockedTitle => '鎖定試管';

  @override
  String get mechanicLockedHeadline => '先完成其他試管';

  @override
  String get mechanicLockedBody => '鎖定試管在完成指定數量試管前保持關閉。';

  @override
  String get mechanicLockedTip => '先完成容易的試管，再使用鎖定空間。';

  @override
  String get mechanicLockedCaption => '完成 → 解鎖';

  @override
  String get mechanicHeatedTitle => '加熱試管';

  @override
  String get mechanicHeatedHeadline => '蒸發多餘液體';

  @override
  String get mechanicHeatedBody => '倒入加熱器的液體會消失。加熱次數有限 — 通常用於多餘顏色。';

  @override
  String get mechanicHeatedTip => '加熱用盡後無法倒入。尽早清理多餘。';

  @override
  String get mechanicHeatedCaption => '多餘 → 蒸發';

  @override
  String get mechanicValveTitle => '單向閥門';

  @override
  String get mechanicValveHeadline => '只能倒入';

  @override
  String get mechanicValveBody => '可向閥門試管倒入但無法取出。如同永久儲存。';

  @override
  String get mechanicValveTip => '錯誤顏色可能卡住。謹慎填充閥門。';

  @override
  String get mechanicValveCaption => '僅入口';

  @override
  String get mechanicPortalTitle => '傳送門對';

  @override
  String get mechanicPortalHeadline => '進一個，出另一個';

  @override
  String get mechanicPortalBody => '倒入一個傳送門，液體出現在配對端。兩管相連。';

  @override
  String get mechanicPortalTip => '瞄準一個傳送門 — 填充發生在另一端。';

  @override
  String get mechanicPortalCaption => 'A進 → B出';

  @override
  String get mechanicBombTitle => '炸彈試管';

  @override
  String get mechanicBombHeadline => '計時前完成';

  @override
  String get mechanicBombBody => '標記試管有倒數。歸零前用單色填滿，否則失敗。';

  @override
  String get mechanicBombTip => '先確保炸彈試管，再分類其餘。';

  @override
  String get mechanicBombCaption => '倒數前填滿';

  @override
  String get mechanicNarrowTitle => '窄試管';

  @override
  String get mechanicNarrowHeadline => '容量2緩衝';

  @override
  String get mechanicNarrowBody => '本關有最多2單位的短輔助試管。用於緊湊操作。';

  @override
  String get mechanicNarrowTip => '完成時需為空。持有2單位不算完成 — 再次清空。';

  @override
  String get mechanicNarrowCaption => '容量2 • 空管完成';

  @override
  String get mechanicMovingTitle => '移動布局';

  @override
  String get mechanicMovingHeadline => '試管換位';

  @override
  String get mechanicMovingBody => '每幾步棋盤移動，試管順序改變。同樣試管 — 新位置。';

  @override
  String get mechanicMovingTip => '用 id 和顏色追蹤試管。';

  @override
  String get mechanicMovingCaption => '每3步移動';

  @override
  String get mechanicBossTitle => 'BOSS實驗';

  @override
  String get mechanicBossHeadline => '更嚴規則';

  @override
  String get mechanicBossBody => 'Boss關有步數限制，可能組合多種特殊規則。有計畫地玩。';

  @override
  String get mechanicBossTip => '貼近 Par；避免浪費撤销和傾倒。';

  @override
  String get mechanicBossCaption => '限制 + 特殊規則';

  @override
  String levelNumber(int level) {
    final intl.NumberFormat levelNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String levelString = levelNumberFormat.format(level);

    return '第$levelString關';
  }

  @override
  String get movesLabel => '步數';

  @override
  String headerMeta(int par) {
    final intl.NumberFormat parNumberFormat = intl.NumberFormat.decimalPattern(
      localeName,
    );
    final String parString = parNumberFormat.format(par);

    return 'Par $parString  •  無限重試  •  離線';
  }

  @override
  String get pauseTooltip => '暫停';

  @override
  String get resumeTooltip => '繼續';

  @override
  String get settingsTooltip => '設定';

  @override
  String get pausedTitle => '遊戲暫停';

  @override
  String get pausedBody => '計時器和倒數音效已暫停。';

  @override
  String get resumeCta => '繼續';

  @override
  String tempoBadge(String difficulty, int seconds) {
    final intl.NumberFormat secondsNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String secondsString = secondsNumberFormat.format(seconds);

    return '$difficulty  $secondsString秒';
  }

  @override
  String get easyRelaxed => '簡單  •  輕鬆';

  @override
  String bossMovesLeft(int moves) {
    final intl.NumberFormat movesNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String movesString = movesNumberFormat.format(moves);

    return 'BOSS • $movesString步';
  }

  @override
  String get hiddenLiquid => '隱藏液體';

  @override
  String get frozenTube => '冰凍試管';

  @override
  String get iceCleared => '冰已清除';

  @override
  String get lockedTube => '鎖定試管';

  @override
  String get lockOpened => '鎖已打開';

  @override
  String heatBurn(int remaining) {
    final intl.NumberFormat remainingNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String remainingString = remainingNumberFormat.format(remaining);

    return '燒掉多餘 • $remainingString';
  }

  @override
  String heatTube(int remaining) {
    final intl.NumberFormat remainingNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String remainingString = remainingNumberFormat.format(remaining);

    return '加熱試管 • $remainingString';
  }

  @override
  String get portalPair => '傳送門對';

  @override
  String get oneWayValve => '單向閥門';

  @override
  String bombCountdown(int remaining) {
    final intl.NumberFormat remainingNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String remainingString = remainingNumberFormat.format(remaining);

    return '炸彈 • $remainingString';
  }

  @override
  String movingEvery(int moves) {
    final intl.NumberFormat movesNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String movesString = movesNumberFormat.format(moves);

    return '每$movesString步移動';
  }

  @override
  String get narrowTubeCap2 => '窄試管 • 容量2';

  @override
  String get hiddenMix => '隱藏混合';

  @override
  String get portalFlow => '傳送門連擊！';

  @override
  String get tubesShifted => '試管已移動!';

  @override
  String bombMovesLeft(int remaining) {
    final intl.NumberFormat remainingNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String remainingString = remainingNumberFormat.format(remaining);

    return '炸彈: $remainingString步!';
  }

  @override
  String get iceBroken => '冰破了！冰凍試管現在可用。';

  @override
  String get lockUnlocked => '鎖打開了！新試管已就緒。';

  @override
  String get tubeFrozenMsg => '此試管已凍結。幾步正確操作後會解凍。';

  @override
  String get tubeLockedMsg => '此試管已鎖定。請先完成另一種顏色。';

  @override
  String get valveOneWayMsg => '金色閥門是單向的：可以倒入，不能取出。';

  @override
  String get heatExhaustedMsg => '此加熱器燃燒次數已用盡。';

  @override
  String insufficientCoins(int cost) {
    final intl.NumberFormat costNumberFormat = intl.NumberFormat.decimalPattern(
      localeName,
    );
    final String costString = costNumberFormat.format(cost);

    return '金幣不足 ($costString)。';
  }

  @override
  String get adFailed => '廣告未能完成。';

  @override
  String reopenPaid(int cost, String title) {
    final intl.NumberFormat costNumberFormat = intl.NumberFormat.decimalPattern(
      localeName,
    );
    final String costString = costNumberFormat.format(cost);

    return '-$costString金幣 • $title已重新打開';
  }

  @override
  String reopenAd(String title) {
    return '透過廣告打開 • $title';
  }

  @override
  String get tipQuotaEmpty => '本關提示已用完。';

  @override
  String get rewardsNotReady => '獎勵系統未就緒。';

  @override
  String get freeHintUsed => '已使用免費提示。';

  @override
  String hintCost(int cost) {
    final intl.NumberFormat costNumberFormat = intl.NumberFormat.decimalPattern(
      localeName,
    );
    final String costString = costNumberFormat.format(cost);

    return '提示: -$costString金幣';
  }

  @override
  String get noHintAvailable => '目前沒有可用提示。';

  @override
  String get assistHint => '提示';

  @override
  String get assistUndo => '撤销';

  @override
  String get freeHintEarned => '獲得1次免費提示。';

  @override
  String get freeUndoEarned => '獲得1次免費撤销。';

  @override
  String failureCredit(int deducted, int floor) {
    final intl.NumberFormat deductedNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String deductedString = deductedNumberFormat.format(deducted);
    final intl.NumberFormat floorNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String floorString = floorNumberFormat.format(floor);

    return '-$deductedString積分 • 失敗嘗試 (最低$floorString)';
  }

  @override
  String debtLimitToast(int floor) {
    final intl.NumberFormat floorNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String floorString = floorNumberFormat.format(floor);

    return '債務上限 ($floorString)。看廣告重試。';
  }

  @override
  String restartCredit(int deducted) {
    final intl.NumberFormat deductedNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String deductedString = deductedNumberFormat.format(deducted);

    return '-$deductedString積分 • 重開';
  }

  @override
  String insufficientCoinsTitle(int cost) {
    final intl.NumberFormat costNumberFormat = intl.NumberFormat.decimalPattern(
      localeName,
    );
    final String costString = costNumberFormat.format(cost);

    return '金幣不足 ($costString)';
  }

  @override
  String watchAdEarnAssist(String label) {
    return '看廣告獲得1次免費$label。';
  }

  @override
  String debtLimitTitle(int floor) {
    final intl.NumberFormat floorNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String floorString = floorNumberFormat.format(floor);

    return '債務上限 ($floorString)';
  }

  @override
  String get debtLimitBody => '已達債務下限。看廣告再試。';

  @override
  String get tipUnlockPaidBody => '你已免費看過此規則一次。\n再次閱讀需花費金幣。';

  @override
  String get tipUnlockAdBody => '金幣不足。\n看廣告免費打開此提示。';

  @override
  String get yourBalance => '餘額：';

  @override
  String payCost(int cost) {
    final intl.NumberFormat costNumberFormat = intl.NumberFormat.decimalPattern(
      localeName,
    );
    final String costString = costNumberFormat.format(cost);

    return '支付$costString';
  }

  @override
  String get timeUp => '時間到';

  @override
  String get bombExploded => '炸彈爆炸!';

  @override
  String get moveLimitReached => '步數上限已達';

  @override
  String failurePenaltyLine(int amount, int floor) {
    final intl.NumberFormat amountNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String amountString = amountNumberFormat.format(amount);
    final intl.NumberFormat floorNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String floorString = floorNumberFormat.format(floor);

    return '失敗: -$amountString積分 (債務最低$floorString)。';
  }

  @override
  String get tryEasyModeHint => '可在簡單模式關閉時間壓力。';

  @override
  String get bombFailHint => '紅色倒數結束前用單色填滿標記試管。';

  @override
  String get bossFailHint => 'Boss實驗超出步數限制。謹慎規劃混合與空試管。';

  @override
  String get debtLimitRetryHint => '已達債務上限 — 看廣告重試。';

  @override
  String get retryWithAd => '看廣告 • 重試';

  @override
  String get retryAgain => '再試一次';

  @override
  String get vaporized => '已蒸發!';

  @override
  String colorClearedBonus(String color) {
    return '$color清除  •  +4秒';
  }

  @override
  String get newColorFormed => '新顏色形成!';

  @override
  String colorBonusSeconds(String color) {
    return '$color  •  +6秒';
  }

  @override
  String get legendaryFlow => '傳奇連擊！';

  @override
  String flowMultiplier(int combo) {
    final intl.NumberFormat comboNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String comboString = comboNumberFormat.format(combo);

    return '連擊 x$comboString';
  }

  @override
  String get legendaryFlowLabel => '傳奇連擊';

  @override
  String flowLabel(int multiplier) {
    final intl.NumberFormat multiplierNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String multiplierString = multiplierNumberFormat.format(multiplier);

    return '連擊 x$multiplierString';
  }

  @override
  String tubeSemantics(String id, int units) {
    final intl.NumberFormat unitsNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String unitsString = unitsNumberFormat.format(units);

    return '試管$id，已填$unitsString單位';
  }

  @override
  String get colorRed => '紅';

  @override
  String get colorBlue => '藍';

  @override
  String get colorPurple => '紫';

  @override
  String get colorYellow => '黃';

  @override
  String get colorGreen => '綠';

  @override
  String get colorOrange => '橙';

  @override
  String get colorPink => '粉';

  @override
  String get colorCyan => '青';

  @override
  String get colorLime => '青檸';

  @override
  String get colorBrown => '棕';

  @override
  String get skipLevelOfferBody => '這一關很難。觀看廣告即可解鎖下一關。';

  @override
  String get skipLevelCta => '看廣告 • 跳過';

  @override
  String get skipLevelNote => '之後還可以回來通關這一關。';

  @override
  String get skipLevelUnlocked => '已解鎖下一關！';

  @override
  String get developerModeTitle => '開發者模式';

  @override
  String get developerModePasswordHint => '密碼';

  @override
  String get developerModeUnlock => '解鎖';

  @override
  String get developerModeEnabled => '已解鎖全部關卡用於測試。';

  @override
  String get developerModeWrongPassword => '密碼錯誤';

  @override
  String get developerModeActive => '開發者模式已開啟';

  @override
  String get developerModeDisable => '關閉開發者模式';
}
