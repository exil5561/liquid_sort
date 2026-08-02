// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Turkish (`tr`).
class AppLocalizationsTr extends AppLocalizations {
  AppLocalizationsTr([String locale = 'tr']) : super(locale);

  @override
  String get appTitle => 'Liquid Sort Puzzle';

  @override
  String get brandName => 'Liquid Sort';

  @override
  String get brandPuzzle => 'PUZZLE';

  @override
  String get splashTagline => 'Renkleri ayır. Zihnini rahatlat.';

  @override
  String get back => 'Geri';

  @override
  String get cancel => 'Vazgeç';

  @override
  String get play => 'OYNA';

  @override
  String get settings => 'Ayarlar';

  @override
  String get home => 'Ana Sayfa';

  @override
  String get levels => 'Bölümler';

  @override
  String get collection => 'Koleksiyon';

  @override
  String get achievements => 'Başarılar';

  @override
  String get continueLabel => 'Devam et';

  @override
  String get pause => 'Duraklat';

  @override
  String get close => 'Kapat';

  @override
  String get free => 'Ücretsiz';

  @override
  String get coin => 'Coin';

  @override
  String get coins => 'Coin';

  @override
  String get secondsShort => 'sn';

  @override
  String get moves => 'Hamle';

  @override
  String get best => 'En iyi';

  @override
  String get par => 'Par';

  @override
  String get locked => 'Kilitli';

  @override
  String get ad => 'REKLAM';

  @override
  String get watchAd => 'Reklam izle';

  @override
  String get claiming => 'Alınıyor...';

  @override
  String get homeTagline => 'Akıllı sırala, renkleri birleştir!';

  @override
  String get progressAndAchievements => 'İLERLEME & BAŞARILAR';

  @override
  String get progressTapHint => 'Dokun: istatistik ve rozetlerin';

  @override
  String get dailyReward => 'Günlük Ödül';

  @override
  String get rewardReady => 'Ödül hazır';

  @override
  String get comeTomorrow => 'Yarın gel';

  @override
  String get collectionSubtitle => 'Temaları gör';

  @override
  String get premiumThemes => 'PREMIUM TEMALAR';

  @override
  String get premiumThemesBody =>
      'Klasik, Galaksi, Okyanus, Neon ve Altın Çağ temaları burada açılacak.';

  @override
  String get playCta => 'OYNA';

  @override
  String dailyClaimSnack(int coins, String hintSuffix) {
    final intl.NumberFormat coinsNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String coinsString = coinsNumberFormat.format(coins);

    return '+$coinsString coin$hintSuffix';
  }

  @override
  String freeHintSuffix(int count) {
    final intl.NumberFormat countNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String countString = countNumberFormat.format(count);

    return ' + $countString ücretsiz ipucu';
  }

  @override
  String get levelMapTitle => 'BÖLÜM HARİTASI';

  @override
  String levelsCompletedProgress(int completed, int total) {
    final intl.NumberFormat completedNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String completedString = completedNumberFormat.format(completed);
    final intl.NumberFormat totalNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String totalString = totalNumberFormat.format(total);

    return '$completedString/$totalString bölüm tamamlandı';
  }

  @override
  String get newExperimentsBanner =>
      'YENİ DENEYLER\nPORTAL • BOMBA • VALF • REAKTÖR';

  @override
  String get settingsTitle => 'AYARLAR';

  @override
  String get settingsSubtitleAudio => 'Ses ve titreşim kontrolleri';

  @override
  String get settingsSubtitleVisual => 'Renkler, desenler ve animasyonlar';

  @override
  String get settingsSubtitleGeneral => 'Zorluk ve genel oyun tercihleri';

  @override
  String get sectionAudioFeedback => 'SES VE GERİ BİLDİRİM';

  @override
  String get soundEffects => 'Ses efektleri';

  @override
  String get soundEffectsSubtitle => 'Seçim, dökme ve başarı sesleri';

  @override
  String get backgroundMusic => 'Arka plan müziği';

  @override
  String get backgroundMusicSubtitle => 'Sakin, kozmik ortam müziği';

  @override
  String get haptics => 'Titreşim';

  @override
  String get hapticsSubtitle => 'Dokunuşlarda hafif geri bildirim';

  @override
  String get sectionVisual => 'GÖRSEL TERCİHLERİ';

  @override
  String get neonPalette => 'Fosforlu sıvı paleti';

