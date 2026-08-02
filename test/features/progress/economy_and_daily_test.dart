import 'package:flutter_test/flutter_test.dart';
import 'package:liquid_sort/features/game/domain/game_economy.dart';
import 'package:liquid_sort/features/game/domain/mechanic_intro.dart';
import 'package:liquid_sort/features/progress/data/progress_repository.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  late SharedPreferencesProgressRepository repo;

  setUp(() async {
    SharedPreferences.setMockInitialValues({});
    final prefs = await SharedPreferences.getInstance();
    repo = SharedPreferencesProgressRepository(prefs);
  });

  test('spendCoins reduces balance and rejects overspend', () async {
    await repo.grantCoins(20);
    expect(await repo.spendCoins(GameEconomy.hintCoinCost), isTrue);
    expect(repo.coins, 10);
    expect(await repo.spendCoins(GameEconomy.undoCoinCost), isTrue);
    expect(repo.coins, 5);
    expect(await repo.spendCoins(GameEconomy.hintCoinCost), isFalse);
  });

  test('failure penalty can go to debt floor then blocks further cuts', () async {
    expect(await repo.applyFailurePenalty(), GameEconomy.failurePenaltyCoins);
    expect(repo.coins, -GameEconomy.failurePenaltyCoins);
    expect(await repo.applyFailurePenalty(), GameEconomy.failurePenaltyCoins);
    expect(repo.coins, GameEconomy.coinDebtFloor);
    expect(repo.isAtCoinDebtFloor, isTrue);
    expect(await repo.applyFailurePenalty(), 0);
    expect(repo.coins, GameEconomy.coinDebtFloor);
  });

  test('daily reward can be claimed once per day with streak coins', () async {
    expect(repo.canClaimDailyReward, isTrue);
    final first = await repo.claimDailyReward();
    expect(first, isNotNull);
    expect(first!.coins, GameEconomy.dailyRewardCoins.first);
    expect(repo.canClaimDailyReward, isFalse);
    expect(await repo.claimDailyReward(), isNull);
  });

  test('hidden mechanic intro targets hidden kind', () {
    final intro = MechanicIntros.byKind(MechanicKind.hidden);
    expect(intro.kind, MechanicKind.hidden);
    expect(intro.storageKey, 'hidden');
  });
}
