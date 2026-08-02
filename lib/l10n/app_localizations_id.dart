// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Indonesian (`id`).
class AppLocalizationsId extends AppLocalizations {
  AppLocalizationsId([String locale = 'id']) : super(locale);

  @override
  String get appTitle => 'Liquid Sort Puzzle';

  @override
  String get brandName => 'Liquid Sort';

  @override
  String get brandPuzzle => 'PUZZLE';

  @override
  String get splashTagline => 'Urutkan warna. Tenangkan pikiran.';

  @override
  String get back => 'Kembali';

  @override
  String get cancel => 'Batal';

  @override
  String get play => 'MAIN';

  @override
  String get settings => 'Pengaturan';

  @override
  String get home => 'Beranda';

  @override
  String get levels => 'Level';

  @override
  String get collection => 'Koleksi';

  @override
  String get achievements => 'Pencapaian';

  @override
  String get continueLabel => 'Lanjut';

  @override
  String get pause => 'Jeda';

  @override
  String get close => 'Tutup';

  @override
  String get free => 'Gratis';

  @override
  String get coin => 'Koin';

  @override
  String get coins => 'Koin';

  @override
  String get secondsShort => 'd';

  @override
  String get moves => 'Gerakan';

  @override
  String get best => 'Terbaik';

  @override
  String get par => 'Par';

  @override
  String get locked => 'Terkunci';

  @override
  String get ad => 'IKLAN';

  @override
  String get watchAd => 'Tonton iklan';

  @override
  String get claiming => 'Mengambil...';

  @override
  String get homeTagline => 'Urutkan cerdas, campur warna!';

  @override
  String get progressAndAchievements => 'PROGRES & PENCAPAIAN';

  @override
  String get progressTapHint => 'Ketuk: statistik dan lencana';

  @override
  String get dailyReward => 'Hadiah Harian';

  @override
  String get rewardReady => 'Hadiah siap';

  @override
  String get comeTomorrow => 'Datang besok';

  @override
  String get collectionSubtitle => 'Jelajahi tema';

  @override
  String get premiumThemes => 'TEMA PREMIUM';

  @override
  String get premiumThemesBody =>
      'Tema Classic, Galaxy, Ocean, Neon, dan Golden Age terbuka di sini.';

  @override
  String get playCta => 'MAIN';

  @override
  String dailyClaimSnack(int coins, String hintSuffix) {
    final intl.NumberFormat coinsNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String coinsString = coinsNumberFormat.format(coins);

    return '+$coinsString koin$hintSuffix';
  }

  @override
  String freeHintSuffix(int count) {
    final intl.NumberFormat countNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String countString = countNumberFormat.format(count);

    return ' + $countString petunjuk gratis';
  }

  @override
  String get levelMapTitle => 'PETA LEVEL';

  @override
  String levelsCompletedProgress(int completed, int total) {
    final intl.NumberFormat completedNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String completedString = completedNumberFormat.format(completed);
    final intl.NumberFormat totalNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String totalString = totalNumberFormat.format(total);

    return '$completedString/$totalString level selesai';
  }

  @override
  String get newExperimentsBanner =>
      'EKSPERIMEN BARU\nPORTAL • BOM • KATUP • REAKTOR';

  @override
  String get settingsTitle => 'PENGATURAN';

  @override
  String get settingsSubtitleAudio => 'Kontrol suara dan getaran';

  @override
  String get settingsSubtitleVisual => 'Warna, pola, dan animasi';

  @override
  String get settingsSubtitleGeneral => 'Kesulitan dan preferensi umum';

  @override
  String get sectionAudioFeedback => 'SUARA & UMPAN BALIK';

  @override
  String get soundEffects => 'Efek suara';

  @override
  String get soundEffectsSubtitle => 'Suara pilih, tuang, dan sukses';

  @override
  String get backgroundMusic => 'Musik latar';

  @override
  String get backgroundMusicSubtitle => 'Musik ambient kosmik yang tenang';

  @override
  String get haptics => 'Getaran';

  @override
  String get hapticsSubtitle => 'Umpan balik ringan saat ketuk';

