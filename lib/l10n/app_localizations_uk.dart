// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Ukrainian (`uk`).
class AppLocalizationsUk extends AppLocalizations {
  AppLocalizationsUk([String locale = 'uk']) : super(locale);

  @override
  String get appTitle => 'Liquid Sort Puzzle';

  @override
  String get brandName => 'Liquid Sort';

  @override
  String get brandPuzzle => 'PUZZLE';

  @override
  String get splashTagline => 'Сортуй кольори. Звільни розум.';

  @override
  String get back => 'Назад';

  @override
  String get cancel => 'Скасувати';

  @override
  String get play => 'ГРАТИ';

  @override
  String get settings => 'Налаштування';

  @override
  String get home => 'Головна';

  @override
  String get levels => 'Рівні';

  @override
  String get collection => 'Колекція';

  @override
  String get achievements => 'Досягнення';

  @override
  String get continueLabel => 'Продовжити';

  @override
  String get pause => 'Пауза';

  @override
  String get close => 'Закрити';

  @override
  String get free => 'Безкоштовно';

  @override
  String get coin => 'Монета';

  @override
  String get coins => 'Монети';

  @override
  String get secondsShort => 'с';

  @override
  String get moves => 'Ходи';

  @override
  String get best => 'Найкращий';

  @override
  String get par => 'Par';

  @override
  String get locked => 'Заблоковано';

  @override
  String get ad => 'РЕКЛАМА';

  @override
  String get watchAd => 'Дивитися рекламу';

  @override
  String get claiming => 'Отримання...';

  @override
  String get homeTagline => 'Сортуй розумно, змішуй кольори!';

  @override
  String get progressAndAchievements => 'ПРОГРЕС І ДОСЯГНЕННЯ';

  @override
  String get progressTapHint => 'Натисни: статистика та значки';

  @override
  String get dailyReward => 'Щоденна нагорода';

  @override
  String get rewardReady => 'Нагорода готова';

  @override
  String get comeTomorrow => 'Приходь завтра';

  @override
  String get collectionSubtitle => 'Перегляд тем';

  @override
  String get premiumThemes => 'ПРЕМІUM-ТЕМИ';

  @override
  String get premiumThemesBody =>
      'Теми Classic, Galaxy, Ocean, Neon і Golden Age відкриваються тут.';

  @override
  String get playCta => 'ГРАТИ';

  @override
  String dailyClaimSnack(int coins, String hintSuffix) {
    final intl.NumberFormat coinsNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String coinsString = coinsNumberFormat.format(coins);

    return '+$coinsString монет$hintSuffix';
  }

  @override
  String freeHintSuffix(int count) {
    final intl.NumberFormat countNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String countString = countNumberFormat.format(count);

    return ' + $countString безкоштовна підказка';
  }

  @override
  String get levelMapTitle => 'КАРТА РІВНІВ';

  @override
  String levelsCompletedProgress(int completed, int total) {
    final intl.NumberFormat completedNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String completedString = completedNumberFormat.format(completed);
    final intl.NumberFormat totalNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String totalString = totalNumberFormat.format(total);

    return '$completedString/$totalString рівнів пройдено';
  }

  @override
  String get newExperimentsBanner =>
      'НОВІ ЕКСПЕРИМЕНТИ\nPORTAL • BOMB • VALVE • REACTOR';

  @override
  String get settingsTitle => 'НАЛАШТУВАННЯ';

  @override
  String get settingsSubtitleAudio => 'Звук і вібрація';

  @override
  String get settingsSubtitleVisual => 'Кольори, візерунки та анімації';

  @override
  String get settingsSubtitleGeneral => 'Складність і загальні налаштування';

  @override
  String get sectionAudioFeedback => 'ЗВУК І ЗВОРОТНИЙ ЗВ\'ЯЗОК';

  @override
  String get soundEffects => 'Звукові ефекти';

  @override
  String get soundEffectsSubtitle => 'Звуки вибору, наливання та успіху';

  @override
  String get backgroundMusic => 'Фонова музика';

  @override
  String get backgroundMusicSubtitle => 'Спокійна космічна атмосфера';

  @override
  String get haptics => 'Вібрація';

  @override
  String get hapticsSubtitle => 'Легкий відгук при дотику';