  @override
  String get neonPaletteSubtitle => 'Oyunda kullanılan canlı neon renkler';

  @override
  String get colorAccessibility => 'Renk erişilebilirliği';

  @override
  String get colorAccessibilitySubtitle =>
      'Sıvılara ayırt edici ince desenler ekler';

  @override
  String get reducedAnimations => 'Azaltılmış animasyon';

  @override
  String get reducedAnimationsSubtitle => 'Dökme hareketlerini hızlandırır';

  @override
  String get sectionDifficulty => 'ZORLUK VE ZAMAN BASKISI';

  @override
  String get offlineProgress => 'Çevrimdışı ilerleme';

  @override
  String get offlineProgressBody =>
      'Bölümlerin ve ayarların bu cihazda güvenle saklanır.';

  @override
  String settingsVersion(String version) {
    return 'Liquid Sort Puzzle  •  v$version';
  }

  @override
  String get tabAudio => 'Ses';

  @override
  String get tabVisual => 'Görsel';

  @override
  String get tabGeneral => 'Ayarlar';

  @override
  String get language => 'Dil';

  @override
  String get languageSubtitle => 'Uygulama dilini seç';

  @override
  String get languageSystem => 'Sistem dili';

  @override
  String get languageSystemSubtitle => 'Telefon veya tablet dilini kullan';

  @override
  String get difficultyEasy => 'Kolay';

  @override
  String get difficultyNormal => 'Normal';

  @override
  String get difficultyHard => 'Zor';

  @override
  String get difficultyEasyDesc =>
      'Zaman baskısı yok • az coin • daha sık geçiş reklamı';

  @override
  String get difficultyNormalDesc => 'Orta süre, hafif baskı';

  @override
  String get difficultyHardDesc => 'Çok kısa süre, hatalı hamlede -5 sn';

  @override
  String get dailyRewardTitle => 'GÜNLÜK ÖDÜL';

  @override
  String get dailyRewardClaimBody =>
      'Bugünkü hediyeni al. Her gün gel, ödül büyüsün.';

  @override
  String get dailyRewardClaimedBody =>
      'Bugünkü ödülü aldın. Yarın tekrar uğra.';

  @override
  String dailyStreak(int streak) {
    final intl.NumberFormat streakNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String streakString = streakNumberFormat.format(streak);

    return 'Seri: $streakString gün';
  }

  @override
  String dayChip(int day) {
    final intl.NumberFormat dayNumberFormat = intl.NumberFormat.decimalPattern(
      localeName,
    );
    final String dayString = dayNumberFormat.format(day);

    return 'G$dayString';
  }

  @override
  String get plusHint => '+ipucu';

  @override
  String get claimDailyReward => 'Bugünkü ödülü al';

  @override
  String get comeAgainTomorrow => 'Yarın tekrar gel';

  @override
  String get achievementsTitle => 'BAŞARILAR';

  @override
  String get achGreetingEmpty =>
      'Hazırsın. İlk bölümünü bitirince başarıların burada birikecek.';

  @override
  String get achGreetingFlow =>
      'Akışın ateş gibi — sen bu oyunun ritmini çözmüşsün.';

  @override
  String get achGreetingStars =>
      'Yıldız koleksiyonun parlıyor. Böyle devam, efsane oluyorsun.';

  @override
  String get achGreetingVeteran =>
      'İyi gidiyorsun. Laboratuvar senin temposuna ayak uyduruyor.';

  @override
  String get achGreetingProgress =>
      'Güzel ilerleme. Her net bölüm seni daha ustalaştırıyor.';

  @override
  String get achGreetingStarter =>
      'İlk adımların sağlam. Birkaç bölüm daha, başarılar yağacak.';

  @override
  String get statLevel => 'Bölüm';

  @override
  String get statStars => 'Yıldız';

  @override
  String get statCoins => 'Coin';

  @override
  String get statFlow => 'Akış';

  @override
  String get statUnlocked => 'Açık';

  @override
  String get achievementLocked => 'Kilitli';

  @override
  String get achievementPerfectSort => 'Kusursuz Sıralama';

  @override
  String get achievementPerfectSortDesc => 'Par içinde, yardım almadan bitir';

  @override
  String get achievementUnderPar => 'Par Altı';

  @override
  String get achievementUnderParDesc => 'Hedef hamleden fazla kullanma';

  @override
  String get achievementNoUndo => 'Geri Almasız';

