// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Thai (`th`).
class AppLocalizationsTh extends AppLocalizations {
  AppLocalizationsTh([String locale = 'th']) : super(locale);

  @override
  String get appTitle => 'Liquid Sort Puzzle';

  @override
  String get brandName => 'Liquid Sort';

  @override
  String get brandPuzzle => 'PUZZLE';

  @override
  String get splashTagline => 'จัดสีให้เรียง ปลดปล่อยใจ';

  @override
  String get back => 'กลับ';

  @override
  String get cancel => 'ยกเลิก';

  @override
  String get play => 'เล่น';

  @override
  String get settings => 'การตั้งค่า';

  @override
  String get home => 'หน้าแรก';

  @override
  String get levels => 'ด่าน';

  @override
  String get collection => 'คอลเลกชัน';

  @override
  String get achievements => 'ความสำเร็จ';

  @override
  String get continueLabel => 'ต่อ';

  @override
  String get pause => 'หยุดชั่วคราว';

  @override
  String get close => 'ปิด';

  @override
  String get free => 'ฟรี';

  @override
  String get coin => 'เหรียญ';

  @override
  String get coins => 'เหรียญ';

  @override
  String get secondsShort => 'ว';

  @override
  String get moves => 'ตา';

  @override
  String get best => 'ดีที่สุด';

  @override
  String get par => 'Par';

  @override
  String get locked => 'ล็อก';

  @override
  String get ad => 'โฆษณา';

  @override
  String get watchAd => 'ดูโฆษณา';

  @override
  String get claiming => 'กำลังรับ...';

  @override
  String get homeTagline => 'จัดเรียงอย่างฉลาด ผสมสี!';

  @override
  String get progressAndAchievements => 'ความคืบหน้าและความสำเร็จ';

  @override
  String get progressTapHint => 'แตะ: สถิติและเหรียญตรา';

  @override
  String get dailyReward => 'รางวัลรายวัน';

  @override
  String get rewardReady => 'รางวัลพร้อม';

  @override
  String get comeTomorrow => 'มาพรุ่งนี้';

  @override
  String get collectionSubtitle => 'เรียกดูธีม';

  @override
  String get premiumThemes => 'ธีมพรีเมียม';

  @override
  String get premiumThemesBody =>
      'ธีม Classic, Galaxy, Ocean, Neon และ Golden Age ปลดล็อกที่นี่';

  @override
  String get playCta => 'เล่น';

  @override
  String dailyClaimSnack(int coins, String hintSuffix) {
    final intl.NumberFormat coinsNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String coinsString = coinsNumberFormat.format(coins);

    return '+$coinsString เหรียญ$hintSuffix';
  }

  @override
  String freeHintSuffix(int count) {
    final intl.NumberFormat countNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String countString = countNumberFormat.format(count);

    return ' + คำใบ้ฟรี $countString ครั้ง';
  }

  @override
  String get levelMapTitle => 'แผนที่ด่าน';

  @override
  String levelsCompletedProgress(int completed, int total) {
    final intl.NumberFormat completedNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String completedString = completedNumberFormat.format(completed);
    final intl.NumberFormat totalNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String totalString = totalNumberFormat.format(total);

    return 'ผ่านแล้ว $completedString/$totalString ด่าน';
  }

  @override
  String get newExperimentsBanner =>
      'การทดลองใหม่\nPORTAL • BOMB • VALVE • REACTOR';

  @override
  String get settingsTitle => 'การตั้งค่า';

  @override
  String get settingsSubtitleAudio => 'ควบคุมเสียงและการสั่น';

  @override
  String get settingsSubtitleVisual => 'สี ลวดลาย และแอนิเมชัน';

  @override
  String get settingsSubtitleGeneral => 'ความยากและการตั้งค่าทั่วไป';

  @override
  String get sectionAudioFeedback => 'เสียงและฟีดแบ็ก';

  @override
  String get soundEffects => 'เอฟเฟกต์เสียง';