  @override
  String get sectionVisual => 'PREFERENSI VISUAL';

  @override
  String get neonPalette => 'Palet cairan neon';

  @override
  String get neonPaletteSubtitle => 'Warna neon cerah di game';

  @override
  String get colorAccessibility => 'Aksesibilitas warna';

  @override
  String get colorAccessibilitySubtitle => 'Menambah pola halus pada cairan';

  @override
  String get reducedAnimations => 'Animasi dikurangi';

  @override
  String get reducedAnimationsSubtitle => 'Mempercepat gerakan tuang';

  @override
  String get sectionDifficulty => 'KESULITAN & TEKANAN WAKTU';

  @override
  String get offlineProgress => 'Progres offline';

  @override
  String get offlineProgressBody =>
      'Level dan pengaturanmu aman tersimpan di perangkat ini.';

  @override
  String settingsVersion(String version) {
    return 'Liquid Sort Puzzle  •  v$version';
  }

  @override
  String get tabAudio => 'Audio';

  @override
  String get tabVisual => 'Visual';

  @override
  String get tabGeneral => 'Pengaturan';

  @override
  String get language => 'Bahasa';

  @override
  String get languageSubtitle => 'Pilih bahasa aplikasi';

  @override
  String get languageSystem => 'Default sistem';

  @override
  String get languageSystemSubtitle => 'Sesuai bahasa ponsel atau tablet';

  @override
  String get difficultyEasy => 'Mudah';

  @override
  String get difficultyNormal => 'Normal';

  @override
  String get difficultyHard => 'Sulit';

  @override
  String get difficultyEasyDesc =>
      'Tanpa tekanan waktu • koin lebih sedikit • iklan interstisial lebih banyak';

  @override
  String get difficultyNormalDesc => 'Timer sedang, tekanan ringan';

  @override
  String get difficultyHardDesc => 'Timer sangat pendek, -5 d saat salah';

  @override
  String get dailyRewardTitle => 'HADIAH HARIAN';

  @override
  String get dailyRewardClaimBody =>
      'Klaim hadiah hari ini. Kembali setiap hari agar hadiah bertambah.';

  @override
  String get dailyRewardClaimedBody => 'Sudah diklaim hari ini. Kembali besok.';

  @override
  String dailyStreak(int streak) {
    final intl.NumberFormat streakNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String streakString = streakNumberFormat.format(streak);

    return 'Streak: $streakString hari';
  }

  @override
  String dayChip(int day) {
    final intl.NumberFormat dayNumberFormat = intl.NumberFormat.decimalPattern(
      localeName,
    );
    final String dayString = dayNumberFormat.format(day);

    return 'H$dayString';
  }

  @override
  String get plusHint => '+petunjuk';

  @override
  String get claimDailyReward => 'Klaim hadiah hari ini';

  @override
  String get comeAgainTomorrow => 'Kembali besok';

  @override
  String get achievementsTitle => 'PENCAPAIAN';

  @override
  String get achGreetingEmpty =>
      'Siap. Selesaikan level pertamamu dan lencana akan menumpuk di sini.';

  @override
  String get achGreetingFlow =>
      'Aliranmu menyala — kamu sudah menangkap ritme game ini.';

  @override
  String get achGreetingStars =>
      'Koleksi bintangmu bersinar. Lanjutkan, legenda.';

  @override
  String get achGreetingVeteran => 'Tempo bagus. Lab menyesuaikan ritmemu.';

  @override
  String get achGreetingProgress =>
      'Progres solid. Setiap level bersih membuatmu lebih tajam.';

  @override
  String get achGreetingStarter =>
      'Awal kuat. Beberapa level lagi, lencana akan berdatangan.';

  @override
  String get statLevel => 'Level';

  @override
  String get statStars => 'Bintang';

  @override
  String get statCoins => 'Koin';

  @override
  String get statFlow => 'Aliran';

  @override
  String get statUnlocked => 'Terbuka';

  @override
  String get achievementLocked => 'Terkunci';

  @override
  String get achievementPerfectSort => 'Sortir Sempurna';

