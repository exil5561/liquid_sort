// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Japanese (`ja`).
class AppLocalizationsJa extends AppLocalizations {
  AppLocalizationsJa([String locale = 'ja']) : super(locale);

  @override
  String get appTitle => 'Liquid Sort Puzzle';

  @override
  String get brandName => 'Liquid Sort';

  @override
  String get brandPuzzle => 'PUZZLE';

  @override
  String get splashTagline => '色を分けて、心をすっきり。';

  @override
  String get back => '戻る';

  @override
  String get cancel => 'キャンセル';

  @override
  String get play => 'プレイ';

  @override
  String get settings => '設定';

  @override
  String get home => 'ホーム';

  @override
  String get levels => 'レベル';

  @override
  String get collection => 'コレクション';

  @override
  String get achievements => '実績';

  @override
  String get continueLabel => '続ける';

  @override
  String get pause => '一時停止';

  @override
  String get close => '閉じる';

  @override
  String get free => '無料';

  @override
  String get coin => 'コイン';

  @override
  String get coins => 'コイン';

  @override
  String get secondsShort => '秒';

  @override
  String get moves => '手数';

  @override
  String get best => 'ベスト';

  @override
  String get par => 'Par';

  @override
  String get locked => 'ロック';

  @override
  String get ad => '広告';

  @override
  String get watchAd => '広告を見る';

  @override
  String get claiming => '受け取り中...';

  @override
  String get homeTagline => '賢く並べて、色を混ぜよう！';

  @override
  String get progressAndAchievements => '進捗と実績';

  @override
  String get progressTapHint => 'タップ：統計とバッジ';

  @override
  String get dailyReward => 'デイリー報酬';

  @override
  String get rewardReady => '報酬準備完了';

  @override
  String get comeTomorrow => 'また明日';

  @override
  String get collectionSubtitle => 'テーマを見る';

  @override
  String get premiumThemes => 'プレミアムテーマ';

  @override
  String get premiumThemesBody =>
      'クラシック、ギャラクシー、オーシャン、ネオン、ゴールデンエイジのテーマがここで解放されます。';

  @override
  String get playCta => 'プレイ';

  @override
  String dailyClaimSnack(int coins, String hintSuffix) {
    final intl.NumberFormat coinsNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String coinsString = coinsNumberFormat.format(coins);

    return '+$coinsStringコイン$hintSuffix';
  }

  @override
  String freeHintSuffix(int count) {
    final intl.NumberFormat countNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String countString = countNumberFormat.format(count);

    return ' + 無料ヒント$countString回';
  }

  @override
  String get levelMapTitle => 'レベルマップ';

  @override
  String levelsCompletedProgress(int completed, int total) {
    final intl.NumberFormat completedNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String completedString = completedNumberFormat.format(completed);
    final intl.NumberFormat totalNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String totalString = totalNumberFormat.format(total);

    return '$completedString/$totalStringレベルクリア';
  }

  @override
  String get newExperimentsBanner => '新実験\nポータル • ボム • バルブ • リアクター';

  @override
  String get settingsTitle => '設定';

  @override
  String get settingsSubtitleAudio => 'サウンドと触覚フィードバック';

  @override
  String get settingsSubtitleVisual => '色、パターン、アニメーション';

  @override
  String get settingsSubtitleGeneral => '難易度と一般設定';

  @override
  String get sectionAudioFeedback => 'サウンドとフィードバック';

  @override
  String get soundEffects => '効果音';

  @override
  String get soundEffectsSubtitle => '選択、注ぎ、成功の音';

  @override
  String get backgroundMusic => 'BGM';

  @override
  String get backgroundMusicSubtitle => '穏やかなコスミックアンビエント';

  @override
  String get haptics => '触覚';

  @override
  String get hapticsSubtitle => 'タップ時の軽い振動';

  @override
  String get sectionVisual => '表示設定';

  @override
  String get neonPalette => 'ネオン液体パレット';

  @override
  String get neonPaletteSubtitle => 'ゲーム内の鮮やかなネオンカラー';

  @override
  String get colorAccessibility => '色のアクセシビリティ';

  @override
  String get colorAccessibilitySubtitle => '液体に控えめな模様を追加';

  @override
  String get reducedAnimations => 'アニメーション削減';

  @override
  String get reducedAnimationsSubtitle => '注ぎ動作を高速化';