  @override
  String get soundEffectsSubtitle => 'เสียงเลือก เท และสำเร็จ';

  @override
  String get backgroundMusic => 'เพลงพื้นหลัง';

  @override
  String get backgroundMusicSubtitle => 'ดนตรีบรรยากาศจักรวาลที่สงบ';

  @override
  String get haptics => 'การสั่น';

  @override
  String get hapticsSubtitle => 'ตอบสนองเบาเมื่อแตะ';

  @override
  String get sectionVisual => 'การตั้งค่าภาพ';

  @override
  String get neonPalette => 'จานสีนeonของของเหลว';

  @override
  String get neonPaletteSubtitle => 'สีนeonสดใสในเกม';

  @override
  String get colorAccessibility => 'การเข้าถึงสี';

  @override
  String get colorAccessibilitySubtitle => 'เพิ่มลวดลายบนของเหลว';

  @override
  String get reducedAnimations => 'ลดแอนิเมชัน';

  @override
  String get reducedAnimationsSubtitle => 'เร่งการเทของเหลว';

  @override
  String get sectionDifficulty => 'ความยากและแรงกดเวลา';

  @override
  String get offlineProgress => 'ความคืบหน้าออฟไลน์';

  @override
  String get offlineProgressBody =>
      'ด่านและการตั้งค่าบันทึกอย่างปลอดภัยบนอุปกรณ์นี้';

  @override
  String settingsVersion(String version) {
    return 'Liquid Sort Puzzle  •  v$version';
  }

  @override
  String get tabAudio => 'เสียง';

  @override
  String get tabVisual => 'ภาพ';

  @override
  String get tabGeneral => 'การตั้งค่า';

  @override
  String get language => 'ภาษา';

  @override
  String get languageSubtitle => 'เลือกภาษาแอป';

  @override
  String get languageSystem => 'ตามระบบ';

  @override
  String get languageSystemSubtitle => 'ใช้ภาษาของโทรศัพท์หรือแท็บเล็ต';

  @override
  String get difficultyEasy => 'ง่าย';

  @override
  String get difficultyNormal => 'ปกติ';

  @override
  String get difficultyHard => 'ยาก';

  @override
  String get difficultyEasyDesc =>
      'ไม่มีแรงกดเวลา • เหรียญน้อย • โฆษณาเต็มจอมากขึ้น';

  @override
  String get difficultyNormalDesc => 'ตัวจับเวลาปานกลาง กดดันเล็กน้อย';

  @override
  String get difficultyHardDesc => 'ตัวจับเวลาสั้นมาก ผิด -5 วิ';

  @override
  String get dailyRewardTitle => 'รางวัลรายวัน';

  @override
  String get dailyRewardClaimBody =>
      'รับของขวัญวันนี้ กลับมาทุกวันเพื่อรางวัลที่มากขึ้น';

  @override
  String get dailyRewardClaimedBody => 'รับวันนี้แล้ว มาพรุ่งนี้';

  @override
  String dailyStreak(int streak) {
    final intl.NumberFormat streakNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String streakString = streakNumberFormat.format(streak);

    return 'สตรีค: $streakString วัน';
  }

  @override
  String dayChip(int day) {
    final intl.NumberFormat dayNumberFormat = intl.NumberFormat.decimalPattern(
      localeName,
    );
    final String dayString = dayNumberFormat.format(day);

    return 'ว$dayString';
  }

  @override
  String get plusHint => '+คำใบ้';

  @override
  String get claimDailyReward => 'รับรางวัลวันนี้';

  @override
  String get comeAgainTomorrow => 'มาพรุ่งนี้';

  @override
  String get achievementsTitle => 'ความสำเร็จ';

  @override
  String get achGreetingEmpty =>
      'พร้อมแล้ว ผ่านด่านแรก แล้วเหรียญตราจะสะสมที่นี่';

  @override
  String get achGreetingFlow => 'โฟลว์ของคุณร้อนแรง — คุณจับจังหวะเกมได้แล้ว';