  @override
  String get achievementNoUndoDesc => 'Hiç geri alma kullanmadan bitir';

  @override
  String get achievementNoHint => 'İpucusuz';

  @override
  String get achievementNoHintDesc => 'İpucu kullanmadan çöz';

  @override
  String get achievementFlowMaster => 'Akış Ustası';

  @override
  String get achievementFlowMasterDesc => 'Bir bölümde Akış x5 yakala';

  @override
  String get achievementNewRecord => 'Yeni Rekor';

  @override
  String get achievementNewRecordDesc => 'Kendi en iyi hamleni kır';

  @override
  String get achievementFirstTry => 'İlk Deneme';

  @override
  String get achievementFirstTryDesc => 'Yeniden başlamadan tamamla';

  @override
  String get achievementNoExtraTube => 'Ekstra Tüpsüz';

  @override
  String get achievementNoExtraTubeDesc => 'Ek tüp eklemeden bitir';

  @override
  String get undo => 'Geri al';

  @override
  String get restart => 'Yeniden';

  @override
  String get hint => 'İpucu';

  @override
  String get addTube => 'Tüp ekle';

  @override
  String get perfect => 'MÜKEMMEL!';

  @override
  String levelCompleted(int level) {
    final intl.NumberFormat levelNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String levelString = levelNumberFormat.format(level);

    return '$levelString. bölüm tamamlandı';
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

    return '$movesString hamle  •  Par $parString';
  }

  @override
  String get newRecordAchievements => 'YENİ REKOR • BAŞARILAR';

  @override
  String get achievementsHeader => 'BAŞARILAR';

  @override
  String assistancePenalty(int amount) {
    final intl.NumberFormat amountNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String amountString = amountNumberFormat.format(amount);

    return 'İpucu cezası: -$amountString coin';
  }

  @override
  String get doubleReward => 'ÖDÜLÜ 2X AL';

  @override
  String get goToLevels => 'BÖLÜMLER';

  @override
  String get continueNext => 'DEVAM';

  @override
  String get backToLevelSelect => 'Bölüm seçimine dön';

  @override
  String get bestLabel => 'En iyi';

  @override
  String get flowCombo => 'Akış Kombo';

  @override
  String get extraTube => 'Ekstra tüp';

  @override
  String get fullReward => 'Tam ödül';

  @override
  String get halfReward => 'Yarım ödül';

  @override
  String get quarterReward => 'Çeyrek ödül';

  @override
  String starRewardLabel(int stars, String tone, int percent) {
    final intl.NumberFormat starsNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String starsString = starsNumberFormat.format(stars);
    final intl.NumberFormat percentNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String percentString = percentNumberFormat.format(percent);

    return '$starsString★ • $tone (%$percentString)';
  }

  @override
  String get newRule => 'YENİ KURAL';

  @override
  String get gotItStart => 'ANLADIM, BAŞLA';

  @override
  String get firstTimeTipOnly => 'Bu bilgi yalnızca ilk sefer gösterilir';

  @override
  String get mechanicBasicsTitle => 'NASIL OYNANIR';

  @override
  String get mechanicBasicsHeadline => 'Tüpleri seç, sıvıyı dök';

  @override
  String get mechanicBasicsBody =>
      'Bir tüpe dokunarak üstteki rengi seç. Sonra hedef tüpe dokun — aynı renk üst üste binebilir veya boş tüpe dökebilirsin.';

  @override
  String get mechanicBasicsTip =>
      'Amaç: her dolu tüp tek renkle dolsun. Boş tüpler yardımcı alandır.';

  @override
  String get mechanicBasicsCaption => 'Seç → Dök → Sırala';

  @override
  String get mechanicHiddenTitle => 'GİZLİ TÜP';

  @override
  String get mechanicHiddenHeadline => 'Sadece en üst renk görünür';

  @override
  String get mechanicHiddenBody =>
      'Bu tüpte yalnızca en üstteki rengi görürsün. Altındaki katmanlar sisli kalır; üstü boşalınca sırayla açılır.';

  @override
  String get mechanicHiddenTip =>
      'Üst grubu boşaltmadan kör dökme — önce üstü temizle, altını gör, sonra karar ver.';

  @override
  String get mechanicHiddenCaption => 'Üst renk açık • alt sisli';

  @override
  String get mechanicMixTitle => 'RENK KARIŞTIRMA';