  @override
  String get sectionVisual => 'ВІЗУАЛЬНІ НАЛАШТУВАННЯ';

  @override
  String get neonPalette => 'Неонова палітра рідини';

  @override
  String get neonPaletteSubtitle => 'Яскраві неонові кольори в грі';

  @override
  String get colorAccessibility => 'Доступність кольорів';

  @override
  String get colorAccessibilitySubtitle => 'Додає тонкі візерунки до рідин';

  @override
  String get reducedAnimations => 'Зменшені анімації';

  @override
  String get reducedAnimationsSubtitle => 'Прискорює рухи наливання';

  @override
  String get sectionDifficulty => 'СКЛАДНІСТЬ І ЧАСОВИЙ ТИСК';

  @override
  String get offlineProgress => 'Офлайн-прогрес';

  @override
  String get offlineProgressBody =>
      'Твої рівні та налаштування надійно збережені на цьому пристрої.';

  @override
  String settingsVersion(String version) {
    return 'Liquid Sort Puzzle  •  v$version';
  }

  @override
  String get tabAudio => 'Аудіо';

  @override
  String get tabVisual => 'Візуал';

  @override
  String get tabGeneral => 'Налаштування';

  @override
  String get language => 'Мова';

  @override
  String get languageSubtitle => 'Обери мову застосунку';

  @override
  String get languageSystem => 'Системна';

  @override
  String get languageSystemSubtitle => 'Мова телефона або планшета';

  @override
  String get difficultyEasy => 'Легкий';

  @override
  String get difficultyNormal => 'Звичайний';

  @override
  String get difficultyHard => 'Складний';

  @override
  String get difficultyEasyDesc =>
      'Без часового тиску • менше монет • більше міжсторінкової реклами';

  @override
  String get difficultyNormalDesc => 'Помірний таймер, легкий тиск';

  @override
  String get difficultyHardDesc => 'Дуже короткий таймер, -5 с за помилки';

  @override
  String get dailyRewardTitle => 'ЩОДЕННА НАГОРОДА';

  @override
  String get dailyRewardClaimBody =>
      'Забери подарунок сьогодні. Приходь щодня — нагорода зростає.';

  @override
  String get dailyRewardClaimedBody => 'Сьогодні вже забрав. Приходь завтра.';

  @override
  String dailyStreak(int streak) {
    final intl.NumberFormat streakNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String streakString = streakNumberFormat.format(streak);

    return 'Серія: $streakString дн.';
  }

  @override
  String dayChip(int day) {
    final intl.NumberFormat dayNumberFormat = intl.NumberFormat.decimalPattern(
      localeName,
    );
    final String dayString = dayNumberFormat.format(day);

    return 'Д$dayString';
  }

  @override
  String get plusHint => '+підказка';

  @override
  String get claimDailyReward => 'Забрати нагороду сьогодні';

  @override
  String get comeAgainTomorrow => 'Приходь завтра';

  @override
  String get achievementsTitle => 'ДОСЯГНЕННЯ';

  @override
  String get achGreetingEmpty =>
      'Готовий. Пройди перший рівень — значки почнуть збиратися тут.';

  @override
  String get achGreetingFlow => 'Твій потік палає — ти зловив ритм гри.';

  @override
  String get achGreetingStars => 'Колекція зірок сяє. Так тримати, легендо.';

  @override
  String get achGreetingVeteran => 'Гарний темп. Лабораторія підлаштовується.';

  @override
  String get achGreetingProgress =>
      'Чудовий прогрес. Кожен чистий рівень робить тебе вправнішим.';

  @override
  String get achGreetingStarter =>
      'Сильний старт. Ще кілька рівнів — і значки посиплються.';

  @override
  String get statLevel => 'Рівень';

  @override
  String get statStars => 'Зірки';

  @override
  String get statCoins => 'Монети';

  @override
  String get statFlow => 'Потік';

  @override
  String get statUnlocked => 'Відкрито';

  @override
  String get achievementLocked => 'Заблоковано';

  @override
  String get achievementPerfectSort => 'Ідеальне сортування';

  @override
  String get achievementPerfectSortDesc => 'Пройди в межах Par без допомоги';