  @override
  String get achievementPerfectSortDesc => 'Selesai dalam Par tanpa bantuan';

  @override
  String get achievementUnderPar => 'Di Bawah Par';

  @override
  String get achievementUnderParDesc => 'Jangan melebihi gerakan target';

  @override
  String get achievementNoUndo => 'Tanpa Undo';

  @override
  String get achievementNoUndoDesc => 'Selesai tanpa undo';

  @override
  String get achievementNoHint => 'Tanpa Petunjuk';

  @override
  String get achievementNoHintDesc => 'Selesaikan tanpa petunjuk';

  @override
  String get achievementFlowMaster => 'Master aliran';

  @override
  String get achievementFlowMasterDesc => 'Raih Aliran x5 dalam satu level';

  @override
  String get achievementNewRecord => 'Rekor Baru';

  @override
  String get achievementNewRecordDesc => 'Pecahkan jumlah gerakan terbaikmu';

  @override
  String get achievementFirstTry => 'Percobaan Pertama';

  @override
  String get achievementFirstTryDesc => 'Selesai tanpa restart';

  @override
  String get achievementNoExtraTube => 'Tanpa Tabung Extra';

  @override
  String get achievementNoExtraTubeDesc => 'Selesai tanpa menambah tabung';

  @override
  String get undo => 'Undo';

  @override
  String get restart => 'Restart';

  @override
  String get hint => 'Petunjuk';

  @override
  String get addTube => 'Tambah tabung';

  @override
  String get perfect => 'SEMPURNA!';

  @override
  String levelCompleted(int level) {
    final intl.NumberFormat levelNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String levelString = levelNumberFormat.format(level);

    return 'Level $levelString selesai';
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

    return '$movesString gerakan  •  Par $parString';
  }

  @override
  String get newRecordAchievements => 'REKOR BARU • PENCAPAIAN';

  @override
  String get achievementsHeader => 'PENCAPAIAN';

  @override
  String assistancePenalty(int amount) {
    final intl.NumberFormat amountNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String amountString = amountNumberFormat.format(amount);

    return 'Penalti petunjuk: -$amountString koin';
  }

  @override
  String get doubleReward => 'HADIAH GANDA';

  @override
  String get goToLevels => 'LEVEL';

  @override
  String get continueNext => 'LANJUT';

  @override
  String get backToLevelSelect => 'Kembali ke pilih level';

  @override
  String get bestLabel => 'Terbaik';

  @override
  String get flowCombo => 'Kombo aliran';

  @override
  String get extraTube => 'Tabung extra';

  @override
  String get fullReward => 'Hadiah penuh';

  @override
  String get halfReward => 'Setengah hadiah';

  @override
  String get quarterReward => 'Seperempat hadiah';

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
  String get newRule => 'ATURAN BARU';

  @override
  String get gotItStart => 'MENGERTI, MULAI';

  @override
  String get firstTimeTipOnly => 'Hanya ditampilkan pertama kali';

  @override
  String get mechanicBasicsTitle => 'CARA MAIN';

  @override
  String get mechanicBasicsHeadline => 'Pilih tabung, tuang cairan';

  @override
  String get mechanicBasicsBody =>
      'Ketuk tabung untuk memilih warna atas. Lalu ketuk target — warna sama bisa ditumpuk atau tuang ke tabung kosong.';

  @override
  String get mechanicBasicsTip =>
      'Tujuan: setiap tabung penuh jadi satu warna. Tabung kosong adalah pembantu.';

  @override
  String get mechanicBasicsCaption => 'Pilih → Tuang → Urut';

  @override
  String get mechanicHiddenTitle => 'TABUNG TERSEMBUNYI';

  @override
  String get mechanicHiddenHeadline => 'Hanya warna atas terlihat';

  @override
  String get mechanicHiddenBody =>
      'Di tabung ini hanya warna atas terlihat. Lapisan bawah kabur sampai atas kosong.';

  @override
  String get mechanicHiddenTip =>
      'Jangan tuang buta — kosongkan atas dulu, lihat bawah, lalu putuskan.';