  @override
  String get mechanicMixHeadline => 'İki renk birleşip yenisini üretir';

  @override
  String get mechanicMixBody =>
      'Belirli renkleri üst üste dökersen karışır ve yeni bir renk oluşur. Üstte gösterilen denklemleri takip et.';

  @override
  String get mechanicMixTip =>
      'Karışım için miktarlar eşit olmalı ve hedef tüpte yer kalmalı.';

  @override
  String get mechanicMixCaption => 'Kırmızı + Sarı = Turuncu';

  @override
  String get mechanicFrozenTitle => 'DONMUŞ TÜP';

  @override
  String get mechanicFrozenHeadline => 'Bir süre dokunulmaz';

  @override
  String get mechanicFrozenBody =>
      'Buzlu tüpe ne dökebilirsin ne de ondan alabilirsin. Belirli hamle sayısı geçince buz çözülür.';

  @override
  String get mechanicFrozenTip =>
      'Çözülene kadar diğer tüplerle yolu aç; buz açılınca hemen kullan.';

  @override
  String get mechanicFrozenCaption => 'Hamle bekle → buz açılsın';

  @override
  String get mechanicLockedTitle => 'KİLİTLİ TÜP';

  @override
  String get mechanicLockedHeadline => 'Önce başka tüp bitmeli';

  @override
  String get mechanicLockedBody =>
      'Kilitli tüp kapalıdır. Belirli sayıda tüpü tamamlayınca kilit açılır.';

  @override
  String get mechanicLockedTip =>
      'Önce kolay tamamlanacak tüpleri bitir, sonra kilitli alanı kullan.';

  @override
  String get mechanicLockedCaption => 'Tamamla → kilit açılsın';

  @override
  String get mechanicHeatedTitle => 'ISITICI TÜP';

  @override
  String get mechanicHeatedHeadline => 'Atık sıvıyı buharlaştır';

  @override
  String get mechanicHeatedBody =>
      'Isıtıcıya dökülen sıvı yok olur. Her seviyede sınırlı ısı hakkın vardır — genelde atık renkler için kullan.';

  @override
  String get mechanicHeatedTip =>
      'Isı bitince ısıtıcıya dökemezsin. Atıkları erken temizle.';

  @override
  String get mechanicHeatedCaption => 'Atık → buhar';

  @override
  String get mechanicValveTitle => 'TEK YÖNLÜ VALF';

  @override
  String get mechanicValveHeadline => 'Sadece içeri dökülür';

  @override
  String get mechanicValveBody =>
      'Valf tüpüne sıvı dökebilirsin ama içinden dışarı alamazsın. Kalıcı bir depo gibidir.';

  @override
  String get mechanicValveTip =>
      'Yanlış renk koyarsan sıkışır. Valfi dikkatli doldur.';

  @override
  String get mechanicValveCaption => 'Sadece içeri';

  @override
  String get mechanicPortalTitle => 'PORTAL ÇİFTİ';

  @override
  String get mechanicPortalHeadline => 'Birinden gir, diğerinden çık';

  @override
  String get mechanicPortalBody =>
      'Portal tüplerinden birine döktüğünde sıvı eş portalın içinde belirir. İki tüp birbirine bağlıdır.';

  @override
  String get mechanicPortalTip =>
      'Hedef olarak bir portalı seç — asıl dolum diğer tarafta olur.';

  @override
  String get mechanicPortalCaption => 'A girişi → B çıkışı';

  @override
  String get mechanicBombTitle => 'BOMBA TÜPÜ';

  @override
  String get mechanicBombHeadline => 'Süre dolmadan tamamla';

  @override
  String get mechanicBombBody =>
      'İşaretli tüp bir geri sayımla gelir. Sayaç bitmeden o tüpü tek renkle doldurmalısın, yoksa seviye patlar.';

  @override
  String get mechanicBombTip =>
      'Önce bomba tüpünü güvenli hale getir, sonra kalanları sırala.';

  @override
  String get mechanicBombCaption => 'Sayaç bitmeden doldur';

  @override
  String get mechanicNarrowTitle => 'DAR TÜP';

  @override
  String get mechanicNarrowHeadline => 'Kapasitesi 2 olan tampon';

  @override
  String get mechanicNarrowBody =>
      'Bu seviyede kısa bir yardımcı tüp var — içine en fazla 2 birim sığar. Dar alanda manevra yapmanı sağlar.';

