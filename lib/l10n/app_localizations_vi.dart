// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Vietnamese (`vi`).
class AppLocalizationsVi extends AppLocalizations {
  AppLocalizationsVi([String locale = 'vi']) : super(locale);

  @override
  String get appTitle => 'Liquid Sort Puzzle';

  @override
  String get brandName => 'Liquid Sort';

  @override
  String get brandPuzzle => 'PUZZLE';

  @override
  String get splashTagline => 'Sắp xếp màu sắc. Thanh thản tâm trí.';

  @override
  String get back => 'Quay lại';

  @override
  String get cancel => 'Hủy';

  @override
  String get play => 'CHƠI';

  @override
  String get settings => 'Cài đặt';

  @override
  String get home => 'Trang chủ';

  @override
  String get levels => 'Màn';

  @override
  String get collection => 'Bộ sưu tập';

  @override
  String get achievements => 'Thành tựu';

  @override
  String get continueLabel => 'Tiếp tục';

  @override
  String get pause => 'Tạm dừng';

  @override
  String get close => 'Đóng';

  @override
  String get free => 'Miễn phí';

  @override
  String get coin => 'Xu';

  @override
  String get coins => 'Xu';

  @override
  String get secondsShort => 'g';

  @override
  String get moves => 'Lượt';

  @override
  String get best => 'Tốt nhất';

  @override
  String get par => 'Par';

  @override
  String get locked => 'Đã khóa';

  @override
  String get ad => 'QC';

  @override
  String get watchAd => 'Xem quảng cáo';

  @override
  String get claiming => 'Đang nhận...';

  @override
  String get homeTagline => 'Sắp xếp thông minh, pha màu!';

  @override
  String get progressAndAchievements => 'TIẾN ĐỘ & THÀNH TỰU';

  @override
  String get progressTapHint => 'Chạm: thống kê và huy hiệu';

  @override
  String get dailyReward => 'Quà hàng ngày';

  @override
  String get rewardReady => 'Quà sẵn sàng';

  @override
  String get comeTomorrow => 'Quay lại ngày mai';

  @override
  String get collectionSubtitle => 'Duyệt chủ đề';

  @override
  String get premiumThemes => 'CHỦ ĐỀ CAO CẤP';

  @override
  String get premiumThemesBody =>
      'Chủ đề Classic, Galaxy, Ocean, Neon và Golden Age mở khóa tại đây.';

  @override
  String get playCta => 'CHƠI';

  @override
  String dailyClaimSnack(int coins, String hintSuffix) {
    final intl.NumberFormat coinsNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String coinsString = coinsNumberFormat.format(coins);

    return '+$coinsString xu$hintSuffix';
  }

  @override
  String freeHintSuffix(int count) {
    final intl.NumberFormat countNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String countString = countNumberFormat.format(count);

    return ' + $countString gợi ý miễn phí';
  }

  @override
  String get levelMapTitle => 'BẢN ĐỒ MÀN';

  @override
  String levelsCompletedProgress(int completed, int total) {
    final intl.NumberFormat completedNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String completedString = completedNumberFormat.format(completed);
    final intl.NumberFormat totalNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String totalString = totalNumberFormat.format(total);

    return '$completedString/$totalString màn hoàn thành';
  }

  @override
  String get newExperimentsBanner =>
      'THÍ NGHIỆM MỚI\nPORTAL • BOM • VAN • LÒ PHẢN ỨNG';

  @override
  String get settingsTitle => 'CÀI ĐẶT';

  @override
  String get settingsSubtitleAudio => 'Âm thanh và rung';

  @override
  String get settingsSubtitleVisual => 'Màu, họa tiết và hoạt ảnh';

  @override
  String get settingsSubtitleGeneral => 'Độ khó và tùy chọn chung';

  @override
  String get sectionAudioFeedback => 'ÂM THANH & PHẢN HỒI';

  @override
  String get soundEffects => 'Hiệu ứng âm thanh';

  @override
  String get soundEffectsSubtitle => 'Âm chọn, đổ và thành công';

  @override
  String get backgroundMusic => 'Nhạc nền';

  @override
  String get backgroundMusicSubtitle => 'Nhạc ambient vũ trụ êm dịu';

  @override
  String get haptics => 'Rung';

