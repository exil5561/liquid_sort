class RewardBreakdown {
  const RewardBreakdown({
    required this.baseCoins,
    required this.comboBonus,
    required this.efficiencyBonus,
    required this.achievementBonus,
    this.assistancePenalty = 0,
    this.starMultiplier = 1,
    this.isDoubled = false,
  });

  final int baseCoins;
  final int comboBonus;
  final int efficiencyBonus;
  final int achievementBonus;
  final int assistancePenalty;

  /// 1.0 / 0.5 / 0.25 for 3 / 2 / 1 stars.
  final double starMultiplier;
  final bool isDoubled;

  int get rawSubtotal {
    final value =
        baseCoins +
        comboBonus +
        efficiencyBonus +
        achievementBonus -
        assistancePenalty;
    return value < 0 ? 0 : value;
  }

  int get subtotal {
    final scaled = (rawSubtotal * starMultiplier).round();
    return scaled < 0 ? 0 : scaled;
  }

  int get totalCoins => subtotal * (isDoubled ? 2 : 1);

  RewardBreakdown copyWith({bool? isDoubled}) => RewardBreakdown(
    baseCoins: baseCoins,
    comboBonus: comboBonus,
    efficiencyBonus: efficiencyBonus,
    achievementBonus: achievementBonus,
    assistancePenalty: assistancePenalty,
    starMultiplier: starMultiplier,
    isDoubled: isDoubled ?? this.isDoubled,
  );
}
