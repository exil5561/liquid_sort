// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Portuguese (`pt`).
class AppLocalizationsPt extends AppLocalizations {
  AppLocalizationsPt([String locale = 'pt']) : super(locale);

  @override
  String get appTitle => 'Liquid Sort Puzzle';

  @override
  String get brandName => 'Liquid Sort';

  @override
  String get brandPuzzle => 'PUZZLE';

  @override
  String get splashTagline => 'Separe as cores. Limpe a mente.';

  @override
  String get back => 'Voltar';

  @override
  String get cancel => 'Cancelar';

  @override
  String get play => 'JOGAR';

  @override
  String get settings => 'Configurações';

  @override
  String get home => 'Início';

  @override
  String get levels => 'Fases';

  @override
  String get collection => 'Coleção';

  @override
  String get achievements => 'Conquistas';

  @override
  String get continueLabel => 'Continuar';

  @override
  String get pause => 'Pausar';

  @override
  String get close => 'Fechar';

  @override
  String get free => 'Grátis';

  @override
  String get coin => 'Moeda';

  @override
  String get coins => 'Moedas';

  @override
  String get secondsShort => 's';

  @override
  String get moves => 'Jogadas';

  @override
  String get best => 'Melhor';

  @override
  String get par => 'Par';

  @override
  String get locked => 'Bloqueado';

  @override
  String get ad => 'ANÚNCIO';

  @override
  String get watchAd => 'Ver anúncio';

  @override
  String get claiming => 'Resgatando...';

  @override
  String get homeTagline => 'Ordene com inteligência, misture cores!';

  @override
  String get progressAndAchievements => 'PROGRESSO E CONQUISTAS';

  @override
  String get progressTapHint => 'Toque: estatísticas e medalhas';

  @override
  String get dailyReward => 'Recompensa diária';

  @override
  String get rewardReady => 'Recompensa pronta';

  @override
  String get comeTomorrow => 'Volte amanhã';

  @override
  String get collectionSubtitle => 'Explore temas';

  @override
  String get premiumThemes => 'TEMAS PREMIUM';

  @override
  String get premiumThemesBody =>
      'Os temas Clássico, Galáxia, Oceano, Neon e Era de Ouro são desbloqueados aqui.';

  @override
  String get playCta => 'JOGAR';

  @override
  String dailyClaimSnack(int coins, String hintSuffix) {
    final intl.NumberFormat coinsNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String coinsString = coinsNumberFormat.format(coins);

    return '+$coinsString moedas$hintSuffix';
  }

  @override
  String freeHintSuffix(int count) {
    final intl.NumberFormat countNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String countString = countNumberFormat.format(count);

    return ' + $countString dica grátis';
  }

  @override
  String get levelMapTitle => 'MAPA DE FASES';

  @override
  String levelsCompletedProgress(int completed, int total) {
    final intl.NumberFormat completedNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String completedString = completedNumberFormat.format(completed);
    final intl.NumberFormat totalNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String totalString = totalNumberFormat.format(total);

    return '$completedString/$totalString fases concluídas';
  }

  @override
  String get newExperimentsBanner =>
      'NOVOS EXPERIMENTOS\nPORTAL • BOMBA • VÁLVULA • REATOR';

  @override
  String get settingsTitle => 'CONFIGURAÇÕES';

  @override
  String get settingsSubtitleAudio => 'Controles de som e vibração';

  @override
  String get settingsSubtitleVisual => 'Cores, padrões e animações';

  @override
  String get settingsSubtitleGeneral => 'Dificuldade e preferências gerais';

  @override
  String get sectionAudioFeedback => 'SOM E FEEDBACK';

  @override
  String get soundEffects => 'Efeitos sonoros';

  @override
  String get soundEffectsSubtitle => 'Sons de seleção, despejo e sucesso';

  @override
  String get backgroundMusic => 'Música de fundo';

  @override
  String get backgroundMusicSubtitle => 'Música ambiente cósmica e calma';

  @override
  String get haptics => 'Vibração';

  @override
  String get hapticsSubtitle => 'Feedback leve ao tocar';

  @override
  String get sectionVisual => 'PREFERÊNCIAS VISUAIS';

  @override
  String get neonPalette => 'Paleta de líquido neon';

  @override
  String get neonPaletteSubtitle => 'Cores neon vivas usadas no jogo';

  @override
  String get colorAccessibility => 'Acessibilidade de cores';

  @override
  String get colorAccessibilitySubtitle =>
      'Adiciona padrões sutis aos líquidos';

  @override
  String get reducedAnimations => 'Animações reduzidas';

  @override
  String get reducedAnimationsSubtitle => 'Acelera os movimentos de despejo';

  @override
  String get sectionDifficulty => 'DIFICULDADE E PRESSÃO DE TEMPO';

  @override
  String get offlineProgress => 'Progresso offline';

  @override
  String get offlineProgressBody =>
      'Suas fases e configurações são salvas com segurança neste dispositivo.';

  @override
  String settingsVersion(String version) {
    return 'Liquid Sort Puzzle  •  v$version';
  }

  @override
  String get tabAudio => 'Áudio';

  @override
  String get tabVisual => 'Visual';

  @override
  String get tabGeneral => 'Configurações';

  @override
  String get language => 'Idioma';

  @override
  String get languageSubtitle => 'Escolha o idioma do app';

  @override
  String get languageSystem => 'Padrão do sistema';

  @override
  String get languageSystemSubtitle => 'Usar o idioma do celular ou tablet';

  @override
  String get difficultyEasy => 'Fácil';

  @override
  String get difficultyNormal => 'Normal';

  @override
  String get difficultyHard => 'Difícil';

  @override
  String get difficultyEasyDesc =>
      'Sem pressão de tempo • menos moedas • mais anúncios intersticiais';

  @override
  String get difficultyNormalDesc => 'Timer moderado, pressão leve';

  @override
  String get difficultyHardDesc => 'Timer bem curto, -5 s por erros';

  @override
  String get dailyRewardTitle => 'RECOMPENSA DIÁRIA';

  @override
  String get dailyRewardClaimBody =>
      'Resgate o presente de hoje. Volte todo dia para aumentar a recompensa.';

  @override
  String get dailyRewardClaimedBody => 'Você já resgatou hoje. Volte amanhã.';