  @override
  String get sectionDifficulty => '難易度と時間プレッシャー';

  @override
  String get offlineProgress => 'オフライン進捗';

  @override
  String get offlineProgressBody => 'レベルと設定はこの端末に安全に保存されます。';

  @override
  String settingsVersion(String version) {
    return 'Liquid Sort Puzzle  •  v$version';
  }

  @override
  String get tabAudio => '音声';

  @override
  String get tabVisual => '表示';

  @override
  String get tabGeneral => '設定';

  @override
  String get language => '言語';

  @override
  String get languageSubtitle => 'アプリの言語を選択';

  @override
  String get languageSystem => 'システム設定';

  @override
  String get languageSystemSubtitle => '端末の言語に合わせる';

  @override
  String get difficultyEasy => 'イージー';

  @override
  String get difficultyNormal => 'ノーマル';

  @override
  String get difficultyHard => 'ハード';

  @override
  String get difficultyEasyDesc => '時間制限なし • コイン少なめ • インタースティシャル広告多め';

  @override
  String get difficultyNormalDesc => '中程度のタイマー、軽いプレッシャー';

  @override
  String get difficultyHardDesc => '非常に短いタイマー、ミスで-5秒';

  @override
  String get dailyRewardTitle => 'デイリー報酬';

  @override
  String get dailyRewardClaimBody => '今日のギフトを受け取ろう。毎日来ると報酬が増える。';

  @override
  String get dailyRewardClaimedBody => '今日は受け取り済み。明日また来てね。';

  @override
  String dailyStreak(int streak) {
    final intl.NumberFormat streakNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String streakString = streakNumberFormat.format(streak);

    return '連続: $streakString日';
  }

  @override
  String dayChip(int day) {
    final intl.NumberFormat dayNumberFormat = intl.NumberFormat.decimalPattern(
      localeName,
    );
    final String dayString = dayNumberFormat.format(day);

    return '$dayString日目';
  }

  @override
  String get plusHint => '+ヒント';

  @override
  String get claimDailyReward => '今日の報酬を受け取る';

  @override
  String get comeAgainTomorrow => 'また明日来てね';

  @override
  String get achievementsTitle => '実績';

  @override
  String get achGreetingEmpty => '準備OK。最初のレベルをクリアすると、バッジがここに並び始める。';

  @override
  String get achGreetingFlow => 'フローが最高潮 — このゲームのリズムを掴んでいる。';

  @override
  String get achGreetingStars => '星コレクションが輝いてる。その調子、レジェンド。';

  @override
  String get achGreetingVeteran => 'いいペース。ラボが君のテンポに合わせてる。';

  @override
  String get achGreetingProgress => '順調な進捗。きれいにクリアするたびに上手くなる。';

  @override
  String get achGreetingStarter => '好スタート。あと数レベルでバッジがどんどん来る。';

  @override
  String get statLevel => 'レベル';

  @override
  String get statStars => '星';

  @override
  String get statCoins => 'コイン';

  @override
  String get statFlow => 'フロー';

  @override
  String get statUnlocked => '解放';

  @override
  String get achievementLocked => 'ロック';

  @override
  String get achievementPerfectSort => 'パーフェクトソート';

  @override
  String get achievementPerfectSortDesc => 'Par以内、支援なしでクリア';

  @override
  String get achievementUnderPar => 'Par以下';

  @override
  String get achievementUnderParDesc => '目標手数を超えない';

  @override
  String get achievementNoUndo => 'Undoなし';

  @override
  String get achievementNoUndoDesc => 'Undoを使わずクリア';

  @override
  String get achievementNoHint => 'ヒントなし';

  @override
  String get achievementNoHintDesc => 'ヒントなしで解く';

  @override
  String get achievementFlowMaster => 'フローマスター';

  @override
  String get achievementFlowMasterDesc => '1ステージでフロー x5に到達';

  @override
  String get achievementNewRecord => '新記録';

  @override
  String get achievementNewRecordDesc => 'ベスト手数を更新';

  @override
  String get achievementFirstTry => '一発クリア';

  @override
  String get achievementFirstTryDesc => 'リスタートなしでクリア';

  @override
  String get achievementNoExtraTube => '追加チューブなし';

  @override
  String get achievementNoExtraTubeDesc => 'チューブ追加なしでクリア';

  @override
  String get undo => 'Undo';

  @override
  String get restart => 'リスタート';