  @override
  String get mechanicHiddenCaption => 'Atas jelas • bawah kabur';

  @override
  String get mechanicMixTitle => 'CAMPUR WARNA';

  @override
  String get mechanicMixHeadline => 'Dua warna jadi warna baru';

  @override
  String get mechanicMixBody =>
      'Tuang warna tertentu satu ke lainnya untuk mencampur. Ikuti persamaan di atas.';

  @override
  String get mechanicMixTip =>
      'Jumlah harus cocok dan target perlu ruang kosong.';

  @override
  String get mechanicMixCaption => 'Merah + Kuning = Oranye';

  @override
  String get mechanicFrozenTitle => 'TABUNG BEKU';

  @override
  String get mechanicFrozenHeadline => 'Tak bisa disentuh sementara';

  @override
  String get mechanicFrozenBody =>
      'Tidak bisa tuang ke/dari tabung beku. Setelah cukup gerakan, es mencair.';

  @override
  String get mechanicFrozenTip =>
      'Buka jalan dengan tabung lain; pakai begitu es mencair.';

  @override
  String get mechanicFrozenCaption => 'Tunggu gerakan → es mencair';

  @override
  String get mechanicLockedTitle => 'TABUNG TERKUNCI';

  @override
  String get mechanicLockedHeadline => 'Selesaikan tabung lain dulu';

  @override
  String get mechanicLockedBody =>
      'Tabung terkunci tetap tertutup sampai kamu menyelesaikan sejumlah tabung.';

  @override
  String get mechanicLockedTip =>
      'Selesaikan tabung mudah dulu, lalu pakai ruang terkunci.';

  @override
  String get mechanicLockedCaption => 'Selesai → buka';

  @override
  String get mechanicHeatedTitle => 'TABUNG PEMANAS';

  @override
  String get mechanicHeatedHeadline => 'Uapkan cairan sisa';

  @override
  String get mechanicHeatedBody =>
      'Cairan yang dituang ke pemanas hilang. Muatan panas terbatas — biasanya untuk warna sisa.';

  @override
  String get mechanicHeatedTip =>
      'Tanpa panas tidak bisa tuang. Bersihkan sisa lebih awal.';

  @override
  String get mechanicHeatedCaption => 'Sisa → uap';

  @override
  String get mechanicValveTitle => 'KATUP SATU ARAH';

  @override
  String get mechanicValveHeadline => 'Hanya tuang masuk';

  @override
  String get mechanicValveBody =>
      'Bisa tuang ke tabung katup tapi tidak bisa keluar. Seperti gudang permanen.';

  @override
  String get mechanicValveTip =>
      'Warna salah bisa menjebak. Isi katup dengan hati-hati.';

  @override
  String get mechanicValveCaption => 'Masuk saja';

  @override
  String get mechanicPortalTitle => 'PASANGAN PORTAL';

  @override
  String get mechanicPortalHeadline => 'Masuk satu, keluar yang lain';

  @override
  String get mechanicPortalBody =>
      'Tuang ke satu portal, cairan muncul di pasangannya. Dua tabung terhubung.';

  @override
  String get mechanicPortalTip =>
      'Arahkan ke satu portal — pengisian terjadi di sisi lain.';

  @override
  String get mechanicPortalCaption => 'A masuk → B keluar';

  @override
  String get mechanicBombTitle => 'TABUNG BOM';

  @override
  String get mechanicBombHeadline => 'Selesai sebelum timer';

  @override
  String get mechanicBombBody =>
      'Tabung bertanda punya hitung mundur. Isi satu warna sebelum nol atau gagal.';

  @override
  String get mechanicBombTip =>
      'Amankan tabung bom dulu, lalu urutkan sisanya.';

  @override
  String get mechanicBombCaption => 'Isi sebelum hitung mundur habis';

  @override
  String get mechanicNarrowTitle => 'TABUNG SEMPIT';

  @override
  String get mechanicNarrowHeadline => 'Buffer kapasitas 2';

  @override
  String get mechanicNarrowBody =>
      'Level ini punya tabung bantu pendek max 2 unit. Untuk manuver sempit.';