  @override
  String dailyStreak(int streak) {
    final intl.NumberFormat streakNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String streakString = streakNumberFormat.format(streak);

    return 'Sequência: $streakString dias';
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
  String get plusHint => '+dica';

  @override
  String get claimDailyReward => 'Resgatar recompensa de hoje';

  @override
  String get comeAgainTomorrow => 'Volte amanhã';

  @override
  String get achievementsTitle => 'CONQUISTAS';

  @override
  String get achGreetingEmpty =>
      'Tudo pronto. Complete sua primeira fase e as medalhas começarão a aparecer aqui.';

  @override
  String get achGreetingFlow =>
      'Seu fluxo está pegando fogo — você pegou o ritmo do jogo.';

  @override
  String get achGreetingStars =>
      'Sua coleção de estrelas brilha. Continue assim, lenda.';

  @override
  String get achGreetingVeteran =>
      'Bom ritmo. O laboratório está no seu tempo.';

  @override
  String get achGreetingProgress =>
      'Ótimo progresso. Cada fase limpa te deixa mais afiado.';

  @override
  String get achGreetingStarter =>
      'Começo forte. Mais algumas fases e as medalhas vão chover.';

  @override
  String get statLevel => 'Fase';

  @override
  String get statStars => 'Estrelas';

  @override
  String get statCoins => 'Moedas';

  @override
  String get statFlow => 'Fluxo';

  @override
  String get statUnlocked => 'Desbloqueado';

  @override
  String get achievementLocked => 'Bloqueado';

  @override
  String get achievementPerfectSort => 'Ordenação perfeita';

  @override
  String get achievementPerfectSortDesc =>
      'Termine dentro do Par sem assistência';

  @override
  String get achievementUnderPar => 'Abaixo do Par';

  @override
  String get achievementUnderParDesc => 'Não ultrapasse as jogadas alvo';

  @override
  String get achievementNoUndo => 'Sem desfazer';

  @override
  String get achievementNoUndoDesc => 'Termine sem usar desfazer';

  @override
  String get achievementNoHint => 'Sem dicas';

  @override
  String get achievementNoHintDesc => 'Resolva sem usar dicas';

  @override
  String get achievementFlowMaster => 'Mestre do fluxo';

  @override
  String get achievementFlowMasterDesc => 'Alcance Fluxo x5 em um nível';

  @override
  String get achievementNewRecord => 'Novo recorde';

  @override
  String get achievementNewRecordDesc => 'Supere seu melhor número de jogadas';

  @override
  String get achievementFirstTry => 'Primeira tentativa';

  @override
  String get achievementFirstTryDesc => 'Complete sem reiniciar';

  @override
  String get achievementNoExtraTube => 'Sem tubo extra';

  @override
  String get achievementNoExtraTubeDesc => 'Termine sem adicionar um tubo';

  @override
  String get undo => 'Desfazer';

  @override
  String get restart => 'Reiniciar';

  @override
  String get hint => 'Dica';

  @override
  String get addTube => 'Adicionar tubo';

  @override
  String get perfect => 'PERFEITO!';

  @override
  String levelCompleted(int level) {
    final intl.NumberFormat levelNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String levelString = levelNumberFormat.format(level);

    return 'Fase $levelString concluída';
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

    return '$movesString jogadas  •  Par $parString';
  }

  @override
  String get newRecordAchievements => 'NOVO RECORDE • CONQUISTAS';

  @override
  String get achievementsHeader => 'CONQUISTAS';

  @override
  String assistancePenalty(int amount) {
    final intl.NumberFormat amountNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String amountString = amountNumberFormat.format(amount);

    return 'Penalidade de dica: -$amountString moedas';
  }

  @override
  String get doubleReward => 'RECOMPENSA DUPLA';

  @override
  String get goToLevels => 'FASES';

  @override
  String get continueNext => 'CONTINUAR';

  @override
  String get backToLevelSelect => 'Voltar à seleção de fases';

  @override
  String get bestLabel => 'Melhor';

  @override
  String get flowCombo => 'Combo de fluxo';

  @override
  String get extraTube => 'Tubo extra';

  @override
  String get fullReward => 'Recompensa completa';

  @override
  String get halfReward => 'Metade da recompensa';

  @override
  String get quarterReward => 'Um quarto da recompensa';

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
  String get newRule => 'NOVA REGRA';

  @override
  String get gotItStart => 'ENTENDI, COMEÇAR';

  @override
  String get firstTimeTipOnly => 'Mostrado apenas na primeira vez';

  @override
  String get mechanicBasicsTitle => 'COMO JOGAR';

  @override
  String get mechanicBasicsHeadline => 'Escolha tubos, despeje líquido';

  @override
  String get mechanicBasicsBody =>
      'Toque em um tubo para selecionar a cor do topo. Depois toque no tubo de destino — cores iguais empilham ou você pode despejar em um tubo vazio.';

  @override
  String get mechanicBasicsTip =>
      'Objetivo: cada tubo cheio fica de uma cor só. Tubos vazios são ajudantes.';

  @override
  String get mechanicBasicsCaption => 'Selecionar → Despejar → Ordenar';

  @override
  String get mechanicHiddenTitle => 'TUBO OCULTO';

  @override
  String get mechanicHiddenHeadline => 'Só a cor de cima aparece';

  @override
  String get mechanicHiddenBody =>
      'Neste tubo você só vê a cor de cima. As camadas de baixo ficam ocultas até a de cima sair.';

  @override
  String get mechanicHiddenTip =>
      'Não despeje no escuro — limpe o topo primeiro, revele embaixo e decida.';

  @override
  String get mechanicHiddenCaption => 'Topo visível • baixo oculto';

  @override
  String get mechanicMixTitle => 'MISTURA DE CORES';

  @override
  String get mechanicMixHeadline => 'Duas cores viram uma nova';

  @override
  String get mechanicMixBody =>
      'Despeje certas cores uma sobre a outra para misturar uma nova. Siga as equações mostradas acima.';

  @override
  String get mechanicMixTip =>
      'As quantidades devem bater e o destino precisa de espaço livre.';

  @override
  String get mechanicMixCaption => 'Vermelho + Amarelo = Laranja';

  @override
  String get mechanicFrozenTitle => 'TUBO CONGELADO';

  @override
  String get mechanicFrozenHeadline => 'Intocável por um tempo';

  @override
  String get mechanicFrozenBody =>
      'Você não pode despejar nem retirar de um tubo gelado. Após jogadas suficientes, o gelo derrete.';

  @override
  String get mechanicFrozenTip =>
      'Abra caminho com outros tubos; use assim que o gelo derreter.';

  @override
  String get mechanicFrozenCaption => 'Espere jogadas → gelo derrete';

  @override
  String get mechanicLockedTitle => 'TUBO TRANCADO';

  @override
  String get mechanicLockedHeadline => 'Termine outro tubo primeiro';

  @override
  String get mechanicLockedBody =>
      'Um tubo trancado fica fechado até você completar certo número de tubos.';

  @override
  String get mechanicLockedTip =>
      'Termine os tubos fáceis primeiro, depois use o espaço trancado.';

  @override
  String get mechanicLockedCaption => 'Complete → desbloqueie';

  @override
  String get mechanicHeatedTitle => 'TUBO AQUECEDOR';

  @override
  String get mechanicHeatedHeadline => 'Vaporize líquido sobrando';

  @override
  String get mechanicHeatedBody =>
      'Líquido despejado no aquecedor desaparece. Cargas de calor são limitadas — geralmente para cores sobrando.';

  @override
  String get mechanicHeatedTip =>
      'Sem calor você não pode despejar lá. Limpe sobras cedo.';

  @override
  String get mechanicHeatedCaption => 'Sobra → vapor';

  @override
  String get mechanicValveTitle => 'VÁLVULA UNIDIRECIONAL';

  @override
  String get mechanicValveHeadline => 'Só entra líquido';

  @override
  String get mechanicValveBody =>
      'Você pode despejar num tubo válvula, mas não retirar líquido. Funciona como depósito permanente.';

  @override
  String get mechanicValveTip =>
      'Cor errada pode te prender. Encha válvulas com cuidado.';

  @override
  String get mechanicValveCaption => 'Só entrada';

  @override
  String get mechanicPortalTitle => 'PAR DE PORTAIS';

  @override
  String get mechanicPortalHeadline => 'Entra por um, sai pelo outro';

  @override
  String get mechanicPortalBody =>
      'Despeje em um portal e o líquido aparece no gêmeo. Os dois tubos estão ligados.';

  @override
  String get mechanicPortalTip =>
      'Mire em um portal — o preenchimento acontece do outro lado.';

  @override
  String get mechanicPortalCaption => 'A entra → B sai';

  @override
  String get mechanicBombTitle => 'TUBO BOMBA';

  @override
  String get mechanicBombHeadline => 'Termine antes do timer';

  @override
  String get mechanicBombBody =>
      'O tubo marcado tem contagem regressiva. Encha com uma cor antes de chegar a zero ou a fase falha.';

  @override
  String get mechanicBombTip =>
      'Garanta o tubo bomba primeiro, depois ordene o resto.';

  @override
  String get mechanicBombCaption => 'Encha antes da contagem acabar';

  @override
  String get mechanicNarrowTitle => 'TUBO ESTREITO';

  @override
  String get mechanicNarrowHeadline => 'Buffer de capacidade 2';

  @override
  String get mechanicNarrowBody =>
      'Esta fase tem um tubo auxiliar curto que guarda no máximo 2 unidades. Use para manobras apertadas.';

  @override
  String get mechanicNarrowTip =>
      'Precisa estar vazio para terminar. Ter 2 unidades não conta como completo — esvazie de novo.';

  @override
  String get mechanicNarrowCaption => 'Capacidade 2 • vazio para terminar';

  @override
  String get mechanicMovingTitle => 'LAYOUT MÓVEL';

  @override
  String get mechanicMovingHeadline => 'Tubos trocam de lugar';

  @override
  String get mechanicMovingBody =>
      'A cada poucas jogadas o tabuleiro muda e a ordem dos tubos muda. Mesmos tubos — novas posições.';

  @override
  String get mechanicMovingTip => 'Acompanhe os tubos por id e cores.';

  @override
  String get mechanicMovingCaption => 'Muda a cada 3 jogadas';

  @override
  String get mechanicBossTitle => 'EXPERIMENTO BOSS';

  @override
  String get mechanicBossHeadline => 'Regras mais duras';

  @override
  String get mechanicBossBody =>
      'Fases Boss têm limite de jogadas e podem combinar várias regras especiais. Jogue com um plano.';

  @override
  String get mechanicBossTip =>
      'Fique perto do Par; evite desfazer e despejos desperdiçados.';

  @override
  String get mechanicBossCaption => 'Limite + regras especiais';

  @override
  String levelNumber(int level) {
    final intl.NumberFormat levelNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String levelString = levelNumberFormat.format(level);

    return 'Fase $levelString';
  }

  @override
  String get movesLabel => 'Jogadas';

  @override
  String headerMeta(int par) {
    final intl.NumberFormat parNumberFormat = intl.NumberFormat.decimalPattern(
      localeName,
    );
    final String parString = parNumberFormat.format(par);

    return 'Par $parString  •  Tentativas ilimitadas  •  Offline';
  }

  @override
  String get pauseTooltip => 'Pausar';

  @override
  String get resumeTooltip => 'Retomar';

  @override
  String get settingsTooltip => 'Configurações';

  @override
  String get pausedTitle => 'JOGO PAUSADO';

  @override
  String get pausedBody =>
      'Timer e sons de contagem regressiva estão pausados.';

  @override
  String get resumeCta => 'RETOMAR';

  @override
  String tempoBadge(String difficulty, int seconds) {
    final intl.NumberFormat secondsNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String secondsString = secondsNumberFormat.format(seconds);

    return '$difficulty  $secondsString s';
  }

  @override
  String get easyRelaxed => 'FÁCIL  •  RELAXADO';

  @override
  String bossMovesLeft(int moves) {
    final intl.NumberFormat movesNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String movesString = movesNumberFormat.format(moves);

    return 'BOSS • $movesString JOGADAS';
  }

  @override
  String get hiddenLiquid => 'LÍQUIDO OCULTO';

  @override
  String get frozenTube => 'TUBO CONGELADO';

  @override
  String get iceCleared => 'GELO LIBERADO';

  @override
  String get lockedTube => 'TUBO TRANCADO';

  @override
  String get lockOpened => 'CADEADO ABERTO';

  @override
  String heatBurn(int remaining) {
    final intl.NumberFormat remainingNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String remainingString = remainingNumberFormat.format(remaining);

    return 'QUEIMAR SOBRA • $remainingString';
  }

  @override
  String heatTube(int remaining) {
    final intl.NumberFormat remainingNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String remainingString = remainingNumberFormat.format(remaining);

    return 'TUBO DE CALOR • $remainingString';
  }

  @override
  String get portalPair => 'PAR DE PORTAIS';

  @override
  String get oneWayValve => 'VÁLVULA UNIDIRECIONAL';

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

    return 'MUDA A CADA $movesString JOG.';
  }