  @override
  String get achGreetingStars => 'คอลเลกชันดาวเปล่งประกาย ต่อไป ตำนาน';

  @override
  String get achGreetingVeteran => 'จังหวะดี ห้องแล็บตาม tempo ของคุณ';

  @override
  String get achGreetingProgress => 'คืบหน้าดี ทุกด่านที่สะอาดทำให้คมขึ้น';

  @override
  String get achGreetingStarter => 'เริ่มแรง อีกไม่กี่ด่าน เหรียญตราจะไหลมา';

  @override
  String get statLevel => 'ด่าน';

  @override
  String get statStars => 'ดาว';

  @override
  String get statCoins => 'เหรียญ';

  @override
  String get statFlow => 'โฟลว์';

  @override
  String get statUnlocked => 'ปลดล็อก';

  @override
  String get achievementLocked => 'ล็อก';

  @override
  String get achievementPerfectSort => 'จัดเรียงสมบูรณ์';

  @override
  String get achievementPerfectSortDesc => 'จบใน Par โดยไม่ใช้ความช่วย';

  @override
  String get achievementUnderPar => 'ต่ำกว่า Par';

  @override
  String get achievementUnderParDesc => 'ไม่เกินจำนวนตาเป้าหมาย';

  @override
  String get achievementNoUndo => 'ไม่ใช้ Undo';

  @override
  String get achievementNoUndoDesc => 'จบโดยไม่ใช้ undo';

  @override
  String get achievementNoHint => 'ไม่ใช้คำใบ้';

  @override
  String get achievementNoHintDesc => 'แก้โดยไม่ใช้คำใบ้';

  @override
  String get achievementFlowMaster => 'เซียนโฟลว์';

  @override
  String get achievementFlowMasterDesc => 'ถึงโฟลว์ x5 ในด่านเดียว';

  @override
  String get achievementNewRecord => 'สถิติใหม่';

  @override
  String get achievementNewRecordDesc => 'ทำลายจำนวนตาที่ดีที่สุด';

  @override
  String get achievementFirstTry => 'ครั้งแรก';

  @override
  String get achievementFirstTryDesc => 'จบโดยไม่รีสตาร์ท';

  @override
  String get achievementNoExtraTube => 'ไม่มีหลอดเพิ่ม';

  @override
  String get achievementNoExtraTubeDesc => 'จบโดยไม่เพิ่มหลอด';

  @override
  String get undo => 'Undo';

  @override
  String get restart => 'เริ่มใหม่';

  @override
  String get hint => 'คำใบ้';

  @override
  String get addTube => 'เพิ่มหลอด';

  @override
  String get perfect => 'สมบูรณ์แบบ!';

  @override
  String levelCompleted(int level) {
    final intl.NumberFormat levelNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String levelString = levelNumberFormat.format(level);

    return 'ผ่านด่าน $levelString';
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

    return '$movesString ตา  •  Par $parString';
  }

  @override
  String get newRecordAchievements => 'สถิติใหม่ • ความสำเร็จ';

  @override
  String get achievementsHeader => 'ความสำเร็จ';

  @override
  String assistancePenalty(int amount) {
    final intl.NumberFormat amountNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String amountString = amountNumberFormat.format(amount);

    return 'โทษคำใบ้: -$amountString เหรียญ';
  }

  @override
  String get doubleReward => 'รางวัลสองเท่า';

  @override
  String get goToLevels => 'ด่าน';

  @override
  String get continueNext => 'ต่อ';

  @override
  String get backToLevelSelect => 'กลับเลือกด่าน';

  @override
  String get bestLabel => 'ดีที่สุด';

  @override
  String get flowCombo => 'คอมโบโฟลว์';

  @override
  String get extraTube => 'หลอดเพิ่ม';

  @override
  String get fullReward => 'รางวัลเต็ม';

  @override
  String get halfReward => 'ครึ่งรางวัล';