  @override
  String get achievementUnderPar => 'Нижче Par';

  @override
  String get achievementUnderParDesc => 'Не перевищуй цільову кількість ходів';

  @override
  String get achievementNoUndo => 'Без скасування';

  @override
  String get achievementNoUndoDesc => 'Пройди без скасування';

  @override
  String get achievementNoHint => 'Без підказок';

  @override
  String get achievementNoHintDesc => 'Розв\'язуй без підказок';

  @override
  String get achievementFlowMaster => 'Майстер потоку';

  @override
  String get achievementFlowMasterDesc => 'Досягни Потік x5 на рівні';

  @override
  String get achievementNewRecord => 'Новий рекорд';

  @override
  String get achievementNewRecordDesc => 'Побий свій найкращий рахунок ходів';

  @override
  String get achievementFirstTry => 'З першої спроби';

  @override
  String get achievementFirstTryDesc => 'Пройди без перезапуску';

  @override
  String get achievementNoExtraTube => 'Без зайвої пробірки';

  @override
  String get achievementNoExtraTubeDesc => 'Пройди без додавання пробірки';

  @override
  String get undo => 'Скасувати';

  @override
  String get restart => 'Заново';

  @override
  String get hint => 'Підказка';

  @override
  String get addTube => 'Додати пробірку';

  @override
  String get perfect => 'ІДЕАЛЬНО!';

  @override
  String levelCompleted(int level) {
    final intl.NumberFormat levelNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String levelString = levelNumberFormat.format(level);

    return 'Рівень $levelString пройдено';
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

    return '$movesString ходів  •  Par $parString';
  }

  @override
  String get newRecordAchievements => 'НОВИЙ РЕКОРД • ДОСЯГНЕННЯ';

  @override
  String get achievementsHeader => 'ДОСЯГНЕННЯ';

  @override
  String assistancePenalty(int amount) {
    final intl.NumberFormat amountNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String amountString = amountNumberFormat.format(amount);

    return 'Штраф за підказку: -$amountString монет';
  }

  @override
  String get doubleReward => 'ПОДВІЙНА НАГОРОДА';

  @override
  String get goToLevels => 'РІВНІ';

  @override
  String get continueNext => 'ПРОДОВЖИТИ';

  @override
  String get backToLevelSelect => 'До вибору рівнів';

  @override
  String get bestLabel => 'Найкращий';

  @override
  String get flowCombo => 'Комбо потоку';

  @override
  String get extraTube => 'Дод. пробірка';

  @override
  String get fullReward => 'Повна нагорода';

  @override
  String get halfReward => 'Половина нагороди';

  @override
  String get quarterReward => 'Чверть нагороди';

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
  String get newRule => 'НОВЕ ПРАВИЛО';

  @override
  String get gotItStart => 'ЗРОЗУМІЛО, СТАРТ';

  @override
  String get firstTimeTipOnly => 'Показується лише вперше';

  @override
  String get mechanicBasicsTitle => 'ЯК ГРАТИ';

  @override
  String get mechanicBasicsHeadline => 'Обирай пробірки, наливай рідину';

  @override
  String get mechanicBasicsBody =>
      'Натисни пробірку, щоб обрати верхній колір. Потім ціль — однакові кольори складуться або лий у порожню.';

  @override
  String get mechanicBasicsTip =>
      'Мета: кожна повна пробірка — один колір. Порожні — помічники.';

  @override
  String get mechanicBasicsCaption => 'Вибір → Налив → Сортування';

  @override
  String get mechanicHiddenTitle => 'ПРИХОВАНА ПРОБІРКА';

  @override
  String get mechanicHiddenHeadline => 'Видно лише верхній колір';

  @override
  String get mechanicHiddenBody =>
      'У цій пробірці видно лише верх. Нижні шари приховані, поки верх не спорожніє.';

  @override
  String get mechanicHiddenTip =>
      'Не лий всліпу — спочатку очисти верх, відкрий низ, потім вирішуй.';

  @override
  String get mechanicHiddenCaption => 'Верх видно • низ приховано';

  @override
  String get mechanicMixTitle => 'ЗМІШУВАННЯ КОЛЬОРІВ';

  @override
  String get mechanicMixHeadline => 'Два кольори дають новий';