  @override
  String get mechanicNarrowTip =>
      'Bitirmek için dar tüpün boş olması gerekir. İçine 2 birim koyunca “tamamlandı” sayılmaz; tekrar boşaltabilirsin.';

  @override
  String get mechanicNarrowCaption => 'Kapasite 2 • boş bitir';

  @override
  String get mechanicMovingTitle => 'HAREKETLİ DÜZEN';

  @override
  String get mechanicMovingHeadline => 'Tüpler yer değiştirir';

  @override
  String get mechanicMovingBody =>
      'Belirli hamlelerde tahta kayar ve tüplerin sırası değişir. Aynı tüplerdir — sadece konumları oynar.';

  @override
  String get mechanicMovingTip =>
      'Hangi tüpün hangisi olduğunu id’lerden / renklerden takip et.';

  @override
  String get mechanicMovingCaption => 'Her 3 hamlede kayar';

  @override
  String get mechanicBossTitle => 'BOSS DENEYİ';

  @override
  String get mechanicBossHeadline => 'Daha sert kurallar';

  @override
  String get mechanicBossBody =>
      'Boss seviyelerinde hamle limiti vardır ve birden fazla özel kural bir arada gelebilir. Daha planlı oyna.';

  @override
  String get mechanicBossTip =>
      'Par skoruna yakın kal; gereksiz undo ve dağınık dökmelerden kaçın.';

  @override
  String get mechanicBossCaption => 'Limit + özel kurallar';

  @override
  String levelNumber(int level) {
    final intl.NumberFormat levelNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String levelString = levelNumberFormat.format(level);

    return 'Bölüm $levelString';
  }

  @override
  String get movesLabel => 'Hamle';

  @override
  String headerMeta(int par) {
    final intl.NumberFormat parNumberFormat = intl.NumberFormat.decimalPattern(
      localeName,
    );
    final String parString = parNumberFormat.format(par);

    return 'Par $parString  •  Sınırsız tekrar  •  Çevrimdışı';
  }

  @override
  String get pauseTooltip => 'Duraklat';

  @override
  String get resumeTooltip => 'Devam et';

  @override
  String get settingsTooltip => 'Ayarlar';

  @override
  String get pausedTitle => 'OYUN DURAKLATILDI';

  @override
  String get pausedBody => 'Sayaç ve geri sayım sesleri durduruldu.';

  @override
  String get resumeCta => 'DEVAM ET';

  @override
  String tempoBadge(String difficulty, int seconds) {
    final intl.NumberFormat secondsNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String secondsString = secondsNumberFormat.format(seconds);

    return '$difficulty  $secondsString sn';
  }

  @override
  String get easyRelaxed => 'KOLAY  •  RAHAT';

  @override
  String bossMovesLeft(int moves) {
    final intl.NumberFormat movesNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String movesString = movesNumberFormat.format(moves);

    return 'BOSS • $movesString HAMLE';
  }

  @override
  String get hiddenLiquid => 'GİZLİ SIVI';

  @override
  String get frozenTube => 'DONMUŞ TÜP';

  @override
  String get iceCleared => 'BUZ AÇILDI';

  @override
  String get lockedTube => 'KİLİTLİ TÜP';

  @override
  String get lockOpened => 'KİLİT AÇILDI';

  @override
  String heatBurn(int remaining) {
    final intl.NumberFormat remainingNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String remainingString = remainingNumberFormat.format(remaining);

    return 'FAZLALIĞI YAK • $remainingString';
  }

  @override
  String heatTube(int remaining) {
    final intl.NumberFormat remainingNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String remainingString = remainingNumberFormat.format(remaining);

    return 'ISI TÜPÜ • $remainingString';
  }

  @override
  String get portalPair => 'PORTAL ÇİFTİ';

  @override
  String get oneWayValve => 'TEK YÖNLÜ VALF';

  @override
  String bombCountdown(int remaining) {
    final intl.NumberFormat remainingNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String remainingString = remainingNumberFormat.format(remaining);

    return 'BOMBA • $remainingString';
  }

  @override
  String movingEvery(int moves) {
    final intl.NumberFormat movesNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String movesString = movesNumberFormat.format(moves);

    return '$movesString HAMLEDE HAREKET';
  }

  @override
  String get narrowTubeCap2 => 'DAR TÜP • KAPASİTE 2';

  @override
  String get hiddenMix => 'GİZLİ KARIŞIM';