  @override
  String get quarterReward => 'หนึ่งในสี่รางวัล';

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
  String get newRule => 'กฎใหม่';

  @override
  String get gotItStart => 'เข้าใจแล้ว เริ่ม';

  @override
  String get firstTimeTipOnly => 'แสดงครั้งแรกเท่านั้น';

  @override
  String get mechanicBasicsTitle => 'วิธีเล่น';

  @override
  String get mechanicBasicsHeadline => 'เลือกหลอด เทของเหลว';

  @override
  String get mechanicBasicsBody =>
      'แตะหลอดเพื่อเลือกสีด้านบน แล้วแตะเป้าหมาย — สีเดียวกันซ้อนได้หรือเทลงหลอดว่าง';

  @override
  String get mechanicBasicsTip =>
      'เป้าหมาย: หลอดเต็มแต่ละอันเป็นสีเดียว หลอดว่างเป็นตัวช่วย';

  @override
  String get mechanicBasicsCaption => 'เลือก → เท → จัด';

  @override
  String get mechanicHiddenTitle => 'หลอดซ่อน';

  @override
  String get mechanicHiddenHeadline => 'เห็นแค่สีบนสุด';

  @override
  String get mechanicHiddenBody =>
      'หลอดนี้เห็นแค่สีบน ชั้นล่างมัวจนกว่าบนจะว่าง';

  @override
  String get mechanicHiddenTip =>
      'อย่าเทมั่ว — ล้างบนก่อน เปิดล่าง แล้วค่อยตัดสิน';

  @override
  String get mechanicHiddenCaption => 'บนชัด • ล่างมัว';

  @override
  String get mechanicMixTitle => 'ผสมสี';

  @override
  String get mechanicMixHeadline => 'สองสีรวมเป็นสีใหม่';

  @override
  String get mechanicMixBody => 'เทสีบางคู่ทับกันเพื่อผสม ตามสมการด้านบน';

  @override
  String get mechanicMixTip => 'ปริมาณต้องตรงและเป้าหมายต้องมีที่ว่าง';

  @override
  String get mechanicMixCaption => 'แดง + เหลือง = ส้ม';

  @override
  String get mechanicFrozenTitle => 'หลอดแช่แข็ง';

  @override
  String get mechanicFrozenHeadline => 'แตะไม่ได้ชั่วคราว';

  @override
  String get mechanicFrozenBody =>
      'เทเข้า/ออกหลอดแช่แข็งไม่ได้ พอครบตา น้ำแข็งละลาย';

  @override
  String get mechanicFrozenTip => 'เปิดทางด้วยหลอดอื่น ใช้ทันทีที่ละลาย';

  @override
  String get mechanicFrozenCaption => 'รอตา → ละลาย';

  @override
  String get mechanicLockedTitle => 'หลอดล็อก';

  @override
  String get mechanicLockedHeadline => 'จบหลอดอื่นก่อน';

  @override
  String get mechanicLockedBody => 'หลอดล็อกปิดจนกว่าจะจบหลอดครบจำนวน';

  @override
  String get mechanicLockedTip => 'จบหลอดง่ายก่อน แล้วใช้พื้นที่ล็อก';

  @override
  String get mechanicLockedCaption => 'จบ → ปลดล็อก';

  @override
  String get mechanicHeatedTitle => 'หลอดให้ความร้อน';

  @override
  String get mechanicHeatedHeadline => 'ระเหยของเหลวส่วนเกิน';

  @override
  String get mechanicHeatedBody =>
      'ของเหลวที่เทลงเครื่องทำความร้อนหายไป ครั้งความร้อนจำกัด — มักใช้กับสีเกิน';

  @override
  String get mechanicHeatedTip => 'หมดความร้อนเทไม่ได้ เก็บส่วนเกินเร็วๆ';

  @override
  String get mechanicHeatedCaption => 'เกิน → ไอ';

  @override
  String get mechanicValveTitle => 'วาล์วทางเดียว';