  @override
  String get narrowTubeCap2 => 'TUBO ESTREITO • CAP 2';

  @override
  String get hiddenMix => 'MISTURA OCULTA';

  @override
  String get portalFlow => 'FLUXO PORTAL!';

  @override
  String get tubesShifted => 'TUBOS MUDARAM!';

  @override
  String bombMovesLeft(int remaining) {
    final intl.NumberFormat remainingNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String remainingString = remainingNumberFormat.format(remaining);

    return 'BOMBA: $remainingString JOGADAS!';
  }

  @override
  String get iceBroken => 'Gelo quebrou! O tubo congelado já pode ser usado.';

  @override
  String get lockUnlocked => 'Cadeado aberto! Um novo tubo está pronto.';

  @override
  String get tubeFrozenMsg =>
      'Este tubo está congelado. Algumas jogadas certas vão descongelar.';

  @override
  String get tubeLockedMsg =>
      'Este tubo está trancado. Complete outra cor primeiro.';

  @override
  String get valveOneWayMsg =>
      'A válvula dourada é unidirecional: pode despejar dentro, mas não retirar.';

  @override
  String get heatExhaustedMsg => 'Este aquecedor ficou sem cargas de queima.';

  @override
  String insufficientCoins(int cost) {
    final intl.NumberFormat costNumberFormat = intl.NumberFormat.decimalPattern(
      localeName,
    );
    final String costString = costNumberFormat.format(cost);

    return 'Moedas insuficientes ($costString).';
  }

  @override
  String get adFailed => 'Não foi possível concluir o anúncio.';