  @override
  String get mechanicMixBody =>
      'Наливай певні кольори один на одного. Дотримуйся рівнянь зверху.';

  @override
  String get mechanicMixTip =>
      'Кількості мають збігатися, ціль потребує місця.';

  @override
  String get mechanicMixCaption => 'Червоний + Жовтий = Помаранчевий';

  @override
  String get mechanicFrozenTitle => 'ЗАМОРОЖЕНА ПРОБІРКА';

  @override
  String get mechanicFrozenHeadline => 'Тимчасово недоступна';

  @override
  String get mechanicFrozenBody =>
      'Не можна наливати в/з замороженої пробірки. Після достатньої кількості ходів лід тане.';

  @override
  String get mechanicFrozenTip =>
      'Відкрий шлях іншими пробірками; використай одразу після танення.';

  @override
  String get mechanicFrozenCaption => 'Чекай ходи → лід тане';

  @override
  String get mechanicLockedTitle => 'ЗАБЛОКОВАНА ПРОБІРКА';

  @override
  String get mechanicLockedHeadline => 'Спочатку інша пробірка';

  @override
  String get mechanicLockedBody =>
      'Заблокована пробірка закрита, доки не завершиш потрібну кількість.';

  @override
  String get mechanicLockedTip =>
      'Спочатку легкі пробірки, потім заблокований простір.';

  @override
  String get mechanicLockedCaption => 'Заверши → відкрий';

  @override
  String get mechanicHeatedTitle => 'НАГРІВАЛЬНА ПРОБІРКА';

  @override
  String get mechanicHeatedHeadline => 'Випаровуй зайву рідину';

  @override
  String get mechanicHeatedBody =>
      'Рідина в нагрівачі зникає. Заряди тепла обмежені — зазвичай для зайвих кольорів.';

  @override
  String get mechanicHeatedTip => 'Без тепла не налити. Прибирай зайве рано.';

  @override
  String get mechanicHeatedCaption => 'Зайве → пара';

  @override
  String get mechanicValveTitle => 'ОДНОСПРЯМОВАНИЙ КЛАПАН';

  @override
  String get mechanicValveHeadline => 'Лише налив';

  @override
  String get mechanicValveBody =>
      'Можна наливати в клапан, але не забирати. Як постійне сховище.';

  @override
  String get mechanicValveTip =>
      'Невірний колір може застрягти. Наповнюй обережно.';

  @override
  String get mechanicValveCaption => 'Лише вхід';

  @override
  String get mechanicPortalTitle => 'ПАРА ПОРТАЛІВ';

  @override
  String get mechanicPortalHeadline => 'Ввійшов в один — вийшов з іншого';

  @override
  String get mechanicPortalBody =>
      'Налий в один портал — рідина з\'явиться в парному. Дві пробірки пов\'язані.';

  @override
  String get mechanicPortalTip =>
      'Цілься в один портал — наповнення на іншому боці.';

  @override
  String get mechanicPortalCaption => 'A вхід → B вихід';

  @override
  String get mechanicBombTitle => 'БОМБОВА ПРОБІРКА';

  @override
  String get mechanicBombHeadline => 'Встигни до таймера';

  @override
  String get mechanicBombBody =>
      'Позначена пробірка з відліком. Наповни одним кольором до нуля, інакше провал.';

  @override
  String get mechanicBombTip => 'Спочатку бомба, потім решта.';

  @override
  String get mechanicBombCaption => 'Наповни до кінця відліку';

  @override
  String get mechanicNarrowTitle => 'ВУЗЬКА ПРОБІРКА';

  @override
  String get mechanicNarrowHeadline => 'Буфер на 2 одиниці';

  @override
  String get mechanicNarrowBody =>
      'Коротка допоміжна пробірка max 2 одиниці. Для тісних маневрів.';

  @override
  String get mechanicNarrowTip =>
      'Має бути порожньою для перемоги. 2 одиниці — не фініш — спорожни знову.';

  @override
  String get mechanicNarrowCaption => 'Ємність 2 • порожня для фінішу';

  @override
  String get mechanicMovingTitle => 'РУХОМИЙ МАКЕТ';

  @override
  String get mechanicMovingHeadline => 'Пробірки міняються місцями';