  @override
  String get mechanicValveHeadline => 'เทเข้าเท่านั้น';

  @override
  String get mechanicValveBody =>
      'เทเข้าหลอดวาล์วได้แต่ดึงออกไม่ได้ เหมือนที่เก็บถาวร';

  @override
  String get mechanicValveTip => 'สีผิดอาจติด กรอกวาล์วอย่างระมัดระวัง';

  @override
  String get mechanicValveCaption => 'เข้าอย่างเดียว';

  @override
  String get mechanicPortalTitle => 'คู่พอร์ทัล';

  @override
  String get mechanicPortalHeadline => 'เข้าหนึ่ง ออกอีกหนึ่ง';

  @override
  String get mechanicPortalBody =>
      'เทเข้าพอร์ทัลหนึ่ง ของเหลวปรากฏที่คู่ สองหลอดเชื่อมกัน';

  @override
  String get mechanicPortalTip => 'เล็งพอร์ทัลหนึ่ง — เติมที่อีกฝั่ง';

  @override
  String get mechanicPortalCaption => 'A in → B out';

  @override
  String get mechanicBombTitle => 'หลอดระเบิด';

  @override
  String get mechanicBombHeadline => 'จบก่อนตัวจับเวลา';

  @override
  String get mechanicBombBody =>
      'หลอดที่ทำเครื่องหมายมีนับถอยหลัง เติมสีเดียวก่อนศูนย์ไม่งั้นแพ้';

  @override
  String get mechanicBombTip => 'รักษาหลอดระเบิดก่อน แล้วค่อยจัดที่เหลือ';

  @override
  String get mechanicBombCaption => 'เติมก่อนหมดเวลา';

  @override
  String get mechanicNarrowTitle => 'หลอดแคบ';

  @override
  String get mechanicNarrowHeadline => 'บัฟเฟอร์ความจุ 2';

  @override
  String get mechanicNarrowBody =>
      'ด่านนี้มีหลอดช่วยสั้นสูงสุด 2 หน่วย ใช้ในมุมแคบ';

  @override
  String get mechanicNarrowTip =>
      'ต้องว่างเพื่อจบ มี 2 หน่วยไม่นับจบ — เทให้ว่างอีกครั้ง';

  @override
  String get mechanicNarrowCaption => 'ความจุ 2 • ว่างเพื่อจบ';

  @override
  String get mechanicMovingTitle => 'เลย์เอาต์เคลื่อนไหว';

  @override
  String get mechanicMovingHeadline => 'หลอดสลับที่';

  @override
  String get mechanicMovingBody =>
      'ทุกไม่กี่ตา กระดานเลื่อนและลำดับหลอดเปลี่ยน หลอดเดิม — ตำแหน่งใหม่';

  @override
  String get mechanicMovingTip => 'ตามหลอดด้วย id และสี';

  @override
  String get mechanicMovingCaption => 'เลื่อนทุก 3 ตา';

  @override
  String get mechanicBossTitle => 'การทดลอง Boss';

  @override
  String get mechanicBossHeadline => 'กฎเข้มขึ้น';

  @override
  String get mechanicBossBody =>
      'ด่าน Boss มีจำกัดตาและอาจรวมกฎพิเศษหลายอย่าง เล่นมีแผน';

  @override
  String get mechanicBossTip =>
      'อยู่ใกล้ Par หลีกเลี่ยง undo และการเทฟุ่มเฟือย';

  @override
  String get mechanicBossCaption => 'จำกัด + กฎพิเศษ';

  @override
  String levelNumber(int level) {
    final intl.NumberFormat levelNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String levelString = levelNumberFormat.format(level);

    return 'ด่าน $levelString';
  }

  @override
  String get movesLabel => 'ตา';

  @override
  String headerMeta(int par) {
    final intl.NumberFormat parNumberFormat = intl.NumberFormat.decimalPattern(
      localeName,
    );
    final String parString = parNumberFormat.format(par);

    return 'Par $parString  •  ลองใหม่ไม่จำกัด  •  ออฟไลน์';
  }