  @override
  String get hint => 'ヒント';

  @override
  String get addTube => 'チューブ追加';

  @override
  String get perfect => 'パーフェクト！';

  @override
  String levelCompleted(int level) {
    final intl.NumberFormat levelNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String levelString = levelNumberFormat.format(level);

    return 'レベル$levelStringクリア';
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

    return '$movesString手  •  Par $parString';
  }

  @override
  String get newRecordAchievements => '新記録 • 実績';

  @override
  String get achievementsHeader => '実績';

  @override
  String assistancePenalty(int amount) {
    final intl.NumberFormat amountNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String amountString = amountNumberFormat.format(amount);

    return 'ヒントペナルティ: -$amountStringコイン';
  }

  @override
  String get doubleReward => '報酬2倍';

  @override
  String get goToLevels => 'レベル';

  @override
  String get continueNext => '続ける';

  @override
  String get backToLevelSelect => 'レベル選択に戻る';

  @override
  String get bestLabel => 'ベスト';

  @override
  String get flowCombo => 'フローコンボ';

  @override
  String get extraTube => '追加チューブ';

  @override
  String get fullReward => 'フル報酬';

  @override
  String get halfReward => '半分の報酬';

  @override
  String get quarterReward => '4分の1報酬';

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
  String get newRule => '新ルール';

  @override
  String get gotItStart => '了解、スタート';

  @override
  String get firstTimeTipOnly => '初回のみ表示';

  @override
  String get mechanicBasicsTitle => '遊び方';

  @override
  String get mechanicBasicsHeadline => 'チューブを選んで液体を注ぐ';

  @override
  String get mechanicBasicsBody =>
      'チューブをタップして上面の色を選択。次にターゲットをタップ — 同色は重ねられるか、空チューブに注げる。';

  @override
  String get mechanicBasicsTip => '目標：満タンのチューブはすべて単色に。空チューブは助け役。';

  @override
  String get mechanicBasicsCaption => '選択 → 注ぐ → ソート';

  @override
  String get mechanicHiddenTitle => '隠しチューブ';

  @override
  String get mechanicHiddenHeadline => '上面の色だけ見える';

  @override
  String get mechanicHiddenBody => 'このチューブでは上面の色だけ見える。下の層は上面が空くまでぼやけたまま。';

  @override
  String get mechanicHiddenTip => '盲目で注がない — まず上面を空にして、下を見てから決めよう。';

  @override
  String get mechanicHiddenCaption => '上面クリア • 下はぼやけ';

  @override
  String get mechanicMixTitle => '色の混合';

  @override
  String get mechanicMixHeadline => '2色が合体して新色に';

  @override
  String get mechanicMixBody => '特定の色を重ねて注ぐと新色に。上に表示される式に従おう。';

  @override
  String get mechanicMixTip => '量が一致し、先に空きが必要。';

  @override
  String get mechanicMixCaption => '赤 + 黄 = オレンジ';

  @override
  String get mechanicFrozenTitle => '凍結チューブ';

  @override
  String get mechanicFrozenHeadline => 'しばらく触れない';

  @override
  String get mechanicFrozenBody => '凍ったチューブには注げも取れもしない。一定手数で氷が溶ける。';

  @override
  String get mechanicFrozenTip => '他のチューブで道を開け、溶けたらすぐ使おう。';

  @override
  String get mechanicFrozenCaption => '手数待ち → 氷解';

  @override
  String get mechanicLockedTitle => 'ロックチューブ';

  @override
  String get mechanicLockedHeadline => '先に別チューブを完成';

  @override
  String get mechanicLockedBody => 'ロックチューブは一定数のチューブ完成まで閉じている。';

  @override
  String get mechanicLockedTip => '簡単なチューブを先に、それからロック枠を使おう。';

  @override
  String get mechanicLockedCaption => '完成 → 解放';

  @override
  String get mechanicHeatedTitle => '加熱チューブ';

  @override
  String get mechanicHeatedHeadline => '不要液体を蒸発';

  @override
  String get mechanicHeatedBody => '加熱器に注いだ液体は消える。加熱回数は限られている — 通常は不要色用。';

  @override
  String get mechanicHeatedTip => '加熱が尽きると注げない。不要色は早めに処理。';

  @override
  String get mechanicHeatedCaption => '不要 → 蒸発';

  @override
  String get mechanicValveTitle => '一方通行バルブ';