  @override
  String get mechanicMovingBody =>
      'Кожні кілька ходів поле зміщується і порядок змінюється. Ті самі пробірки — нові позиції.';

  @override
  String get mechanicMovingTip => 'Відстежуй пробірки за id і кольорами.';

  @override
  String get mechanicMovingCaption => 'Зміна кожні 3 ходи';

  @override
  String get mechanicBossTitle => 'BOSS-ЕКСПЕРИМЕНТ';

  @override
  String get mechanicBossHeadline => 'Суворіші правила';

  @override
  String get mechanicBossBody =>
      'Boss-рівні з лімітом ходів і кількома спецправилами. Грай з планом.';

  @override
  String get mechanicBossTip =>
      'Тримайся близько до Par; уникай зайвих скасувань.';

  @override
  String get mechanicBossCaption => 'Ліміт + спецправила';

  @override
  String levelNumber(int level) {
    final intl.NumberFormat levelNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String levelString = levelNumberFormat.format(level);

    return 'Рівень $levelString';
  }

  @override
  String get movesLabel => 'Ходи';

  @override
  String headerMeta(int par) {
    final intl.NumberFormat parNumberFormat = intl.NumberFormat.decimalPattern(
      localeName,
    );
    final String parString = parNumberFormat.format(par);

    return 'Par $parString  •  Необмежені спроби  •  Офлайн';
  }

  @override
  String get pauseTooltip => 'Пауза';

  @override
  String get resumeTooltip => 'Продовжити';

  @override
  String get settingsTooltip => 'Налаштування';

  @override
  String get pausedTitle => 'ГРА НА ПАУЗІ';

  @override
  String get pausedBody => 'Таймер і звуки відліку на паузі.';

  @override
  String get resumeCta => 'ПРОДОВЖИТИ';

  @override
  String tempoBadge(String difficulty, int seconds) {
    final intl.NumberFormat secondsNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String secondsString = secondsNumberFormat.format(seconds);

    return '$difficulty  $secondsString с';
  }

  @override
  String get easyRelaxed => 'ЛЕГКИЙ  •  СПОКІЙНО';

  @override
  String bossMovesLeft(int moves) {
    final intl.NumberFormat movesNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String movesString = movesNumberFormat.format(moves);

    return 'BOSS • $movesString ХОДІВ';
  }

  @override
  String get hiddenLiquid => 'ПРИХОВАНА РІДИНА';

  @override
  String get frozenTube => 'ЗАМОРОЖЕНА ПРОБІРКА';

  @override
  String get iceCleared => 'ЛІД ЗНИК';

  @override
  String get lockedTube => 'ЗАБЛОКОВАНА ПРОБІРКА';

  @override
  String get lockOpened => 'ЗАМОК ВІДКРИТО';

  @override
  String heatBurn(int remaining) {
    final intl.NumberFormat remainingNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String remainingString = remainingNumberFormat.format(remaining);

    return 'СПАЛИ ЗАЙВЕ • $remainingString';
  }

  @override
  String heatTube(int remaining) {
    final intl.NumberFormat remainingNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String remainingString = remainingNumberFormat.format(remaining);

    return 'НАГРІВ • $remainingString';
  }

  @override
  String get portalPair => 'ПАРА ПОРТАЛІВ';

  @override
  String get oneWayValve => 'ОДНОСПРЯМОВАНИЙ КЛАПАН';

  @override
  String bombCountdown(int remaining) {
    final intl.NumberFormat remainingNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String remainingString = remainingNumberFormat.format(remaining);

    return 'БОМБА • $remainingString';
  }

  @override
  String movingEvery(int moves) {
    final intl.NumberFormat movesNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String movesString = movesNumberFormat.format(moves);

    return 'ЗМІНА КОЖНІ $movesString ХОД.';
  }

  @override
  String get narrowTubeCap2 => 'ВУЗЬКА ПРОБІРКА • ЄМН. 2';

  @override
  String get hiddenMix => 'ПРИХОВАНА ЗМІШ';

  @override
  String get portalFlow => 'ПОТІК ПОРТАЛУ!';

  @override
  String get tubesShifted => 'ПРОБІРКИ ЗМІСТИЛИСЬ!';

