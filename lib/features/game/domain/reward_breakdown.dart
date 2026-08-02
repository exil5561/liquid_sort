class RewardBreakdown {
  const RewardBreakdown({
    required this.baseCoins,
    required this.comboBonus,
    required this.efficiencyBonus,
    required this.achievementBonus,
    this.assistancePenalty = 0,
    this.isDoubled = false,
  });

  final int baseCoins;
  final int comboBonus;
  final int efficiencyBonus;
  final int achievementBonus;
  final int assistancePenalty;
  final bool isDoubled;

  int get subtotal {
    final value =
        baseCoins +
        comboBonus +
        efficiencyBonus +
        achievementBonus -
        assistancePenalty;
    return value < 0 ? 0 : value;
  }

  int get totalCoins => subtotal * (isDoubled ? 2 : 1);

  RewardBreakdown copyWith({bool? isDoubled}) => RewardBreakdown(
    baseCoins: baseCoins,
    comboBonus: comboBonus,
    efficiencyBonus: efficiencyBonus,
    achievementBonus: achievementBonus,
    assistancePenalty: assistancePenalty,
    isDoubled: isDoubled ?? this.isDoubled,
  );
}