  @override
  String reopenPaid(int cost, String title) {
    final intl.NumberFormat costNumberFormat = intl.NumberFormat.decimalPattern(
      localeName,
    );
    final String costString = costNumberFormat.format(cost);

    return '-$costString moedas • $title reaberto';
  }

  @override
  String reopenAd(String title) {
    return 'Aberto com anúncio • $title';
  }

  @override
  String get tipQuotaEmpty => 'Suas dicas desta fase acabaram.';

  @override
  String get rewardsNotReady => 'O sistema de recompensas não está pronto.';

  @override
  String get freeHintUsed => 'Dica grátis usada.';

  @override
  String hintCost(int cost) {
    final intl.NumberFormat costNumberFormat = intl.NumberFormat.decimalPattern(
      localeName,
    );
    final String costString = costNumberFormat.format(cost);

    return 'Dica: -$costString moedas';
  }

  @override
  String get noHintAvailable => 'Nenhuma dica útil agora.';

  @override
  String get assistHint => 'dica';

  @override
  String get assistUndo => 'desfazer';

  @override
  String get freeHintEarned => '1 dica grátis ganha.';

  @override
  String get freeUndoEarned => '1 desfazer grátis ganho.';

  @override
  String failureCredit(int deducted, int floor) {
    final intl.NumberFormat deductedNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String deductedString = deductedNumberFormat.format(deducted);
    final intl.NumberFormat floorNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String floorString = floorNumberFormat.format(floor);

    return '-$deductedString crédito • tentativa falha (mín. $floorString)';
  }

  @override
  String debtLimitToast(int floor) {
    final intl.NumberFormat floorNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String floorString = floorNumberFormat.format(floor);

    return 'Limite de dívida ($floorString). Assista um anúncio para tentar de novo.';
  }

  @override
  String restartCredit(int deducted) {
    final intl.NumberFormat deductedNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String deductedString = deductedNumberFormat.format(deducted);

    return '-$deductedString crédito • reiniciar';
  }

  @override
  String insufficientCoinsTitle(int cost) {
    final intl.NumberFormat costNumberFormat = intl.NumberFormat.decimalPattern(
      localeName,
    );
    final String costString = costNumberFormat.format(cost);

    return 'Moedas insuficientes ($costString)';
  }

  @override
  String watchAdEarnAssist(String label) {
    return 'Assista um anúncio para ganhar 1 $label grátis.';
  }

  @override
  String debtLimitTitle(int floor) {
    final intl.NumberFormat floorNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String floorString = floorNumberFormat.format(floor);

    return 'Limite de dívida ($floorString)';
  }

  @override
  String get debtLimitBody =>
      'Você está no piso de dívida. Assista um anúncio para tentar de novo.';

  @override
  String get tipUnlockPaidBody =>
      'Você viu esta regra grátis uma vez.\nReler custa moedas.';

  @override
  String get tipUnlockAdBody =>
      'Moedas insuficientes.\nAssista um anúncio para abrir esta dica grátis.';

  @override
  String get yourBalance => 'Saldo: ';

  @override
  String payCost(int cost) {
    final intl.NumberFormat costNumberFormat = intl.NumberFormat.decimalPattern(
      localeName,
    );
    final String costString = costNumberFormat.format(cost);

    return 'Pagar $costString';
  }

  @override
  String get timeUp => 'TEMPO ESGOTADO';

  @override
  String get bombExploded => 'BOMBA EXPLODIU!';

  @override
  String get moveLimitReached => 'LIMITE DE JOGADAS ATINGIDO';

  @override
  String failurePenaltyLine(int amount, int floor) {
    final intl.NumberFormat amountNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String amountString = amountNumberFormat.format(amount);
    final intl.NumberFormat floorNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String floorString = floorNumberFormat.format(floor);

    return 'Tentativa falha: -$amountString crédito (dívida mín. $floorString).';
  }

  @override
  String get tryEasyModeHint =>
      'Você pode desligar a pressão de tempo no modo Fácil.';

  @override
  String get bombFailHint =>
      'Encha o tubo marcado com uma cor antes da contagem vermelha acabar.';

  @override
  String get bossFailHint =>
      'O experimento Boss passou do limite de jogadas. Planeje misturas e tubos vazios com cuidado.';

  @override
  String get debtLimitRetryHint =>
      'Você está no limite de dívida — assista um anúncio para tentar de novo.';

  @override
  String get retryWithAd => 'VER ANÚNCIO • TENTAR DE NOVO';

  @override
  String get retryAgain => 'TENTAR DE NOVO';

  @override
  String get vaporized => 'VAPORIZADO!';

  @override
  String colorClearedBonus(String color) {
    return '$color ELIMINADO  •  +4 S';
  }

  @override
  String get newColorFormed => 'NOVA COR FORMADA!';

  @override
  String colorBonusSeconds(String color) {
    return '$color  •  +6 S';
  }

  @override
  String get legendaryFlow => 'FLUXO LENDÁRIO!';

  @override
  String flowMultiplier(int combo) {
    final intl.NumberFormat comboNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String comboString = comboNumberFormat.format(combo);

    return 'FLUXO x$comboString';
  }

  @override
  String get legendaryFlowLabel => 'Fluxo lendário';

  @override
  String flowLabel(int multiplier) {
    final intl.NumberFormat multiplierNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String multiplierString = multiplierNumberFormat.format(multiplier);

    return 'Fluxo x$multiplierString';
  }

  @override
  String tubeSemantics(String id, int units) {
    final intl.NumberFormat unitsNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String unitsString = unitsNumberFormat.format(units);

    return 'Tubo $id, $unitsString unidades preenchidas';
  }

  @override
  String get colorRed => 'Vermelho';

  @override
  String get colorBlue => 'Azul';

  @override
  String get colorPurple => 'Roxo';

  @override
  String get colorYellow => 'Amarelo';

  @override
  String get colorGreen => 'Verde';

  @override
  String get colorOrange => 'Laranja';

  @override
  String get colorPink => 'Rosa';

  @override
  String get colorCyan => 'Ciano';

  @override
  String get colorLime => 'Limão';

  @override
  String get colorBrown => 'Marrom';

  @override
  String get skipLevelOfferBody =>
      'Este nível está difícil. Assista a um anúncio para liberar o próximo.';

  @override
  String get skipLevelCta => 'VER ANÚNCIO • PULAR';

  @override
  String get skipLevelNote => 'Você pode voltar e concluir este nível depois.';

  @override
  String get skipLevelUnlocked => 'Próximo nível liberado!';

  @override
  String get developerModeTitle => 'Modo desenvolvedor';

  @override
  String get developerModePasswordHint => 'Senha';

  @override
  String get developerModeUnlock => 'Desbloquear';

  @override
  String get developerModeEnabled => 'Todos os níveis liberados para teste.';

  @override
  String get developerModeWrongPassword => 'Senha incorreta';

  @override
  String get developerModeActive => 'Modo desenvolvedor ativo';

  @override
  String get developerModeDisable => 'Desativar modo desenvolvedor';
}