  @override
  String get hapticsSubtitle => 'Phản hồi nhẹ khi chạm';

  @override
  String get sectionVisual => 'TÙY CHỌN HIỂN THỊ';

  @override
  String get neonPalette => 'Bảng màu neon';

  @override
  String get neonPaletteSubtitle => 'Màu neon sống động trong game';

  @override
  String get colorAccessibility => 'Hỗ trợ màu sắc';

  @override
  String get colorAccessibilitySubtitle =>
      'Thêm họa tiết tinh tế cho chất lỏng';

  @override
  String get reducedAnimations => 'Giảm hoạt ảnh';

  @override
  String get reducedAnimationsSubtitle => 'Tăng tốc độ đổ';

  @override
  String get sectionDifficulty => 'ĐỘ KHÓ & ÁP LỰC THỜI GIAN';

  @override
  String get offlineProgress => 'Tiến độ offline';

  @override
  String get offlineProgressBody =>
      'Màn và cài đặt được lưu an toàn trên thiết bị này.';

  @override
  String settingsVersion(String version) {
    return 'Liquid Sort Puzzle  •  v$version';
  }

  @override
  String get tabAudio => 'Âm thanh';

  @override
  String get tabVisual => 'Hiển thị';

  @override
  String get tabGeneral => 'Cài đặt';

  @override
  String get language => 'Ngôn ngữ';

  @override
  String get languageSubtitle => 'Chọn ngôn ngữ app';

  @override
  String get languageSystem => 'Theo hệ thống';

  @override
  String get languageSystemSubtitle =>
      'Dùng ngôn ngữ điện thoại hoặc máy tính bảng';

  @override
  String get difficultyEasy => 'Dễ';

  @override
  String get difficultyNormal => 'Bình thường';

  @override
  String get difficultyHard => 'Khó';

  @override
  String get difficultyEasyDesc =>
      'Không áp lực thời gian • ít xu • nhiều quảng cáo xen kẽ';

  @override
  String get difficultyNormalDesc => 'Timer vừa, áp lực nhẹ';

  @override
  String get difficultyHardDesc => 'Timer rất ngắn, -5 giây khi sai';

  @override
  String get dailyRewardTitle => 'QUÀ HÀNG NGÀY';

  @override
  String get dailyRewardClaimBody =>
      'Nhận quà hôm nay. Quay lại mỗi ngày để quà lớn hơn.';

  @override
  String get dailyRewardClaimedBody => 'Đã nhận hôm nay. Quay lại ngày mai.';

  @override
  String dailyStreak(int streak) {
    final intl.NumberFormat streakNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String streakString = streakNumberFormat.format(streak);

    return 'Chuỗi: $streakString ngày';
  }

  @override
  String dayChip(int day) {
    final intl.NumberFormat dayNumberFormat = intl.NumberFormat.decimalPattern(
      localeName,
    );
    final String dayString = dayNumberFormat.format(day);

    return 'N$dayString';
  }

  @override
  String get plusHint => '+gợi ý';

  @override
  String get claimDailyReward => 'Nhận quà hôm nay';

  @override
  String get comeAgainTomorrow => 'Quay lại ngày mai';

  @override
  String get achievementsTitle => 'THÀNH TỰU';

  @override
  String get achGreetingEmpty =>
      'Sẵn sàng. Hoàn thành màn đầu và huy hiệu sẽ tích lũy ở đây.';

  @override
  String get achGreetingFlow =>
      'Dòng chảy của bạn đang cháy — bạn đã nắm nhịp game.';

  @override
  String get achGreetingStars => 'Bộ sao đang lấp lánh. Tiếp tục, huyền thoại.';

  @override
  String get achGreetingVeteran =>
      'Nhịp tốt. Phòng thí nghiệm theo tempo của bạn.';

  @override
  String get achGreetingProgress =>
      'Tiến bộ vững. Mỗi màn sạch giúp bạn sắc bén hơn.';

  @override
  String get achGreetingStarter =>
      'Khởi đầu mạnh. Thêm vài màn nữa, huy hiệu sẽ đổ về.';

  @override
  String get statLevel => 'Màn';

  @override
  String get statStars => 'Sao';

  @override
  String get statCoins => 'Xu';