  @override
  String get pauseTooltip => 'หยุดชั่วคราว';

  @override
  String get resumeTooltip => 'เล่นต่อ';

  @override
  String get settingsTooltip => 'การตั้งค่า';

  @override
  String get pausedTitle => 'หยุดเกม';

  @override
  String get pausedBody => 'ตัวจับเวลาและเสียงนับถอยหลังหยุด';

  @override
  String get resumeCta => 'เล่นต่อ';

  @override
  String tempoBadge(String difficulty, int seconds) {
    final intl.NumberFormat secondsNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String secondsString = secondsNumberFormat.format(seconds);

    return '$difficulty  $secondsString ว';
  }

  @override
  String get easyRelaxed => 'ง่าย  •  ผ่อนคลาย';

  @override
  String bossMovesLeft(int moves) {
    final intl.NumberFormat movesNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String movesString = movesNumberFormat.format(moves);

    return 'BOSS • $movesString ตา';
  }

  @override
  String get hiddenLiquid => 'ของเหลวซ่อน';

  @override
  String get frozenTube => 'หลอดแช่แข็ง';

  @override
  String get iceCleared => 'น้ำแข็งละลาย';

  @override
  String get lockedTube => 'หลอดล็อก';

  @override
  String get lockOpened => 'ปลดล็อก';

  @override
  String heatBurn(int remaining) {
    final intl.NumberFormat remainingNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String remainingString = remainingNumberFormat.format(remaining);

    return 'เผาส่วนเกิน • $remainingString';
  }

  @override
  String heatTube(int remaining) {
    final intl.NumberFormat remainingNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String remainingString = remainingNumberFormat.format(remaining);

    return 'หลอดความร้อน • $remainingString';
  }

  @override
  String get portalPair => 'คู่พอร์ทัล';

  @override
  String get oneWayValve => 'วาล์วทางเดียว';

  @override
  String bombCountdown(int remaining) {
    final intl.NumberFormat remainingNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String remainingString = remainingNumberFormat.format(remaining);

    return 'ระเบิด • $remainingString';
  }

  @override
  String movingEvery(int moves) {
    final intl.NumberFormat movesNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String movesString = movesNumberFormat.format(moves);

    return 'เลื่อนทุก $movesString ตา';
  }

  @override
  String get narrowTubeCap2 => 'หลอดแคบ • จุ 2';

  @override
  String get hiddenMix => 'ผสมซ่อน';

  @override
  String get portalFlow => 'โฟลว์พอร์ทัล!';

  @override
  String get tubesShifted => 'หลอดเลื่อน!';

  @override
  String bombMovesLeft(int remaining) {
    final intl.NumberFormat remainingNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String remainingString = remainingNumberFormat.format(remaining);

    return 'ระเบิด: $remainingString ตา!';
  }

  @override
  String get iceBroken => 'น้ำแข็งแตก! หลอดแช่แข็งใช้ได้แล้ว';

  @override
  String get lockUnlocked => 'ปลดล็อก! หลอดใหม่พร้อม';

  @override
  String get tubeFrozenMsg => 'หลอดนี้แช่แข็ง อีกไม่กี่ตาที่ถูกต้องจะละลาย';

  @override
  String get tubeLockedMsg => 'หลอดนี้ล็อก จบสีอื่นก่อน';

  @override
  String get valveOneWayMsg => 'วาล์วทองทางเดียว: เทเข้าได้ ดึงออกไม่ได้';

  @override
  String get heatExhaustedMsg => 'หลอดให้ความร้อนหมดครั้งเผาแล้ว';

  @override
  String insufficientCoins(int cost) {
    final intl.NumberFormat costNumberFormat = intl.NumberFormat.decimalPattern(
      localeName,
    );
    final String costString = costNumberFormat.format(cost);

    return 'เหรียญไม่พอ ($costString)';
  }