/// The translations for Portuguese, as used in Brazil (`pt_BR`).
class AppLocalizationsPtBr extends AppLocalizationsPt {
  AppLocalizationsPtBr() : super('pt_BR');

  @override
  String get appTitle => 'Liquid Sort Puzzle';

  @override
  String get brandName => 'Liquid Sort';

  @override
  String get brandPuzzle => 'PUZZLE';

  @override
  String get splashTagline => 'Separe as cores. Limpe a mente.';

  @override
  String get back => 'Voltar';

  @override
  String get cancel => 'Cancelar';

  @override
  String get play => 'JOGAR';

  @override
  String get settings => 'Configurações';

  @override
  String get home => 'Início';

  @override
  String get levels => 'Fases';

  @override
  String get collection => 'Coleção';

  @override
  String get achievements => 'Conquistas';

  @override
  String get continueLabel => 'Continuar';

  @override
  String get pause => 'Pausar';

  @override
  String get close => 'Fechar';

  @override
  String get free => 'Grátis';

  @override
  String get coin => 'Moeda';

  @override
  String get coins => 'Moedas';

  @override
  String get secondsShort => 's';

  @override
  String get moves => 'Jogadas';

  @override
  String get best => 'Melhor';

  @override
  String get par => 'Par';

  @override
  String get locked => 'Bloqueado';

  @override
  String get ad => 'ANÚNCIO';

  @override
  String get watchAd => 'Ver anúncio';

  @override
  String get claiming => 'Resgatando...';

  @override
  String get homeTagline => 'Ordene com inteligência, misture cores!';

  @override
  String get progressAndAchievements => 'PROGRESSO E CONQUISTAS';

  @override
  String get progressTapHint => 'Toque: estatísticas e medalhas';

  @override
  String get dailyReward => 'Recompensa diária';

  @override
  String get rewardReady => 'Recompensa pronta';

  @override
  String get comeTomorrow => 'Volte amanhã';

  @override
  String get collectionSubtitle => 'Explore temas';

  @override
  String get premiumThemes => 'TEMAS PREMIUM';

  @override
  String get premiumThemesBody =>
      'Os temas Clássico, Galáxia, Oceano, Neon e Era de Ouro são desbloqueados aqui.';

  @override
  String get playCta => 'JOGAR';

  @override
  String dailyClaimSnack(int coins, String hintSuffix) {
    final intl.NumberFormat coinsNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String coinsString = coinsNumberFormat.format(coins);

    return '+$coinsString moedas$hintSuffix';
  }

  @override
  String freeHintSuffix(int count) {
    final intl.NumberFormat countNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String countString = countNumberFormat.format(count);

    return ' + $countString dica grátis';
  }

  @override
  String get levelMapTitle => 'MAPA DE FASES';

  @override
  String levelsCompletedProgress(int completed, int total) {
    final intl.NumberFormat completedNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String completedString = completedNumberFormat.format(completed);
    final intl.NumberFormat totalNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String totalString = totalNumberFormat.format(total);

    return '$completedString/$totalString fases concluídas';
  }

  @override
  String get newExperimentsBanner =>
      'NOVOS EXPERIMENTOS\nPORTAL • BOMBA • VÁLVULA • REATOR';

  @override
  String get settingsTitle => 'CONFIGURAÇÕES';

  @override
  String get settingsSubtitleAudio => 'Controles de som e vibração';

  @override
  String get settingsSubtitleVisual => 'Cores, padrões e animações';

  @override
  String get settingsSubtitleGeneral => 'Dificuldade e preferências gerais';

  @override
  String get sectionAudioFeedback => 'SOM E FEEDBACK';

  @override
  String get soundEffects => 'Efeitos sonoros';

  @override
  String get soundEffectsSubtitle => 'Sons de seleção, despejo e sucesso';

  @override
  String get backgroundMusic => 'Música de fundo';

  @override
  String get backgroundMusicSubtitle => 'Música ambiente cósmica e calma';

  @override
  String get haptics => 'Vibração';

  @override
  String get hapticsSubtitle => 'Feedback leve ao tocar';

  @override
  String get sectionVisual => 'PREFERÊNCIAS VISUAIS';

  @override
  String get neonPalette => 'Paleta de líquido neon';

  @override
  String get neonPaletteSubtitle => 'Cores neon vivas usadas no jogo';

  @override
  String get colorAccessibility => 'Acessibilidade de cores';

  @override
  String get colorAccessibilitySubtitle =>
      'Adiciona padrões sutis aos líquidos';

  @override
  String get reducedAnimations => 'Animações reduzidas';

  @override
  String get reducedAnimationsSubtitle => 'Acelera os movimentos de despejo';

  @override
  String get sectionDifficulty => 'DIFICULDADE E PRESSÃO DE TEMPO';

  @override
  String get offlineProgress => 'Progresso offline';

  @override
  String get offlineProgressBody =>
      'Suas fases e configurações são salvas com segurança neste dispositivo.';

  @override
  String settingsVersion(String version) {
    return 'Liquid Sort Puzzle  •  v$version';
  }

  @override
  String get tabAudio => 'Áudio';

  @override
  String get tabVisual => 'Visual';

  @override
  String get tabGeneral => 'Configurações';

  @override
  String get language => 'Idioma';

  @override
  String get languageSubtitle => 'Escolha o idioma do app';

  @override
  String get languageSystem => 'Padrão do sistema';

  @override
  String get languageSystemSubtitle => 'Usar o idioma do celular ou tablet';

  @override
  String get difficultyEasy => 'Fácil';

  @override
  String get difficultyNormal => 'Normal';

  @override
  String get difficultyHard => 'Difícil';

  @override
  String get difficultyEasyDesc =>
      'Sem pressão de tempo • menos moedas • mais anúncios intersticiais';

  @override
  String get difficultyNormalDesc => 'Timer moderado, pressão leve';

  @override
  String get difficultyHardDesc => 'Timer bem curto, -5 s por erros';

  @override
  String get dailyRewardTitle => 'RECOMPENSA DIÁRIA';

  @override
  String get dailyRewardClaimBody =>
      'Resgate o presente de hoje. Volte todo dia para aumentar a recompensa.';

  @override
  String get dailyRewardClaimedBody => 'Você já resgatou hoje. Volte amanhã.';