  @override
  String get statFlow => 'Dòng';

  @override
  String get statUnlocked => 'Đã mở';

  @override
  String get achievementLocked => 'Đã khóa';

  @override
  String get achievementPerfectSort => 'Sắp xếp hoàn hảo';

  @override
  String get achievementPerfectSortDesc => 'Hoàn thành trong Par không hỗ trợ';

  @override
  String get achievementUnderPar => 'Dưới Par';

  @override
  String get achievementUnderParDesc => 'Không vượt số lượt mục tiêu';

  @override
  String get achievementNoUndo => 'Không Undo';

  @override
  String get achievementNoUndoDesc => 'Hoàn thành không dùng undo';

  @override
  String get achievementNoHint => 'Không gợi ý';

  @override
  String get achievementNoHintDesc => 'Giải không dùng gợi ý';

  @override
  String get achievementFlowMaster => 'Bậc thầy dòng chảy';

  @override
  String get achievementFlowMasterDesc => 'Đạt Dòng x5 trong một màn';

  @override
  String get achievementNewRecord => 'Kỷ lục mới';

  @override
  String get achievementNewRecordDesc => 'Phá kỷ lục lượt tốt nhất';

  @override
  String get achievementFirstTry => 'Lần đầu';

  @override
  String get achievementFirstTryDesc => 'Hoàn thành không restart';

  @override
  String get achievementNoExtraTube => 'Không ống thêm';

  @override
  String get achievementNoExtraTubeDesc => 'Hoàn thành không thêm ống';

  @override
  String get undo => 'Undo';

  @override
  String get restart => 'Chơi lại';

  @override
  String get hint => 'Gợi ý';

  @override
  String get addTube => 'Thêm ống';

  @override
  String get perfect => 'HOÀN HẢO!';

  @override
  String levelCompleted(int level) {
    final intl.NumberFormat levelNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String levelString = levelNumberFormat.format(level);

    return 'Màn $levelString hoàn thành';
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

    return '$movesString lượt  •  Par $parString';
  }

  @override
  String get newRecordAchievements => 'KỶ LỤC MỚI • THÀNH TỰU';

  @override
  String get achievementsHeader => 'THÀNH TỰU';

  @override
  String assistancePenalty(int amount) {
    final intl.NumberFormat amountNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String amountString = amountNumberFormat.format(amount);

    return 'Phạt gợi ý: -$amountString xu';
  }

  @override
  String get doubleReward => 'THƯỞNG GẤP ĐÔI';

  @override
  String get goToLevels => 'MÀN';

  @override
  String get continueNext => 'TIẾP TỤC';

  @override
  String get backToLevelSelect => 'Về chọn màn';

  @override
  String get bestLabel => 'Tốt nhất';

  @override
  String get flowCombo => 'Combo dòng chảy';

  @override
  String get extraTube => 'Ống thêm';

  @override
  String get fullReward => 'Thưởng đủ';

  @override
  String get halfReward => 'Một nửa thưởng';

  @override
  String get quarterReward => 'Một phần tư thưởng';

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
  String get newRule => 'LUẬT MỚI';

  @override
  String get gotItStart => 'HIỂU RỒI, BẮT ĐẦU';

  @override
  String get firstTimeTipOnly => 'Chỉ hiện lần đầu';

  @override
  String get mechanicBasicsTitle => 'CÁCH CHƠI';

  @override
  String get mechanicBasicsHeadline => 'Chọn ống, đổ chất lỏng';

  @override
  String get mechanicBasicsBody =>
      'Chạm ống để chọn màu trên cùng. Rồi chạm ống đích — màu giống xếp chồng hoặc đổ vào ống trống.';

  @override
  String get mechanicBasicsTip =>
      'Mục tiêu: mỗi ống đầy một màu. Ống trống là trợ giúp.';

  @override
  String get mechanicBasicsCaption => 'Chọn → Đổ → Sắp xếp';

  @override
  String get mechanicHiddenTitle => 'ỐNG ẨN';

  @override
  String get mechanicHiddenHeadline => 'Chỉ thấy màu trên';

  @override
  String get mechanicHiddenBody =>
      'Ống này chỉ thấy màu trên cùng. Lớp dưới mờ cho đến khi trên rỗng.';