  @override
  String get mechanicNarrowTip =>
      'Harus kosong untuk selesai. Memegang 2 unit bukan selesai — kosongkan lagi.';

  @override
  String get mechanicNarrowCaption => 'Kapasitas 2 • kosong untuk selesai';

  @override
  String get mechanicMovingTitle => 'TATA LETAK BERGERAK';

  @override
  String get mechanicMovingHeadline => 'Tabung bertukar posisi';

  @override
  String get mechanicMovingBody =>
      'Setiap beberapa gerakan papan bergeser dan urutan tabung berubah. Tabung sama — posisi baru.';

  @override
  String get mechanicMovingTip => 'Lacak tabung dari id dan warna.';

  @override
  String get mechanicMovingCaption => 'Bergeser tiap 3 gerakan';

  @override
  String get mechanicBossTitle => 'EKSPERIMEN BOSS';

  @override
  String get mechanicBossHeadline => 'Aturan lebih ketat';

  @override
  String get mechanicBossBody =>
      'Level Boss punya batas gerakan dan bisa gabung beberapa aturan khusus. Main dengan rencana.';

  @override
  String get mechanicBossTip => 'Dekati Par; hindari undo dan tuangan sia-sia.';

  @override
  String get mechanicBossCaption => 'Batas + aturan khusus';

  @override
  String levelNumber(int level) {
    final intl.NumberFormat levelNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String levelString = levelNumberFormat.format(level);

    return 'Level $levelString';
  }

  @override
  String get movesLabel => 'Gerakan';

  @override
  String headerMeta(int par) {
    final intl.NumberFormat parNumberFormat = intl.NumberFormat.decimalPattern(
      localeName,
    );
    final String parString = parNumberFormat.format(par);

    return 'Par $parString  •  Retry tak terbatas  •  Offline';
  }

  @override
  String get pauseTooltip => 'Jeda';

  @override
  String get resumeTooltip => 'Lanjut';

  @override
  String get settingsTooltip => 'Pengaturan';

  @override
  String get pausedTitle => 'GAME DIJEDA';

  @override
  String get pausedBody => 'Timer dan suara hitung mundur dijeda.';

  @override
  String get resumeCta => 'LANJUT';

  @override
  String tempoBadge(String difficulty, int seconds) {
    final intl.NumberFormat secondsNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String secondsString = secondsNumberFormat.format(seconds);

    return '$difficulty  $secondsString d';
  }

  @override
  String get easyRelaxed => 'MUDAH  •  SANTAI';

  @override
  String bossMovesLeft(int moves) {
    final intl.NumberFormat movesNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String movesString = movesNumberFormat.format(moves);

    return 'BOSS • $movesString GERAKAN';
  }

  @override
  String get hiddenLiquid => 'CAIRAN TERSEMBUNYI';

  @override
  String get frozenTube => 'TABUNG BEKU';

  @override
  String get iceCleared => 'ES HILANG';

  @override
  String get lockedTube => 'TABUNG TERKUNCI';

  @override
  String get lockOpened => 'KUNCI TERBUKA';

  @override
  String heatBurn(int remaining) {
    final intl.NumberFormat remainingNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String remainingString = remainingNumberFormat.format(remaining);

    return 'BAKAR SISA • $remainingString';
  }

  @override
  String heatTube(int remaining) {
    final intl.NumberFormat remainingNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String remainingString = remainingNumberFormat.format(remaining);

    return 'TABUNG PANAS • $remainingString';
  }

  @override
  String get portalPair => 'PASANGAN PORTAL';

  @override
  String get oneWayValve => 'KATUP SATU ARAH';

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