  @override
  String dailyStreak(int streak) {
    final intl.NumberFormat streakNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String streakString = streakNumberFormat.format(streak);

    return 'Sequência: $streakString dias';
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
  String get plusHint => '+dica';

  @override
  String get claimDailyReward => 'Resgatar recompensa de hoje';

  @override
  String get comeAgainTomorrow => 'Volte amanhã';

  @override
  String get achievementsTitle => 'CONQUISTAS';

  @override
  String get achGreetingEmpty =>
      'Tudo pronto. Complete sua primeira fase e as medalhas começarão a aparecer aqui.';

  @override
  String get achGreetingFlow =>
      'Seu fluxo está pegando fogo — você pegou o ritmo do jogo.';

  @override
  String get achGreetingStars =>
      'Sua coleção de estrelas brilha. Continue assim, lenda.';

  @override
  String get achGreetingVeteran =>
      'Bom ritmo. O laboratório está no seu tempo.';

  @override
  String get achGreetingProgress =>
      'Ótimo progresso. Cada fase limpa te deixa mais afiado.';

  @override
  String get achGreetingStarter =>
      'Começo forte. Mais algumas fases e as medalhas vão chover.';

  @override
  String get statLevel => 'Fase';

  @override
  String get statStars => 'Estrelas';

  @override
  String get statCoins => 'Moedas';

  @override
  String get statFlow => 'Fluxo';

  @override
  String get statUnlocked => 'Desbloqueado';

  @override
  String get achievementLocked => 'Bloqueado';

  @override
  String get achievementPerfectSort => 'Ordenação perfeita';

  @override
  String get achievementPerfectSortDesc =>
      'Termine dentro do Par sem assistência';

  @override
  String get achievementUnderPar => 'Abaixo do Par';

  @override
  String get achievementUnderParDesc => 'Não ultrapasse as jogadas alvo';

  @override
  String get achievementNoUndo => 'Sem desfazer';

  @override
  String get achievementNoUndoDesc => 'Termine sem usar desfazer';

  @override
  String get achievementNoHint => 'Sem dicas';

  @override
  String get achievementNoHintDesc => 'Resolva sem usar dicas';

  @override
  String get achievementFlowMaster => 'Mestre do fluxo';

  @override
  String get achievementFlowMasterDesc => 'Alcance Fluxo x5 em um nível';

  @override
  String get achievementNewRecord => 'Novo recorde';

  @override
  String get achievementNewRecordDesc => 'Supere seu melhor número de jogadas';

  @override
  String get achievementFirstTry => 'Primeira tentativa';

  @override
  String get achievementFirstTryDesc => 'Complete sem reiniciar';

  @override
  String get achievementNoExtraTube => 'Sem tubo extra';

  @override
  String get achievementNoExtraTubeDesc => 'Termine sem adicionar um tubo';

  @override
  String get undo => 'Desfazer';

  @override
  String get restart => 'Reiniciar';

  @override
  String get hint => 'Dica';

  @override
  String get addTube => 'Adicionar tubo';

  @override
  String get perfect => 'PERFEITO!';

  @override
  String levelCompleted(int level) {
    final intl.NumberFormat levelNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String levelString = levelNumberFormat.format(level);

    return 'Fase $levelString concluída';
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

    return '$movesString jogadas  •  Par $parString';
  }

  @override
  String get newRecordAchievements => 'NOVO RECORDE • CONQUISTAS';

  @override
  String get achievementsHeader => 'CONQUISTAS';

  @override
  String assistancePenalty(int amount) {
    final intl.NumberFormat amountNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String amountString = amountNumberFormat.format(amount);

    return 'Penalidade de dica: -$amountString moedas';
  }

  @override
  String get doubleReward => 'RECOMPENSA DUPLA';

  @override
  String get goToLevels => 'FASES';

  @override
  String get continueNext => 'CONTINUAR';

  @override
  String get backToLevelSelect => 'Voltar à seleção de fases';

  @override
  String get bestLabel => 'Melhor';

  @override
  String get flowCombo => 'Combo de fluxo';

  @override
  String get extraTube => 'Tubo extra';

  @override
  String get fullReward => 'Recompensa completa';

  @override
  String get halfReward => 'Metade da recompensa';

  @override
  String get quarterReward => 'Um quarto da recompensa';

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
  String get newRule => 'NOVA REGRA';

  @override
  String get gotItStart => 'ENTENDI, COMEÇAR';

  @override
  String get firstTimeTipOnly => 'Mostrado apenas na primeira vez';

  @override
  String get mechanicBasicsTitle => 'COMO JOGAR';

  @override
  String get mechanicBasicsHeadline => 'Escolha tubos, despeje líquido';

  @override
  String get mechanicBasicsBody =>
      'Toque em um tubo para selecionar a cor do topo. Depois toque no tubo de destino — cores iguais empilham ou você pode despejar em um tubo vazio.';

  @override
  String get mechanicBasicsTip =>
      'Objetivo: cada tubo cheio fica de uma cor só. Tubos vazios são ajudantes.';

  @override
  String get mechanicBasicsCaption => 'Selecionar → Despejar → Ordenar';

  @override
  String get mechanicHiddenTitle => 'TUBO OCULTO';

  @override
  String get mechanicHiddenHeadline => 'Só a cor de cima aparece';

  @override
  String get mechanicHiddenBody =>
      'Neste tubo você só vê a cor de cima. As camadas de baixo ficam ocultas até a de cima sair.';

  @override
  String get mechanicHiddenTip =>
      'Não despeje no escuro — limpe o topo primeiro, revele embaixo e decida.';

  @override
  String get mechanicHiddenCaption => 'Topo visível • baixo oculto';

  @override
  String get mechanicMixTitle => 'MISTURA DE CORES';

  @override
  String get mechanicMixHeadline => 'Duas cores viram uma nova';

  @override
  String get mechanicMixBody =>
      'Despeje certas cores uma sobre a outra para misturar uma nova. Siga as equações mostradas acima.';

  @override
  String get mechanicMixTip =>
      'As quantidades devem bater e o destino precisa de espaço livre.';

  @override
  String get mechanicMixCaption => 'Vermelho + Amarelo = Laranja';

  @override
  String get mechanicFrozenTitle => 'TUBO CONGELADO';

  @override
  String get mechanicFrozenHeadline => 'Intocável por um tempo';

  @override
  String get mechanicFrozenBody =>
      'Você não pode despejar nem retirar de um tubo gelado. Após jogadas suficientes, o gelo derrete.';

  @override
  String get mechanicFrozenTip =>
      'Abra caminho com outros tubos; use assim que o gelo derreter.';

  @override
  String get mechanicFrozenCaption => 'Espere jogadas → gelo derrete';

  @override
  String get mechanicLockedTitle => 'TUBO TRANCADO';

  @override
  String get mechanicLockedHeadline => 'Termine outro tubo primeiro';

  @override
  String get mechanicLockedBody =>
      'Um tubo trancado fica fechado até você completar certo número de tubos.';

  @override
  String get mechanicLockedTip =>
      'Termine os tubos fáceis primeiro, depois use o espaço trancado.';

  @override
  String get mechanicLockedCaption => 'Complete → desbloqueie';

  @override
  String get mechanicHeatedTitle => 'TUBO AQUECEDOR';

  @override
  String get mechanicHeatedHeadline => 'Vaporize líquido sobrando';

  @override
  String get mechanicHeatedBody =>
      'Líquido despejado no aquecedor desaparece. Cargas de calor são limitadas — geralmente para cores sobrando.';

  @override
  String get mechanicHeatedTip =>
      'Sem calor você não pode despejar lá. Limpe sobras cedo.';

  @override
  String get mechanicHeatedCaption => 'Sobra → vapor';

  @override
  String get mechanicValveTitle => 'VÁLVULA UNIDIRECIONAL';

  @override
  String get mechanicValveHeadline => 'Só entra líquido';

  @override
  String get mechanicValveBody =>
      'Você pode despejar num tubo válvula, mas não retirar líquido. Funciona como depósito permanente.';

  @override
  String get mechanicValveTip =>
      'Cor errada pode te prender. Encha válvulas com cuidado.';

  @override
  String get mechanicValveCaption => 'Só entrada';

  @override
  String get mechanicPortalTitle => 'PAR DE PORTAIS';

  @override
  String get mechanicPortalHeadline => 'Entra por um, sai pelo outro';

  @override
  String get mechanicPortalBody =>
      'Despeje em um portal e o líquido aparece no gêmeo. Os dois tubos estão ligados.';

  @override
  String get mechanicPortalTip =>
      'Mire em um portal — o preenchimento acontece do outro lado.';

  @override
  String get mechanicPortalCaption => 'A entra → B sai';

  @override
  String get mechanicBombTitle => 'TUBO BOMBA';

  @override
  String get mechanicBombHeadline => 'Termine antes do timer';

  @override
  String get mechanicBombBody =>
      'O tubo marcado tem contagem regressiva. Encha com uma cor antes de chegar a zero ou a fase falha.';

  @override
  String get mechanicBombTip =>
      'Garanta o tubo bomba primeiro, depois ordene o resto.';

  @override
  String get mechanicBombCaption => 'Encha antes da contagem acabar';

  @override
  String get mechanicNarrowTitle => 'TUBO ESTREITO';

  @override
  String get mechanicNarrowHeadline => 'Buffer de capacidade 2';

  @override
  String get mechanicNarrowBody =>
      'Esta fase tem um tubo auxiliar curto que guarda no máximo 2 unidades. Use para manobras apertadas.';

  @override
  String get mechanicNarrowTip =>
      'Precisa estar vazio para terminar. Ter 2 unidades não conta como completo — esvazie de novo.';

  @override
  String get mechanicNarrowCaption => 'Capacidade 2 • vazio para terminar';

  @override
  String get mechanicMovingTitle => 'LAYOUT MÓVEL';

  @override
  String get mechanicMovingHeadline => 'Tubos trocam de lugar';

  @override
  String get mechanicMovingBody =>
      'A cada poucas jogadas o tabuleiro muda e a ordem dos tubos muda. Mesmos tubos — novas posições.';

  @override
  String get mechanicMovingTip => 'Acompanhe os tubos por id e cores.';

  @override
  String get mechanicMovingCaption => 'Muda a cada 3 jogadas';

  @override
  String get mechanicBossTitle => 'EXPERIMENTO BOSS';

  @override
  String get mechanicBossHeadline => 'Regras mais duras';

  @override
  String get mechanicBossBody =>
      'Fases Boss têm limite de jogadas e podem combinar várias regras especiais. Jogue com um plano.';

  @override
  String get mechanicBossTip =>
      'Fique perto do Par; evite desfazer e despejos desperdiçados.';

  @override
  String get mechanicBossCaption => 'Limite + regras especiais';

  @override
  String levelNumber(int level) {
    final intl.NumberFormat levelNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String levelString = levelNumberFormat.format(level);

    return 'Fase $levelString';
  }

  @override
  String get movesLabel => 'Jogadas';

  @override
  String headerMeta(int par) {
    final intl.NumberFormat parNumberFormat = intl.NumberFormat.decimalPattern(
      localeName,
    );
    final String parString = parNumberFormat.format(par);

    return 'Par $parString  •  Tentativas ilimitadas  •  Offline';
  }

  @override
  String get pauseTooltip => 'Pausar';

  @override
  String get resumeTooltip => 'Retomar';

  @override
  String get settingsTooltip => 'Configurações';

  @override
  String get pausedTitle => 'JOGO PAUSADO';

  @override
  String get pausedBody =>
      'Timer e sons de contagem regressiva estão pausados.';

  @override
  String get resumeCta => 'RETOMAR';

  @override
  String tempoBadge(String difficulty, int seconds) {
    final intl.NumberFormat secondsNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String secondsString = secondsNumberFormat.format(seconds);

    return '$difficulty  $secondsString s';
  }

  @override
  String get easyRelaxed => 'FÁCIL  •  RELAXADO';

  @override
  String bossMovesLeft(int moves) {
    final intl.NumberFormat movesNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String movesString = movesNumberFormat.format(moves);

    return 'BOSS • $movesString JOGADAS';
  }

  @override
  String get hiddenLiquid => 'LÍQUIDO OCULTO';

  @override
  String get frozenTube => 'TUBO CONGELADO';

  @override
  String get iceCleared => 'GELO LIBERADO';

  @override
  String get lockedTube => 'TUBO TRANCADO';

  @override
  String get lockOpened => 'CADEADO ABERTO';

  @override
  String heatBurn(int remaining) {
    final intl.NumberFormat remainingNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String remainingString = remainingNumberFormat.format(remaining);

    return 'QUEIMAR SOBRA • $remainingString';
  }

  @override
  String heatTube(int remaining) {
    final intl.NumberFormat remainingNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String remainingString = remainingNumberFormat.format(remaining);

    return 'TUBO DE CALOR • $remainingString';
  }

  @override
  String get portalPair => 'PAR DE PORTAIS';

  @override
  String get oneWayValve => 'VÁLVULA UNIDIRECIONAL';

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

    return 'MUDA A CADA $movesString JOG.';
  }