  @override
  String get mechanicValveHeadline => '入るだけ';

  @override
  String get mechanicValveBody => 'バルブチューブには注げるが取れない。永久ストレージのようなもの。';

  @override
  String get mechanicValveTip => '間違った色は詰まる。慎重に注ごう。';

  @override
  String get mechanicValveCaption => '入口のみ';

  @override
  String get mechanicPortalTitle => 'ポータルペア';

  @override
  String get mechanicPortalHeadline => '一方から入り、もう一方から出る';

  @override
  String get mechanicPortalBody => '一方のポータルに注ぐと、ペア側に液体が現れる。2本はリンクしている。';

  @override
  String get mechanicPortalTip => '一方を狙え — 充填は反対側で起きる。';

  @override
  String get mechanicPortalCaption => 'A in → B out';

  @override
  String get mechanicBombTitle => 'ボムチューブ';

  @override
  String get mechanicBombHeadline => 'タイマー前に完成';

  @override
  String get mechanicBombBody => 'マークされたチューブにカウントダウン。ゼロ前に単色で満たさないと失敗。';

  @override
  String get mechanicBombTip => 'まずボムチューブを確保、それから残りをソート。';

  @override
  String get mechanicBombCaption => 'カウントダウン前に満タン';

  @override
  String get mechanicNarrowTitle => '細チューブ';

  @override
  String get mechanicNarrowHeadline => '容量2のバッファ';

  @override
  String get mechanicNarrowBody => '短い補助チューブがあり最大2ユニット。狭い操作向け。';

  @override
  String get mechanicNarrowTip => 'クリアには空である必要あり。2ユニット保持は完成扱いにならない — 再度空に。';

  @override
  String get mechanicNarrowCaption => '容量2 • 空で完成';

  @override
  String get mechanicMovingTitle => '移動レイアウト';

  @override
  String get mechanicMovingHeadline => 'チューブが入れ替わる';

  @override
  String get mechanicMovingBody => '数手ごとに盤面がシフトし順序が変わる。同じチューブ — 新しい位置。';

  @override
  String get mechanicMovingTip => 'idと色でチューブを追跡。';

  @override
  String get mechanicMovingCaption => '3手ごとにシフト';

  @override
  String get mechanicBossTitle => 'BOSS実験';

  @override
  String get mechanicBossHeadline => 'より厳しいルール';

  @override
  String get mechanicBossBody => 'Bossレベルは手数制限と複数特殊ルールの組み合わせ。計画してプレイ。';

  @override
  String get mechanicBossTip => 'Par付近を維持。無駄なUndoと注ぎを避けよう。';

  @override
  String get mechanicBossCaption => '制限 + 特殊ルール';

  @override
  String levelNumber(int level) {
    final intl.NumberFormat levelNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String levelString = levelNumberFormat.format(level);

    return 'レベル $levelString';
  }

  @override
  String get movesLabel => '手数';

  @override
  String headerMeta(int par) {
    final intl.NumberFormat parNumberFormat = intl.NumberFormat.decimalPattern(
      localeName,
    );
    final String parString = parNumberFormat.format(par);

    return 'Par $parString  •  リトライ無制限  •  オフライン';
  }

  @override
  String get pauseTooltip => '一時停止';

  @override
  String get resumeTooltip => '再開';

  @override
  String get settingsTooltip => '設定';

  @override
  String get pausedTitle => '一時停止中';

  @override
  String get pausedBody => 'タイマーとカウントダウン音は停止中。';

  @override
  String get resumeCta => '再開';

  @override
  String tempoBadge(String difficulty, int seconds) {
    final intl.NumberFormat secondsNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String secondsString = secondsNumberFormat.format(seconds);

    return '$difficulty  $secondsString秒';
  }

  @override
  String get easyRelaxed => 'イージー  •  リラックス';

  @override
  String bossMovesLeft(int moves) {
    final intl.NumberFormat movesNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String movesString = movesNumberFormat.format(moves);

    return 'BOSS • 残り$movesString手';
  }

  @override
  String get hiddenLiquid => '隠し液体';

  @override
  String get frozenTube => '凍結チューブ';

  @override
  String get iceCleared => '氷解';

  @override
  String get lockedTube => 'ロックチューブ';

  @override
  String get lockOpened => 'ロック解除';