  @override
  String bombMovesLeft(int remaining) {
    final intl.NumberFormat remainingNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String remainingString = remainingNumberFormat.format(remaining);

    return 'БОМБА: $remainingString ХОДІВ!';
  }

  @override
  String get iceBroken => 'Лід зламано! Заморожена пробірка доступна.';

  @override
  String get lockUnlocked => 'Замок відкрито! Нова пробірка готова.';

  @override
  String get tubeFrozenMsg =>
      'Пробірка заморожена. Кілька вірних ходів розтануть її.';

  @override
  String get tubeLockedMsg =>
      'Пробірка заблокована. Спочатку заверши інший колір.';

  @override
  String get valveOneWayMsg =>
      'Золотий клапан односторонній: налити можна, забрати ні.';

  @override
  String get heatExhaustedMsg => 'У нагрівача закінчилися заряди.';

  @override
  String insufficientCoins(int cost) {
    final intl.NumberFormat costNumberFormat = intl.NumberFormat.decimalPattern(
      localeName,
    );
    final String costString = costNumberFormat.format(cost);

    return 'Недостатньо монет ($costString).';
  }

  @override
  String get adFailed => 'Не вдалося завершити рекламу.';

  @override
  String reopenPaid(int cost, String title) {
    final intl.NumberFormat costNumberFormat = intl.NumberFormat.decimalPattern(
      localeName,
    );
    final String costString = costNumberFormat.format(cost);

    return '-$costString монет • $title знову відкрито';
  }

  @override
  String reopenAd(String title) {
    return 'Відкрито рекламою • $title';
  }

  @override
  String get tipQuotaEmpty => 'Підказки на цьому рівні закінчилися.';

  @override
  String get rewardsNotReady => 'Система нагород не готова.';

  @override
  String get freeHintUsed => 'Безкоштовну підказку використано.';

  @override
  String hintCost(int cost) {
    final intl.NumberFormat costNumberFormat = intl.NumberFormat.decimalPattern(
      localeName,
    );
    final String costString = costNumberFormat.format(cost);

    return 'Підказка: -$costString монет';
  }

  @override
  String get noHintAvailable => 'Зараз немає корисної підказки.';

  @override
  String get assistHint => 'підказка';

  @override
  String get assistUndo => 'скасувати';

  @override
  String get freeHintEarned => 'Отримано 1 безкоштовну підказку.';

  @override
  String get freeUndoEarned => 'Отримано 1 безкоштовне скасування.';

  @override
  String failureCredit(int deducted, int floor) {
    final intl.NumberFormat deductedNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String deductedString = deductedNumberFormat.format(deducted);
    final intl.NumberFormat floorNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String floorString = floorNumberFormat.format(floor);

    return '-$deductedString кредит • невдача (мін. $floorString)';
  }

  @override
  String debtLimitToast(int floor) {
    final intl.NumberFormat floorNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String floorString = floorNumberFormat.format(floor);

    return 'Ліміт боргу ($floorString). Дивись рекламу для повтору.';
  }

  @override
  String restartCredit(int deducted) {
    final intl.NumberFormat deductedNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String deductedString = deductedNumberFormat.format(deducted);

    return '-$deductedString кредит • перезапуск';
  }

  @override
  String insufficientCoinsTitle(int cost) {
    final intl.NumberFormat costNumberFormat = intl.NumberFormat.decimalPattern(
      localeName,
    );
    final String costString = costNumberFormat.format(cost);

    return 'Недостатньо монет ($costString)';
  }

  @override
  String watchAdEarnAssist(String label) {
    return 'Дивись рекламу для 1 безкоштовної $label.';
  }

  @override
  String debtLimitTitle(int floor) {
    final intl.NumberFormat floorNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String floorString = floorNumberFormat.format(floor);

    return 'Ліміт боргу ($floorString)';
  }

  @override
  String get debtLimitBody =>
      'Ти на мінімумі боргу. Дивись рекламу для нової спроби.';

  @override
  String get tipUnlockPaidBody =>
      'Ти вже бачив це правило безкоштовно.\nПовторне читання коштує монет.';

  @override
  String get tipUnlockAdBody =>
      'Монет не вистачає.\nДивись рекламу, щоб відкрити підказку безкоштовно.';