  @override
  String get narrowTubeCap2 => 'TUBO ESTREITO • CAP 2';

  @override
  String get hiddenMix => 'MISTURA OCULTA';

  @override
  String get portalFlow => 'FLUXO PORTAL!';

  @override
  String get tubesShifted => 'TUBOS MUDARAM!';

  @override
  String bombMovesLeft(int remaining) {
    final intl.NumberFormat remainingNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String remainingString = remainingNumberFormat.format(remaining);

    return 'BOMBA: $remainingString JOGADAS!';
  }

  @override
  String get iceBroken => 'Gelo quebrou! O tubo congelado já pode ser usado.';

  @override
  String get lockUnlocked => 'Cadeado aberto! Um novo tubo está pronto.';

  @override
  String get tubeFrozenMsg =>
      'Este tubo está congelado. Algumas jogadas certas vão descongelar.';

  @override
  String get tubeLockedMsg =>
      'Este tubo está trancado. Complete outra cor primeiro.';

  @override
  String get valveOneWayMsg =>
      'A válvula dourada é unidirecional: pode despejar dentro, mas não retirar.';

  @override
  String get heatExhaustedMsg => 'Este aquecedor ficou sem cargas de queima.';

  @override
  String insufficientCoins(int cost) {
    final intl.NumberFormat costNumberFormat = intl.NumberFormat.decimalPattern(
      localeName,
    );
    final String costString = costNumberFormat.format(cost);

    return 'Moedas insuficientes ($costString).';
  }

  @override
  String get adFailed => 'Não foi possível concluir o anúncio.';