  @override
  String heatBurn(int remaining) {
    final intl.NumberFormat remainingNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String remainingString = remainingNumberFormat.format(remaining);

    return '不要を燃やす • $remainingString';
  }

  @override
  String heatTube(int remaining) {
    final intl.NumberFormat remainingNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String remainingString = remainingNumberFormat.format(remaining);

    return '加熱チューブ • $remainingString';
  }

  @override
  String get portalPair => 'ポータルペア';

  @override
  String get oneWayValve => '一方通行バルブ';

  @override
  String bombCountdown(int remaining) {
    final intl.NumberFormat remainingNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String remainingString = remainingNumberFormat.format(remaining);

    return 'ボム • $remainingString';
  }

  @override
  String movingEvery(int moves) {
    final intl.NumberFormat movesNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String movesString = movesNumberFormat.format(moves);

    return '$movesString手ごとに移動';
  }

  @override
  String get narrowTubeCap2 => '細チューブ • 容量2';

  @override
  String get hiddenMix => '隠し混合';

  @override
  String get portalFlow => 'ポータルフロー！';

  @override
  String get tubesShifted => 'チューブ移動!';

  @override
  String bombMovesLeft(int remaining) {
    final intl.NumberFormat remainingNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String remainingString = remainingNumberFormat.format(remaining);

    return 'ボム: 残り$remainingString手!';
  }

  @override
  String get iceBroken => '氷が割れた！凍結チューブが使える。';

  @override
  String get lockUnlocked => 'ロック解除！新チューブ準備完了。';

  @override
  String get tubeFrozenMsg => 'このチューブは凍っている。正しい手数で解ける。';

  @override
  String get tubeLockedMsg => 'このチューブはロック中。先に別の色を完成させて。';

  @override
  String get valveOneWayMsg => '金のバルブは一方通行：入れるだけ、出せない。';

  @override
  String get heatExhaustedMsg => '加熱チューブの燃焼回数が尽きた。';

  @override
  String insufficientCoins(int cost) {
    final intl.NumberFormat costNumberFormat = intl.NumberFormat.decimalPattern(
      localeName,
    );
    final String costString = costNumberFormat.format(cost);

    return 'コイン不足 ($costString)。';
  }

  @override
  String get adFailed => '広告を完了できませんでした。';

  @override
  String reopenPaid(int cost, String title) {
    final intl.NumberFormat costNumberFormat = intl.NumberFormat.decimalPattern(
      localeName,
    );
    final String costString = costNumberFormat.format(cost);

    return '-$costStringコイン • $title再開';
  }

  @override
  String reopenAd(String title) {
    return '広告で開放 • $title';
  }

  @override
  String get tipQuotaEmpty => 'このレベルのヒントは使い切り。';

  @override
  String get rewardsNotReady => '報酬システムの準備ができていません。';

  @override
  String get freeHintUsed => '無料ヒント使用済み。';

  @override
  String hintCost(int cost) {
    final intl.NumberFormat costNumberFormat = intl.NumberFormat.decimalPattern(
      localeName,
    );
    final String costString = costNumberFormat.format(cost);

    return 'ヒント: -$costStringコイン';
  }

  @override
  String get noHintAvailable => '今は有用なヒントがありません。';

  @override
  String get assistHint => 'ヒント';

  @override
  String get assistUndo => 'Undo';

  @override
  String get freeHintEarned => '無料ヒント1回獲得。';

  @override
  String get freeUndoEarned => '無料Undo1回獲得。';

  @override
  String failureCredit(int deducted, int floor) {
    final intl.NumberFormat deductedNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String deductedString = deductedNumberFormat.format(deducted);
    final intl.NumberFormat floorNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String floorString = floorNumberFormat.format(floor);

    return '-$deductedStringクレジット • 失敗 (最小$floorString)';
  }

  @override
  String debtLimitToast(int floor) {
    final intl.NumberFormat floorNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String floorString = floorNumberFormat.format(floor);

    return '借金上限 ($floorString)。広告を見てリトライ。';
  }

  @override
  String restartCredit(int deducted) {
    final intl.NumberFormat deductedNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String deductedString = deductedNumberFormat.format(deducted);

    return '-$deductedStringクレジット • リスタート';
  }

  @override
  String insufficientCoinsTitle(int cost) {
    final intl.NumberFormat costNumberFormat = intl.NumberFormat.decimalPattern(
      localeName,
    );
    final String costString = costNumberFormat.format(cost);

    return 'コイン不足 ($costString)';
  }