  @override
  String get yourBalance => 'Баланс: ';

  @override
  String payCost(int cost) {
    final intl.NumberFormat costNumberFormat = intl.NumberFormat.decimalPattern(
      localeName,
    );
    final String costString = costNumberFormat.format(cost);

    return 'Сплатити $costString';
  }

  @override
  String get timeUp => 'ЧАС ВИЙШОВ';

  @override
  String get bombExploded => 'БОМБА ВИБУХЛА!';

  @override
  String get moveLimitReached => 'ЛІМІТ ХОДІВ ДОСЯГНУТО';

  @override
  String failurePenaltyLine(int amount, int floor) {
    final intl.NumberFormat amountNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String amountString = amountNumberFormat.format(amount);
    final intl.NumberFormat floorNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String floorString = floorNumberFormat.format(floor);

    return 'Невдача: -$amountString кредит (борг мін. $floorString).';
  }

  @override
  String get tryEasyModeHint => 'Можна вимкнути часовий тиск у легкому режимі.';

  @override
  String get bombFailHint =>
      'Наповни позначену пробірку одним кольором до кінця червоного відліку.';

  @override
  String get bossFailHint =>
      'Boss-експеримент перевищив ліміт ходів. Плануй зміші та порожні пробірки.';

  @override
  String get debtLimitRetryHint => 'Ліміт боргу — дивись рекламу для повтору.';

  @override
  String get retryWithAd => 'РЕКЛАМА • ПОВТОР';

  @override
  String get retryAgain => 'ЩЕ РАЗ';

  @override
  String get vaporized => 'ВИПАРОВАНО!';

  @override
  String colorClearedBonus(String color) {
    return '$color ПРИБРАНО  •  +4 С';
  }

  @override
  String get newColorFormed => 'НОВИЙ КОЛІР!';

  @override
  String colorBonusSeconds(String color) {
    return '$color  •  +6 С';
  }

  @override
  String get legendaryFlow => 'ЛЕГЕНДАРНИЙ ПОТІК!';

  @override
  String flowMultiplier(int combo) {
    final intl.NumberFormat comboNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String comboString = comboNumberFormat.format(combo);

    return 'ПОТІК x$comboString';
  }

  @override
  String get legendaryFlowLabel => 'Легендарний потік';

  @override
  String flowLabel(int multiplier) {
    final intl.NumberFormat multiplierNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String multiplierString = multiplierNumberFormat.format(multiplier);

    return 'Потік x$multiplierString';
  }

  @override
  String tubeSemantics(String id, int units) {
    final intl.NumberFormat unitsNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String unitsString = unitsNumberFormat.format(units);

    return 'Пробірка $id, $unitsString одиниць';
  }

  @override
  String get colorRed => 'Червоний';

  @override
  String get colorBlue => 'Синій';

  @override
  String get colorPurple => 'Фіолетовий';

  @override
  String get colorYellow => 'Жовтий';

  @override
  String get colorGreen => 'Зелений';

  @override
  String get colorOrange => 'Помаранчевий';

  @override
  String get colorPink => 'Рожевий';

  @override
  String get colorCyan => 'Блакитний';

  @override
  String get colorLime => 'Лайм';

  @override
  String get colorBrown => 'Коричневий';

  @override
  String get skipLevelOfferBody =>
      'Рівень складний. Подивіться рекламу, щоб відкрити наступний.';

  @override
  String get skipLevelCta => 'РЕКЛАМА • ПРОПУСТИТИ';

  @override
  String get skipLevelNote =>
      'Пізніше зможете повернутися і пройти цей рівень.';

  @override
  String get skipLevelUnlocked => 'Наступний рівень відкрито!';

  @override
  String get developerModeTitle => 'Режим розробника';

  @override
  String get developerModePasswordHint => 'Пароль';

  @override
  String get developerModeUnlock => 'Розблокувати';

  @override
  String get developerModeEnabled => 'Усі рівні відкрито для тестування.';

  @override
  String get developerModeWrongPassword => 'Неправильний пароль';

  @override
  String get developerModeActive => 'Режим розробника активний';

  @override
  String get developerModeDisable => 'Вимкнути режим розробника';
}