  @override
  String get portalFlow => 'PORTAL AKIŞI!';

  @override
  String get tubesShifted => 'TÜPLER YER DEĞİŞTİ!';

  @override
  String bombMovesLeft(int remaining) {
    final intl.NumberFormat remainingNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String remainingString = remainingNumberFormat.format(remaining);

    return 'BOMBA: $remainingString HAMLE!';
  }

  @override
  String get iceBroken => 'Buz kırıldı! Donmuş tüp artık kullanılabilir.';

  @override
  String get lockUnlocked => 'Kilit açıldı! Yeni tüp kullanıma hazır.';

  @override
  String get tubeFrozenMsg =>
      'Bu tüp donmuş. Birkaç doğru hamle sonra çözülecek.';

  @override
  String get tubeLockedMsg => 'Bu tüp kilitli. Önce başka bir rengi tamamla.';

  @override
  String get valveOneWayMsg =>
      'Altın valf tek yönlü: içine dökebilirsin ama dışarı alamazsın.';

  @override
  String get heatExhaustedMsg => 'Isı tüpünün yakma hakkı bitti.';

  @override
  String insufficientCoins(int cost) {
    final intl.NumberFormat costNumberFormat = intl.NumberFormat.decimalPattern(
      localeName,
    );
    final String costString = costNumberFormat.format(cost);

    return 'Yetersiz coin ($costString).';
  }

  @override
  String get adFailed => 'Reklam tamamlanamadı.';

  @override
  String reopenPaid(int cost, String title) {
    final intl.NumberFormat costNumberFormat = intl.NumberFormat.decimalPattern(
      localeName,
    );
    final String costString = costNumberFormat.format(cost);

    return '-$costString coin • $title tekrar açıldı';
  }

  @override
  String reopenAd(String title) {
    return 'Reklamla açıldı • $title';
  }

  @override
  String get tipQuotaEmpty => 'Bu bölümde ipucu hakkın doldu.';

  @override
  String get rewardsNotReady => 'Ödül sistemi hazır değil.';

  @override
  String get freeHintUsed => 'Ücretsiz ipucu kullanıldı.';

  @override
  String hintCost(int cost) {
    final intl.NumberFormat costNumberFormat = intl.NumberFormat.decimalPattern(
      localeName,
    );
    final String costString = costNumberFormat.format(cost);

    return 'İpucu: -$costString coin';
  }

  @override
  String get noHintAvailable => 'Şu an uygun ipucu bulunamadı.';

  @override
  String get assistHint => 'ipucu';

  @override
  String get assistUndo => 'geri al';

  @override
  String get freeHintEarned => '1 ücretsiz ipucu kazanıldı.';

  @override
  String get freeUndoEarned => '1 ücretsiz geri al kazanıldı.';

  @override
  String failureCredit(int deducted, int floor) {
    final intl.NumberFormat deductedNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String deductedString = deductedNumberFormat.format(deducted);
    final intl.NumberFormat floorNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String floorString = floorNumberFormat.format(floor);

    return '-$deductedString kredi • başarısız deneme (min $floorString)';
  }

  @override
  String debtLimitToast(int floor) {
    final intl.NumberFormat floorNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String floorString = floorNumberFormat.format(floor);

    return 'Borç limiti ($floorString). Tekrar için reklam izle.';
  }

  @override
  String restartCredit(int deducted) {
    final intl.NumberFormat deductedNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String deductedString = deductedNumberFormat.format(deducted);

    return '-$deductedString kredi • yeniden başla';
  }

  @override
  String insufficientCoinsTitle(int cost) {
    final intl.NumberFormat costNumberFormat = intl.NumberFormat.decimalPattern(
      localeName,
    );
    final String costString = costNumberFormat.format(cost);

    return 'Yetersiz coin ($costString)';
  }

  @override
  String watchAdEarnAssist(String label) {
    return 'Reklam izleyerek 1 ücretsiz $label kazanabilirsin.';
  }

  @override
  String debtLimitTitle(int floor) {
    final intl.NumberFormat floorNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String floorString = floorNumberFormat.format(floor);

    return 'Borç limiti ($floorString)';
  }

  @override
  String get debtLimitBody =>
      'Bakiyen borç sınırında. Yeniden denemek için reklam izle.';

  @override
  String get tipUnlockPaidBody =>
      'Bu kuralı ilk sefer ücretsiz gördün.\nTekrar okumak için coin harcanır.';