  @override
  String get mechanicHiddenTip =>
      'Đừng đổ mù — dọn trên trước, lộ dưới, rồi quyết định.';

  @override
  String get mechanicHiddenCaption => 'Trên rõ • dưới mờ';

  @override
  String get mechanicMixTitle => 'PHA MÀU';

  @override
  String get mechanicMixHeadline => 'Hai màu thành màu mới';

  @override
  String get mechanicMixBody =>
      'Đổ một số màu lên nhau để pha màu mới. Theo phương trình trên.';

  @override
  String get mechanicMixTip => 'Lượng phải khớp và đích cần chỗ trống.';

  @override
  String get mechanicMixCaption => 'Đỏ + Vàng = Cam';

  @override
  String get mechanicFrozenTitle => 'ỐNG ĐÓNG BĂNG';

  @override
  String get mechanicFrozenHeadline => 'Tạm không chạm được';

  @override
  String get mechanicFrozenBody =>
      'Không đổ vào/ra ống băng. Sau đủ lượt, băng tan.';

  @override
  String get mechanicFrozenTip =>
      'Mở đường bằng ống khác; dùng ngay khi tan băng.';

  @override
  String get mechanicFrozenCaption => 'Chờ lượt → tan băng';

  @override
  String get mechanicLockedTitle => 'ỐNG KHÓA';

  @override
  String get mechanicLockedHeadline => 'Hoàn thành ống khác trước';

  @override
  String get mechanicLockedBody =>
      'Ống khóa đóng cho đến khi hoàn thành đủ số ống.';

  @override
  String get mechanicLockedTip => 'Xong ống dễ trước, rồi dùng chỗ khóa.';

  @override
  String get mechanicLockedCaption => 'Hoàn thành → mở khóa';

  @override
  String get mechanicHeatedTitle => 'ỐNG GIA NHIỆT';

  @override
  String get mechanicHeatedHeadline => 'Bốc hơi chất thừa';

  @override
  String get mechanicHeatedBody =>
      'Chất đổ vào gia nhiệt biến mất. Lượt nhiệt có hạn — thường cho màu thừa.';

  @override
  String get mechanicHeatedTip => 'Hết nhiệt không đổ được. Dọn thừa sớm.';

  @override
  String get mechanicHeatedCaption => 'Thừa → hơi';

  @override
  String get mechanicValveTitle => 'VAN MỘT CHIỀU';

  @override
  String get mechanicValveHeadline => 'Chỉ đổ vào';

  @override
  String get mechanicValveBody =>
      'Có thể đổ vào ống van nhưng không lấy ra. Như kho vĩnh viễn.';

  @override
  String get mechanicValveTip => 'Màu sai có thể kẹt. Đổ van cẩn thận.';

  @override
  String get mechanicValveCaption => 'Chỉ vào';

  @override
  String get mechanicPortalTitle => 'CẶP CỔNG';

  @override
  String get mechanicPortalHeadline => 'Vào một, ra một';

  @override
  String get mechanicPortalBody =>
      'Đổ vào một cổng, chất lỏng xuất hiện ở cổng đôi. Hai ống liên kết.';

  @override
  String get mechanicPortalTip => 'Nhắm một cổng — lấp đầy ở phía bên kia.';

  @override
  String get mechanicPortalCaption => 'A vào → B ra';

  @override
  String get mechanicBombTitle => 'ỐNG BOM';

  @override
  String get mechanicBombHeadline => 'Xong trước timer';

  @override
  String get mechanicBombBody =>
      'Ống đánh dấu có đếm ngược. Lấp một màu trước khi về 0 hoặc thua.';

  @override
  String get mechanicBombTip => 'An toàn ống bom trước, rồi sắp xếp phần còn.';

  @override
  String get mechanicBombCaption => 'Lấp trước hết giờ';

  @override
  String get mechanicNarrowTitle => 'ỐNG HẸP';

  @override
  String get mechanicNarrowHeadline => 'Bộ đệm dung tích 2';

  @override
  String get mechanicNarrowBody =>
      'Màn có ống phụ ngắn tối đa 2 đơn vị. Cho thao tác chật.';

  @override
  String get mechanicNarrowTip =>
      'Phải rỗng để xong. Giữ 2 đơn vị không tính xong — đổ rỗng lại.';