  @override
  String watchAdEarnAssist(String label) {
    return '広告を見て無料${label}1回獲得。';
  }

  @override
  String debtLimitTitle(int floor) {
    final intl.NumberFormat floorNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String floorString = floorNumberFormat.format(floor);

    return '借金上限 ($floorString)';
  }

  @override
  String get debtLimitBody => '借金下限に達した。広告を見て再挑戦。';

  @override
  String get tipUnlockPaidBody => 'このルールは初回無料で見た。\n再読はコインが必要。';

  @override
  String get tipUnlockAdBody => 'コインが足りない。\n広告を見て無料で開こう。';

  @override
  String get yourBalance => '残高: ';

  @override
  String payCost(int cost) {
    final intl.NumberFormat costNumberFormat = intl.NumberFormat.decimalPattern(
      localeName,
    );
    final String costString = costNumberFormat.format(cost);

    return '$costString支払う';
  }

  @override
  String get timeUp => 'タイムアップ';

  @override
  String get bombExploded => 'ボム爆発!';

  @override
  String get moveLimitReached => '手数上限到達';

  @override
  String failurePenaltyLine(int amount, int floor) {
    final intl.NumberFormat amountNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String amountString = amountNumberFormat.format(amount);
    final intl.NumberFormat floorNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String floorString = floorNumberFormat.format(floor);

    return '失敗: -$amountStringクレジット (借金最小$floorString)。';
  }

  @override
  String get tryEasyModeHint => 'イージーモードで時間プレッシャーをオフにできる。';

  @override
  String get bombFailHint => '赤カウントダウン前にマークチューブを単色で満たして。';

  @override
  String get bossFailHint => 'Boss実験が手数上限超過。混合と空チューブを計画的に。';

  @override
  String get debtLimitRetryHint => '借金上限 — 広告を見てリトライ。';

  @override
  String get retryWithAd => '広告 • リトライ';

  @override
  String get retryAgain => '再挑戦';

  @override
  String get vaporized => '蒸発!';

  @override
  String colorClearedBonus(String color) {
    return '$colorクリア  •  +4秒';
  }

  @override
  String get newColorFormed => '新色形成!';

  @override
  String colorBonusSeconds(String color) {
    return '$color  •  +6秒';
  }

  @override
  String get legendaryFlow => '伝説のフロー！';

  @override
  String flowMultiplier(int combo) {
    final intl.NumberFormat comboNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String comboString = comboNumberFormat.format(combo);

    return 'フロー x$comboString';
  }

  @override
  String get legendaryFlowLabel => '伝説のフロー';

  @override
  String flowLabel(int multiplier) {
    final intl.NumberFormat multiplierNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String multiplierString = multiplierNumberFormat.format(multiplier);

    return 'フロー x$multiplierString';
  }

  @override
  String tubeSemantics(String id, int units) {
    final intl.NumberFormat unitsNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String unitsString = unitsNumberFormat.format(units);

    return 'チューブ$id、$unitsStringユニット充填';
  }

  @override
  String get colorRed => '赤';

  @override
  String get colorBlue => '青';

  @override
  String get colorPurple => '紫';

  @override
  String get colorYellow => '黄';

  @override
  String get colorGreen => '緑';

  @override
  String get colorOrange => 'オレンジ';

  @override
  String get colorPink => 'ピンク';

  @override
  String get colorCyan => 'シアン';

  @override
  String get colorLime => 'ライム';

  @override
  String get colorBrown => '茶';

  @override
  String get skipLevelOfferBody => 'このステージは難しいです。広告を見て次を解放できます。';

  @override
  String get skipLevelCta => '広告を見る • スキップ';

  @override
  String get skipLevelNote => 'このステージはあとで戻ってクリアできます。';

  @override
  String get skipLevelUnlocked => '次のステージを解放しました！';

  @override
  String get developerModeTitle => '開発者モード';

  @override
  String get developerModePasswordHint => 'パスワード';

  @override
  String get developerModeUnlock => '解除';

  @override
  String get developerModeEnabled => 'テスト用に全ステージを解放しました。';

  @override
  String get developerModeWrongPassword => 'パスワードが違います';

  @override
  String get developerModeActive => '開発者モード有効';

  @override
  String get developerModeDisable => '開発者モードをオフ';
}