  @override
  String reopenPaid(int cost, String title) {
    final intl.NumberFormat costNumberFormat = intl.NumberFormat.decimalPattern(
      localeName,
    );
    final String costString = costNumberFormat.format(cost);

    return '-$costString moedas • $title reaberto';
  }

  @override
  String reopenAd(String title) {
    return 'Aberto com anúncio • $title';
  }

  @override
  String get tipQuotaEmpty => 'Suas dicas desta fase acabaram.';

  @override
  String get rewardsNotReady => 'O sistema de recompensas não está pronto.';

  @override
  String get freeHintUsed => 'Dica grátis usada.';

  @override
  String hintCost(int cost) {
    final intl.NumberFormat costNumberFormat = intl.NumberFormat.decimalPattern(
      localeName,
    );
    final String costString = costNumberFormat.format(cost);

    return 'Dica: -$costString moedas';
  }

  @override
  String get noHintAvailable => 'Nenhuma dica útil agora.';

  @override
  String get assistHint => 'dica';

  @override
  String get assistUndo => 'desfazer';

  @override
  String get freeHintEarned => '1 dica grátis ganha.';

  @override
  String get freeUndoEarned => '1 desfazer grátis ganho.';

  @override
  String failureCredit(int deducted, int floor) {
    final intl.NumberFormat deductedNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String deductedString = deductedNumberFormat.format(deducted);
    final intl.NumberFormat floorNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String floorString = floorNumberFormat.format(floor);

    return '-$deductedString crédito • tentativa falha (mín. $floorString)';
  }

  @override
  String debtLimitToast(int floor) {
    final intl.NumberFormat floorNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String floorString = floorNumberFormat.format(floor);

    return 'Limite de dívida ($floorString). Assista um anúncio para tentar de novo.';
  }

  @override
  String restartCredit(int deducted) {
    final intl.NumberFormat deductedNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String deductedString = deductedNumberFormat.format(deducted);

    return '-$deductedString crédito • reiniciar';
  }

  @override
  String insufficientCoinsTitle(int cost) {
    final intl.NumberFormat costNumberFormat = intl.NumberFormat.decimalPattern(
      localeName,
    );
    final String costString = costNumberFormat.format(cost);

    return 'Moedas insuficientes ($costString)';
  }

  @override
  String watchAdEarnAssist(String label) {
    return 'Assista um anúncio para ganhar 1 $label grátis.';
  }

  @override
  String debtLimitTitle(int floor) {
    final intl.NumberFormat floorNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String floorString = floorNumberFormat.format(floor);

    return 'Limite de dívida ($floorString)';
  }

  @override
  String get debtLimitBody =>
      'Você está no piso de dívida. Assista um anúncio para tentar de novo.';

  @override
  String get tipUnlockPaidBody =>
      'Você viu esta regra grátis uma vez.\nReler custa moedas.';

  @override
  String get tipUnlockAdBody =>
      'Moedas insuficientes.\nAssista um anúncio para abrir esta dica grátis.';

  @override
  String get yourBalance => 'Saldo: ';

  @override
  String payCost(int cost) {
    final intl.NumberFormat costNumberFormat = intl.NumberFormat.decimalPattern(
      localeName,
    );
    final String costString = costNumberFormat.format(cost);

    return 'Pagar $costString';
  }

  @override
  String get timeUp => 'TEMPO ESGOTADO';

  @override
  String get bombExploded => 'BOMBA EXPLODIU!';

  @override
  String get moveLimitReached => 'LIMITE DE JOGADAS ATINGIDO';

  @override
  String failurePenaltyLine(int amount, int floor) {
    final intl.NumberFormat amountNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String amountString = amountNumberFormat.format(amount);
    final intl.NumberFormat floorNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String floorString = floorNumberFormat.format(floor);

    return 'Tentativa falha: -$amountString crédito (dívida mín. $floorString).';
  }

  @override
  String get tryEasyModeHint =>
      'Você pode desligar a pressão de tempo no modo Fácil.';

  @override
  String get bombFailHint =>
      'Encha o tubo marcado com uma cor antes da contagem vermelha acabar.';

  @override
  String get bossFailHint =>
      'O experimento Boss passou do limite de jogadas. Planeje misturas e tubos vazios com cuidado.';

  @override
  String get debtLimitRetryHint =>
      'Você está no limite de dívida — assista um anúncio para tentar de novo.';

  @override
  String get retryWithAd => 'VER ANÚNCIO • TENTAR DE NOVO';

  @override
  String get retryAgain => 'TENTAR DE NOVO';

  @override
  String get vaporized => 'VAPORIZADO!';

  @override
  String colorClearedBonus(String color) {
    return '$color ELIMINADO  •  +4 S';
  }

  @override
  String get newColorFormed => 'NOVA COR FORMADA!';

  @override
  String colorBonusSeconds(String color) {
    return '$color  •  +6 S';
  }

  @override
  String get legendaryFlow => 'FLUXO LENDÁRIO!';

  @override
  String flowMultiplier(int combo) {
    final intl.NumberFormat comboNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String comboString = comboNumberFormat.format(combo);

    return 'FLUXO x$comboString';
  }

  @override
  String get legendaryFlowLabel => 'Fluxo lendário';

  @override
  String flowLabel(int multiplier) {
    final intl.NumberFormat multiplierNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String multiplierString = multiplierNumberFormat.format(multiplier);

    return 'Fluxo x$multiplierString';
  }

  @override
  String tubeSemantics(String id, int units) {
    final intl.NumberFormat unitsNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String unitsString = unitsNumberFormat.format(units);

    return 'Tubo $id, $unitsString unidades preenchidas';
  }

  @override
  String get colorRed => 'Vermelho';

  @override
  String get colorBlue => 'Azul';

  @override
  String get colorPurple => 'Roxo';

  @override
  String get colorYellow => 'Amarelo';

  @override
  String get colorGreen => 'Verde';

  @override
  String get colorOrange => 'Laranja';

  @override
  String get colorPink => 'Rosa';

  @override
  String get colorCyan => 'Ciano';

  @override
  String get colorLime => 'Limão';

  @override
  String get colorBrown => 'Marrom';

  @override
  String get skipLevelOfferBody =>
      'Este nível está difícil. Assista a um anúncio para liberar o próximo.';

  @override
  String get skipLevelCta => 'VER ANÚNCIO • PULAR';

  @override
  String get skipLevelNote => 'Você pode voltar e concluir este nível depois.';

  @override
  String get skipLevelUnlocked => 'Próximo nível liberado!';

  @override
  String get developerModeTitle => 'Modo desenvolvedor';

  @override
  String get developerModePasswordHint => 'Senha';

  @override
  String get developerModeUnlock => 'Desbloquear';

  @override
  String get developerModeEnabled => 'Todos os níveis liberados para teste.';

  @override
  String get developerModeWrongPassword => 'Senha incorreta';

  @override
  String get developerModeActive => 'Modo desenvolvedor ativo';

  @override
  String get developerModeDisable => 'Desativar modo desenvolvedor';
}