  @override
  String get mechanicNarrowCaption => 'Dung tích 2 • rỗng để xong';

  @override
  String get mechanicMovingTitle => 'BỐ CỤC DI CHUYỂN';

  @override
  String get mechanicMovingHeadline => 'Ống đổi chỗ';

  @override
  String get mechanicMovingBody =>
      'Vài lượt bàn dịch chuyển và thứ tự ống đổi. Cùng ống — vị trí mới.';

  @override
  String get mechanicMovingTip => 'Theo dõi ống bằng id và màu.';

  @override
  String get mechanicMovingCaption => 'Dịch mỗi 3 lượt';

  @override
  String get mechanicBossTitle => 'THÍ NGHIỆM BOSS';

  @override
  String get mechanicBossHeadline => 'Luật khắt khe hơn';

  @override
  String get mechanicBossBody =>
      'Màn Boss có giới hạn lượt và có thể kết hợp nhiều luật đặc biệt. Chơi có kế hoạch.';

  @override
  String get mechanicBossTip => 'Gần Par; tránh undo và đổ lãng phí.';

  @override
  String get mechanicBossCaption => 'Giới hạn + luật đặc biệt';

  @override
  String levelNumber(int level) {
    final intl.NumberFormat levelNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String levelString = levelNumberFormat.format(level);

    return 'Màn $levelString';
  }

  @override
  String get movesLabel => 'Lượt';

  @override
  String headerMeta(int par) {
    final intl.NumberFormat parNumberFormat = intl.NumberFormat.decimalPattern(
      localeName,
    );
    final String parString = parNumberFormat.format(par);

    return 'Par $parString  •  Thử lại không giới hạn  •  Offline';
  }

  @override
  String get pauseTooltip => 'Tạm dừng';

  @override
  String get resumeTooltip => 'Tiếp tục';

  @override
  String get settingsTooltip => 'Cài đặt';

  @override
  String get pausedTitle => 'TẠM DỪNG';

  @override
  String get pausedBody => 'Timer và âm đếm ngược đang dừng.';

  @override
  String get resumeCta => 'TIẾP TỤC';

  @override
  String tempoBadge(String difficulty, int seconds) {
    final intl.NumberFormat secondsNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String secondsString = secondsNumberFormat.format(seconds);

    return '$difficulty  $secondsString g';
  }

  @override
  String get easyRelaxed => 'DỄ  •  THƯ GIÃN';

  @override
  String bossMovesLeft(int moves) {
    final intl.NumberFormat movesNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String movesString = movesNumberFormat.format(moves);

    return 'BOSS • $movesString LƯỢT';
  }

  @override
  String get hiddenLiquid => 'CHẤT ẨN';

  @override
  String get frozenTube => 'ỐNG BĂNG';

  @override
  String get iceCleared => 'HẾT BĂNG';

  @override
  String get lockedTube => 'ỐNG KHÓA';

  @override
  String get lockOpened => 'MỞ KHÓA';

  @override
  String heatBurn(int remaining) {
    final intl.NumberFormat remainingNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String remainingString = remainingNumberFormat.format(remaining);

    return 'ĐỐT THỪA • $remainingString';
  }

  @override
  String heatTube(int remaining) {
    final intl.NumberFormat remainingNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String remainingString = remainingNumberFormat.format(remaining);

    return 'ỐNG NHIỆT • $remainingString';
  }

  @override
  String get portalPair => 'CẶP CỔNG';

  @override
  String get oneWayValve => 'VAN MỘT CHIỀU';

  @override
  String bombCountdown(int remaining) {
    final intl.NumberFormat remainingNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String remainingString = remainingNumberFormat.format(remaining);

    return 'BOM • $remainingString';
  }

  @override
  String movingEvery(int moves) {
    final intl.NumberFormat movesNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String movesString = movesNumberFormat.format(moves);

    return 'DỊCH MỖI $movesString LƯỢT';
  }

  @override
  String get narrowTubeCap2 => 'ỐNG HẸP • DUNG TÍCH 2';

  @override
  String get hiddenMix => 'PHA ẨN';

  @override
  String get portalFlow => 'DÒNG PORTAL!';

  @override
  String get tubesShifted => 'ỐNG ĐÃ DỊCH!';