  @override
  String get tipUnlockAdBody =>
      'Coin\'in yetmiyor.\nReklam izleyerek bu bilgiyi ücretsiz açabilirsin.';

  @override
  String get yourBalance => 'Bakiyen: ';

  @override
  String payCost(int cost) {
    final intl.NumberFormat costNumberFormat = intl.NumberFormat.decimalPattern(
      localeName,
    );
    final String costString = costNumberFormat.format(cost);

    return '$costString öde';
  }

  @override
  String get timeUp => 'SÜRE DOLDU';

  @override
  String get bombExploded => 'BOMBA PATLADI';

  @override
  String get moveLimitReached => 'HAMLE SINIRI DOLDU';

  @override
  String failurePenaltyLine(int amount, int floor) {
    final intl.NumberFormat amountNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String amountString = amountNumberFormat.format(amount);
    final intl.NumberFormat floorNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String floorString = floorNumberFormat.format(floor);

    return 'Başarısız deneme: -$amountString kredi (borç min $floorString).';
  }

  @override
  String get tryEasyModeHint =>
      'İstersen Kolay modda zaman baskısını kapatabilirsin.';

  @override
  String get bombFailHint =>
      'Kırmızı sayaç bitmeden işaretli tüpü tek renkle tamamlamalısın.';

  @override
  String get bossFailHint =>
      'Boss deneyi hamle sınırını aştı. Karışımları ve boş tüpleri daha planlı kullan.';

  @override
  String get debtLimitRetryHint =>
      'Borç limitindesin — tekrar için reklam izle.';

  @override
  String get retryWithAd => 'REKLAM İZLE • TEKRAR';

  @override
  String get retryAgain => 'YENİDEN DENE';

  @override
  String get vaporized => 'BUHARLAŞTI!';

  @override
  String colorClearedBonus(String color) {
    return '$color SİLİNDİ  •  +4 SN';
  }

  @override
  String get newColorFormed => 'YENİ RENK OLUŞTU!';

  @override
  String colorBonusSeconds(String color) {
    return '$color  •  +6 SN';
  }

  @override
  String get legendaryFlow => 'EFSANEVİ AKIŞ!';

  @override
  String flowMultiplier(int combo) {
    final intl.NumberFormat comboNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String comboString = comboNumberFormat.format(combo);

    return 'AKIŞ x$comboString';
  }

  @override
  String get legendaryFlowLabel => 'Efsanevi Akış';

  @override
  String flowLabel(int multiplier) {
    final intl.NumberFormat multiplierNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String multiplierString = multiplierNumberFormat.format(multiplier);

    return 'Akış x$multiplierString';
  }

  @override
  String tubeSemantics(String id, int units) {
    final intl.NumberFormat unitsNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String unitsString = unitsNumberFormat.format(units);

    return 'Tüp $id, $unitsString birim dolu';
  }

  @override
  String get colorRed => 'Kırmızı';

  @override
  String get colorBlue => 'Mavi';

  @override
  String get colorPurple => 'Mor';

  @override
  String get colorYellow => 'Sarı';

  @override
  String get colorGreen => 'Yeşil';

  @override
  String get colorOrange => 'Turuncu';

  @override
  String get colorPink => 'Pembe';

  @override
  String get colorCyan => 'Camgöbeği';

  @override
  String get colorLime => 'Limon';

  @override
  String get colorBrown => 'Kahverengi';

  @override
  String get skipLevelOfferBody =>
      'Bu bölüm zorluyor. Reklam izleyerek sonrakini açabilirsin.';

  @override
  String get skipLevelCta => 'REKLAM İZLE • ATLA';

  @override
  String get skipLevelNote => 'Bu bölüme sonra dönüp tamamlayabilirsin.';

  @override
  String get skipLevelUnlocked => 'Sonraki bölüm açıldı!';

  @override
  String get developerModeTitle => 'Geliştirici Modu';

  @override
  String get developerModePasswordHint => 'Şifre';

  @override
  String get developerModeUnlock => 'Aç';

  @override
  String get developerModeEnabled => 'Test için tüm bölümler açıldı.';

  @override
  String get developerModeWrongPassword => 'Yanlış şifre';

  @override
  String get developerModeActive => 'Geliştirici modu açık';

  @override
  String get developerModeDisable => 'Geliştirici modunu kapat';
}