  @override
  String get adFailed => 'ดูโฆษณาไม่สำเร็จ';

  @override
  String reopenPaid(int cost, String title) {
    final intl.NumberFormat costNumberFormat = intl.NumberFormat.decimalPattern(
      localeName,
    );
    final String costString = costNumberFormat.format(cost);

    return '-$costString เหรียญ • เปิด $title อีกครั้ง';
  }

  @override
  String reopenAd(String title) {
    return 'เปิดด้วยโฆษณา • $title';
  }

  @override
  String get tipQuotaEmpty => 'คำใบ้ด่านนี้หมดแล้ว';

  @override
  String get rewardsNotReady => 'ระบบรางวัลยังไม่พร้อม';

  @override
  String get freeHintUsed => 'ใช้คำใบ้ฟรีแล้ว';

  @override
  String hintCost(int cost) {
    final intl.NumberFormat costNumberFormat = intl.NumberFormat.decimalPattern(
      localeName,
    );
    final String costString = costNumberFormat.format(cost);

    return 'คำใบ้: -$costString เหรียญ';
  }

  @override
  String get noHintAvailable => 'ไม่มีคำใบ้ที่ใช้ได้ตอนนี้';

  @override
  String get assistHint => 'คำใบ้';

  @override
  String get assistUndo => 'undo';

  @override
  String get freeHintEarned => 'ได้คำใบ้ฟรี 1 ครั้ง';

  @override
  String get freeUndoEarned => 'ได้ undo ฟรี 1 ครั้ง';

  @override
  String failureCredit(int deducted, int floor) {
    final intl.NumberFormat deductedNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String deductedString = deductedNumberFormat.format(deducted);
    final intl.NumberFormat floorNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String floorString = floorNumberFormat.format(floor);

    return '-$deductedString เครดิต • ล้มเหลว (ขั้นต่ำ $floorString)';
  }

  @override
  String debtLimitToast(int floor) {
    final intl.NumberFormat floorNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String floorString = floorNumberFormat.format(floor);

    return 'ขีดหนี้ ($floorString) ดูโฆษณาเพื่อลองใหม่';
  }

  @override
  String restartCredit(int deducted) {
    final intl.NumberFormat deductedNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String deductedString = deductedNumberFormat.format(deducted);

    return '-$deductedString เครดิต • เริ่มใหม่';
  }

  @override
  String insufficientCoinsTitle(int cost) {
    final intl.NumberFormat costNumberFormat = intl.NumberFormat.decimalPattern(
      localeName,
    );
    final String costString = costNumberFormat.format(cost);

    return 'เหรียญไม่พอ ($costString)';
  }

  @override
  String watchAdEarnAssist(String label) {
    return 'ดูโฆษณาเพื่อ $label ฟรี 1 ครั้ง';
  }

  @override
  String debtLimitTitle(int floor) {
    final intl.NumberFormat floorNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String floorString = floorNumberFormat.format(floor);

    return 'ขีดหนี้ ($floorString)';
  }

  @override
  String get debtLimitBody => 'ถึงขั้นต่ำหนี้แล้ว ดูโฆษณาเพื่อลองอีกครั้ง';

  @override
  String get tipUnlockPaidBody =>
      'คุณดูกฎนี้ฟรีครั้งหนึ่งแล้ว\nอ่านอีกครั้งใช้เหรียญ';

  @override
  String get tipUnlockAdBody => 'เหรียญไม่พอ\nดูโฆษณาเปิดคำแนะนำฟรี';

  @override
  String get yourBalance => 'ยอด: ';

  @override
  String payCost(int cost) {
    final intl.NumberFormat costNumberFormat = intl.NumberFormat.decimalPattern(
      localeName,
    );
    final String costString = costNumberFormat.format(cost);

    return 'จ่าย $costString';
  }

  @override
  String get timeUp => 'หมดเวลา';