    return 'BERGERAK TIAP $movesString';
  }

  @override
  String get narrowTubeCap2 => 'TABUNG SEMPIT • KAP 2';

  @override
  String get hiddenMix => 'CAMPURAN TERSEMBUNYI';

  @override
  String get portalFlow => 'ALIRAN PORTAL!';

  @override
  String get tubesShifted => 'TABUNG BERGERAK!';

  @override
  String bombMovesLeft(int remaining) {
    final intl.NumberFormat remainingNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String remainingString = remainingNumberFormat.format(remaining);

    return 'BOM: $remainingString GERAKAN!';
  }

  @override
  String get iceBroken => 'Es pecah! Tabung beku siap dipakai.';

  @override
  String get lockUnlocked => 'Kunci terbuka! Tabung baru siap.';

  @override
  String get tubeFrozenMsg =>
      'Tabung ini beku. Beberapa gerakan benar akan mencairkannya.';

  @override
  String get tubeLockedMsg =>
      'Tabung ini terkunci. Selesaikan warna lain dulu.';

  @override
  String get valveOneWayMsg =>
      'Katup emas satu arah: bisa tuang masuk, tidak bisa keluar.';

  @override
  String get heatExhaustedMsg => 'Pemanas kehabisan muatan bakar.';

  @override
  String insufficientCoins(int cost) {
    final intl.NumberFormat costNumberFormat = intl.NumberFormat.decimalPattern(
      localeName,
    );
    final String costString = costNumberFormat.format(cost);

    return 'Koin tidak cukup ($costString).';
  }

  @override
  String get adFailed => 'Iklan tidak bisa diselesaikan.';

  @override
  String reopenPaid(int cost, String title) {
    final intl.NumberFormat costNumberFormat = intl.NumberFormat.decimalPattern(
      localeName,
    );
    final String costString = costNumberFormat.format(cost);

    return '-$costString koin • $title dibuka lagi';
  }

  @override
  String reopenAd(String title) {
    return 'Dibuka dengan iklan • $title';
  }

  @override
  String get tipQuotaEmpty => 'Petunjuk level ini habis.';

  @override
  String get rewardsNotReady => 'Sistem hadiah belum siap.';

  @override
  String get freeHintUsed => 'Petunjuk gratis digunakan.';

  @override
  String hintCost(int cost) {
    final intl.NumberFormat costNumberFormat = intl.NumberFormat.decimalPattern(
      localeName,
    );
    final String costString = costNumberFormat.format(cost);

    return 'Petunjuk: -$costString koin';
  }

  @override
  String get noHintAvailable => 'Tidak ada petunjuk berguna saat ini.';

  @override
  String get assistHint => 'petunjuk';

  @override
  String get assistUndo => 'undo';

  @override
  String get freeHintEarned => '1 petunjuk gratis didapat.';

  @override
  String get freeUndoEarned => '1 undo gratis didapat.';

  @override
  String failureCredit(int deducted, int floor) {
    final intl.NumberFormat deductedNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String deductedString = deductedNumberFormat.format(deducted);
    final intl.NumberFormat floorNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String floorString = floorNumberFormat.format(floor);

    return '-$deductedString kredit • gagal (min $floorString)';
  }

  @override
  String debtLimitToast(int floor) {
    final intl.NumberFormat floorNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String floorString = floorNumberFormat.format(floor);

    return 'Batas utang ($floorString). Tonton iklan untuk retry.';
  }

  @override
  String restartCredit(int deducted) {
    final intl.NumberFormat deductedNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String deductedString = deductedNumberFormat.format(deducted);

    return '-$deductedString kredit • restart';
  }

  @override
  String insufficientCoinsTitle(int cost) {
    final intl.NumberFormat costNumberFormat = intl.NumberFormat.decimalPattern(
      localeName,
    );
    final String costString = costNumberFormat.format(cost);

    return 'Koin tidak cukup ($costString)';
  }

  @override
  String watchAdEarnAssist(String label) {
    return 'Tonton iklan untuk 1 $label gratis.';
  }

  @override
  String debtLimitTitle(int floor) {
    final intl.NumberFormat floorNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String floorString = floorNumberFormat.format(floor);

    return 'Batas utang ($floorString)';
  }

  @override
  String get debtLimitBody =>
      'Kamu di batas utang. Tonton iklan untuk coba lagi.';

  @override
  String get tipUnlockPaidBody =>
      'Kamu sudah lihat aturan ini gratis sekali.\nBaca lagi butuh koin.';

  @override
  String get tipUnlockAdBody =>
      'Koin tidak cukup.\nTonton iklan untuk buka tips ini gratis.';

  @override
  String get yourBalance => 'Saldo: ';

  @override
  String payCost(int cost) {
    final intl.NumberFormat costNumberFormat = intl.NumberFormat.decimalPattern(
      localeName,
    );
    final String costString = costNumberFormat.format(cost);

    return 'Bayar $costString';
  }

  @override
  String get timeUp => 'WAKTU HABIS';

  @override
  String get bombExploded => 'BOM MELEDak!';

  @override
  String get moveLimitReached => 'BATAS GERAKAN TERCAPAI';

  @override
  String failurePenaltyLine(int amount, int floor) {
    final intl.NumberFormat amountNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String amountString = amountNumberFormat.format(amount);
    final intl.NumberFormat floorNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String floorString = floorNumberFormat.format(floor);

    return 'Gagal: -$amountString kredit (utang min $floorString).';
  }

  @override
  String get tryEasyModeHint =>
      'Kamu bisa matikan tekanan waktu di mode Mudah.';

  @override
  String get bombFailHint =>
      'Isi tabung bertanda satu warna sebelum hitung mundur merah habis.';

  @override
  String get bossFailHint =>
      'Eksperimen Boss melebihi batas gerakan. Rencanakan campuran dan tabung kosong.';

  @override
  String get debtLimitRetryHint => 'Di batas utang — tonton iklan untuk retry.';

  @override
  String get retryWithAd => 'TONTON IKLAN • COBA LAGI';

  @override
  String get retryAgain => 'COBA LAGI';

  @override
  String get vaporized => 'MENGUAP!';

  @override
  String colorClearedBonus(String color) {
    return '$color HILANG  •  +4 D';
  }

  @override
  String get newColorFormed => 'WARNA BARU!';

  @override
  String colorBonusSeconds(String color) {
    return '$color  •  +6 D';
  }

  @override
  String get legendaryFlow => 'ALIRAN LEGENDARIS!';

  @override
  String flowMultiplier(int combo) {
    final intl.NumberFormat comboNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String comboString = comboNumberFormat.format(combo);

    return 'ALIRAN x$comboString';
  }

  @override
  String get legendaryFlowLabel => 'Aliran legendaris';

  @override
  String flowLabel(int multiplier) {
    final intl.NumberFormat multiplierNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String multiplierString = multiplierNumberFormat.format(multiplier);

    return 'Aliran x$multiplierString';
  }

  @override
  String tubeSemantics(String id, int units) {
    final intl.NumberFormat unitsNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String unitsString = unitsNumberFormat.format(units);

    return 'Tabung $id, $unitsString unit terisi';
  }

  @override
  String get colorRed => 'Merah';

  @override
  String get colorBlue => 'Biru';

  @override
  String get colorPurple => 'Ungu';

  @override
  String get colorYellow => 'Kuning';

  @override
  String get colorGreen => 'Hijau';

  @override
  String get colorOrange => 'Oranye';

  @override
  String get colorPink => 'Merah muda';

  @override
  String get colorCyan => 'Sian';

  @override
  String get colorLime => 'Lime';

  @override
  String get colorBrown => 'Cokelat';

  @override
  String get skipLevelOfferBody =>
      'Level ini sulit. Tonton iklan untuk membuka level berikutnya.';

  @override
  String get skipLevelCta => 'TONTON IKLAN • LEWATI';

  @override
  String get skipLevelNote =>
      'Kamu bisa kembali menyelesaikan level ini nanti.';

  @override
  String get skipLevelUnlocked => 'Level berikutnya terbuka!';

  @override
  String get developerModeTitle => 'Mode pengembang';

  @override
  String get developerModePasswordHint => 'Kata sandi';

  @override
  String get developerModeUnlock => 'Buka';

  @override
  String get developerModeEnabled => 'Semua level dibuka untuk pengujian.';

  @override
  String get developerModeWrongPassword => 'Kata sandi salah';

  @override
  String get developerModeActive => 'Mode pengembang aktif';

  @override
  String get developerModeDisable => 'Nonaktifkan mode pengembang';
}