  @override
  String bombMovesLeft(int remaining) {
    final intl.NumberFormat remainingNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String remainingString = remainingNumberFormat.format(remaining);

    return 'BOM: $remainingString LƯỢT!';
  }

  @override
  String get iceBroken => 'Băng vỡ! Ống băng dùng được.';

  @override
  String get lockUnlocked => 'Mở khóa! Ống mới sẵn sàng.';

  @override
  String get tubeFrozenMsg => 'Ống này đang băng. Vài lượt đúng sẽ tan.';

  @override
  String get tubeLockedMsg => 'Ống này bị khóa. Hoàn thành màu khác trước.';

  @override
  String get valveOneWayMsg => 'Van vàng một chiều: chỉ đổ vào, không lấy ra.';

  @override
  String get heatExhaustedMsg => 'Ống gia nhiệt hết lượt đốt.';

  @override
  String insufficientCoins(int cost) {
    final intl.NumberFormat costNumberFormat = intl.NumberFormat.decimalPattern(
      localeName,
    );
    final String costString = costNumberFormat.format(cost);

    return 'Không đủ xu ($costString).';
  }

  @override
  String get adFailed => 'Không hoàn thành quảng cáo.';

  @override
  String reopenPaid(int cost, String title) {
    final intl.NumberFormat costNumberFormat = intl.NumberFormat.decimalPattern(
      localeName,
    );
    final String costString = costNumberFormat.format(cost);

    return '-$costString xu • $title mở lại';
  }

  @override
  String reopenAd(String title) {
    return 'Mở bằng quảng cáo • $title';
  }

  @override
  String get tipQuotaEmpty => 'Hết gợi ý cho màn này.';

  @override
  String get rewardsNotReady => 'Hệ thống thưởng chưa sẵn sàng.';

  @override
  String get freeHintUsed => 'Đã dùng gợi ý miễn phí.';

  @override
  String hintCost(int cost) {
    final intl.NumberFormat costNumberFormat = intl.NumberFormat.decimalPattern(
      localeName,
    );
    final String costString = costNumberFormat.format(cost);

    return 'Gợi ý: -$costString xu';
  }

  @override
  String get noHintAvailable => 'Không có gợi ý hữu ích.';

  @override
  String get assistHint => 'gợi ý';

  @override
  String get assistUndo => 'undo';

  @override
  String get freeHintEarned => 'Nhận 1 gợi ý miễn phí.';

  @override
  String get freeUndoEarned => 'Nhận 1 undo miễn phí.';

  @override
  String failureCredit(int deducted, int floor) {
    final intl.NumberFormat deductedNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String deductedString = deductedNumberFormat.format(deducted);
    final intl.NumberFormat floorNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String floorString = floorNumberFormat.format(floor);

    return '-$deductedString tín dụng • thất bại (tối thiểu $floorString)';
  }

  @override
  String debtLimitToast(int floor) {
    final intl.NumberFormat floorNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String floorString = floorNumberFormat.format(floor);

    return 'Giới hạn nợ ($floorString). Xem QC để thử lại.';
  }

  @override
  String restartCredit(int deducted) {
    final intl.NumberFormat deductedNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String deductedString = deductedNumberFormat.format(deducted);

    return '-$deductedString tín dụng • chơi lại';
  }

  @override
  String insufficientCoinsTitle(int cost) {
    final intl.NumberFormat costNumberFormat = intl.NumberFormat.decimalPattern(
      localeName,
    );
    final String costString = costNumberFormat.format(cost);

    return 'Không đủ xu ($costString)';
  }

  @override
  String watchAdEarnAssist(String label) {
    return 'Xem QC để nhận 1 $label miễn phí.';
  }

  @override
  String debtLimitTitle(int floor) {
    final intl.NumberFormat floorNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String floorString = floorNumberFormat.format(floor);

    return 'Giới hạn nợ ($floorString)';
  }

  @override
  String get debtLimitBody => 'Bạn ở mức nợ tối thiểu. Xem QC để thử lại.';

  @override
  String get tipUnlockPaidBody =>
      'Bạn đã xem luật này miễn phí một lần.\nĐọc lại tốn xu.';

  @override
  String get tipUnlockAdBody => 'Không đủ xu.\nXem QC để mở mẹo miễn phí.';