  @override
  String get bombExploded => 'ระเบิด!';

  @override
  String get moveLimitReached => 'ถึงขีดจำกัดตา';

  @override
  String failurePenaltyLine(int amount, int floor) {
    final intl.NumberFormat amountNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String amountString = amountNumberFormat.format(amount);
    final intl.NumberFormat floorNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String floorString = floorNumberFormat.format(floor);

    return 'ล้มเหลว: -$amountString เครดิต (หนี้ขั้นต่ำ $floorString)';
  }

  @override
  String get tryEasyModeHint => 'ปิดแรงกดเวลาในโหมดง่ายได้';

  @override
  String get bombFailHint => 'เติมหลอดที่ทำเครื่องหมายสีเดียวก่อนนับแดงหมด';

  @override
  String get bossFailHint => 'การทดลอง Boss เกินขีดตา วางแผนผสมและหลอดว่าง';

  @override
  String get debtLimitRetryHint => 'ถึงขีดหนี้ — ดูโฆษณาเพื่อลองใหม่';

  @override
  String get retryWithAd => 'ดูโฆษณา • ลองใหม่';

  @override
  String get retryAgain => 'ลองอีกครั้ง';

  @override
  String get vaporized => 'ระเหย!';

  @override
  String colorClearedBonus(String color) {
    return '$color ล้าง  •  +4 ว';
  }

  @override
  String get newColorFormed => 'สีใหม่!';

  @override
  String colorBonusSeconds(String color) {
    return '$color  •  +6 ว';
  }

  @override
  String get legendaryFlow => 'โฟลว์ในตำนาน!';

  @override
  String flowMultiplier(int combo) {
    final intl.NumberFormat comboNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String comboString = comboNumberFormat.format(combo);

    return 'โฟลว์ x$comboString';
  }

  @override
  String get legendaryFlowLabel => 'โฟลว์ในตำนาน';

  @override
  String flowLabel(int multiplier) {
    final intl.NumberFormat multiplierNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String multiplierString = multiplierNumberFormat.format(multiplier);

    return 'โฟลว์ x$multiplierString';
  }

  @override
  String tubeSemantics(String id, int units) {
    final intl.NumberFormat unitsNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String unitsString = unitsNumberFormat.format(units);

    return 'หลอด $id เติม $unitsString หน่วย';
  }

  @override
  String get colorRed => 'แดง';

  @override
  String get colorBlue => 'น้ำเงิน';

  @override
  String get colorPurple => 'ม่วง';

  @override
  String get colorYellow => 'เหลือง';

  @override
  String get colorGreen => 'เขียว';

  @override
  String get colorOrange => 'ส้ม';

  @override
  String get colorPink => 'ชมพู';

  @override
  String get colorCyan => 'ฟ้า';

  @override
  String get colorLime => 'มะนาว';

  @override
  String get colorBrown => 'น้ำตาล';

  @override
  String get skipLevelOfferBody => 'ด่านนี้ยาก ดูโฆษณาเพื่อปลดล็อกด่านถัดไป';

  @override
  String get skipLevelCta => 'ดูโฆษณา • ข้าม';

  @override
  String get skipLevelNote => 'คุณสามารถกลับมาจบด่านนี้ทีหลังได้';

  @override
  String get skipLevelUnlocked => 'ปลดล็อกด่านถัดไปแล้ว!';

  @override
  String get developerModeTitle => 'โหมดนักพัฒนา';

  @override
  String get developerModePasswordHint => 'รหัสผ่าน';

  @override
  String get developerModeUnlock => 'ปลดล็อก';

  @override
  String get developerModeEnabled => 'ปลดล็อกทุกด่านสำหรับทดสอบแล้ว';

  @override
  String get developerModeWrongPassword => 'รหัสผ่านผิด';

  @override
  String get developerModeActive => 'โหมดนักพัฒนาเปิดอยู่';

  @override
  String get developerModeDisable => 'ปิดโหมดนักพัฒนา';
}