  @override
  String get yourBalance => 'Số dư: ';

  @override
  String payCost(int cost) {
    final intl.NumberFormat costNumberFormat = intl.NumberFormat.decimalPattern(
      localeName,
    );
    final String costString = costNumberFormat.format(cost);

    return 'Trả $costString';
  }

  @override
  String get timeUp => 'HẾT GIỜ';

  @override
  String get bombExploded => 'BOM NỔ!';

  @override
  String get moveLimitReached => 'ĐẠT GIỚI HẠN LƯỢT';

  @override
  String failurePenaltyLine(int amount, int floor) {
    final intl.NumberFormat amountNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String amountString = amountNumberFormat.format(amount);
    final intl.NumberFormat floorNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String floorString = floorNumberFormat.format(floor);

    return 'Thất bại: -$amountString tín dụng (nợ tối thiểu $floorString).';
  }

  @override
  String get tryEasyModeHint => 'Có thể tắt áp lực thời gian ở chế độ Dễ.';

  @override
  String get bombFailHint => 'Lấp ống đánh dấu một màu trước khi đếm đỏ hết.';

  @override
  String get bossFailHint =>
      'Thí nghiệm Boss vượt giới hạn lượt. Lên kế hoạch pha màu và ống trống.';

  @override
  String get debtLimitRetryHint => 'Ở giới hạn nợ — xem QC để thử lại.';

  @override
  String get retryWithAd => 'XEM QC • THỬ LẠI';

  @override
  String get retryAgain => 'THỬ LẠI';

  @override
  String get vaporized => 'BỐC HƠI!';

  @override
  String colorClearedBonus(String color) {
    return '$color XÓA  •  +4 GIÂY';
  }

  @override
  String get newColorFormed => 'MÀU MỚI!';

  @override
  String colorBonusSeconds(String color) {
    return '$color  •  +6 GIÂY';
  }

  @override
  String get legendaryFlow => 'DÒNG CHẢY HUYỀN THOẠI!';

  @override
  String flowMultiplier(int combo) {
    final intl.NumberFormat comboNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String comboString = comboNumberFormat.format(combo);

    return 'DÒNG x$comboString';
  }

  @override
  String get legendaryFlowLabel => 'Dòng chảy huyền thoại';

  @override
  String flowLabel(int multiplier) {
    final intl.NumberFormat multiplierNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String multiplierString = multiplierNumberFormat.format(multiplier);

    return 'Dòng x$multiplierString';
  }

  @override
  String tubeSemantics(String id, int units) {
    final intl.NumberFormat unitsNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String unitsString = unitsNumberFormat.format(units);

    return 'Ống $id, $unitsString đơn vị';
  }

  @override
  String get colorRed => 'Đỏ';

  @override
  String get colorBlue => 'Xanh dương';

  @override
  String get colorPurple => 'Tím';

  @override
  String get colorYellow => 'Vàng';

  @override
  String get colorGreen => 'Xanh lá';

  @override
  String get colorOrange => 'Cam';

  @override
  String get colorPink => 'Hồng';

  @override
  String get colorCyan => 'Xanh lơ';

  @override
  String get colorLime => 'Chanh';

  @override
  String get colorBrown => 'Nâu';

  @override
  String get skipLevelOfferBody =>
      'Màn này khó. Xem quảng cáo để mở màn tiếp theo.';

  @override
  String get skipLevelCta => 'XEM QC • BỎ QUA';

  @override
  String get skipLevelNote => 'Bạn có thể quay lại hoàn thành màn này sau.';

  @override
  String get skipLevelUnlocked => 'Đã mở màn tiếp theo!';

  @override
  String get developerModeTitle => 'Chế độ nhà phát triển';

  @override
  String get developerModePasswordHint => 'Mật khẩu';

  @override
  String get developerModeUnlock => 'Mở khóa';

  @override
  String get developerModeEnabled => 'Đã mở tất cả màn để kiểm thử.';

  @override
  String get developerModeWrongPassword => 'Sai mật khẩu';

  @override
  String get developerModeActive => 'Chế độ nhà phát triển đang bật';

  @override
  String get developerModeDisable => 'Tắt chế độ nhà phát triển';
}
