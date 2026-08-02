import 'package:flutter_test/flutter_test.dart';
import 'package:liquid_sort/features/game/domain/game_economy.dart';
import 'package:liquid_sort/features/progress/data/progress_repository.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  group('GameEconomy.canOfferLevelSkip', () {
    test('requires enough failures and unused skip', () {
      expect(
        GameEconomy.canOfferLevelSkip(
          level: 3,
          maxLevel: 50,
          failureCount: 1,
          alreadySkipped: false,
        ),
        isFalse,
      );
      expect(
        GameEconomy.canOfferLevelSkip(
          level: 3,
          maxLevel: 50,
          failureCount: 2,
          alreadySkipped: false,
        ),
        isTrue,
      );
      expect(
        GameEconomy.canOfferLevelSkip(
          level: 3,
          maxLevel: 50,
          failureCount: 5,
          alreadySkipped: true,
        ),
        isFalse,
      );
    });

    test('blocks final campaign level', () {
      expect(
        GameEconomy.canOfferLevelSkip(
          level: 50,
          maxLevel: 50,
          failureCount: 9,
          alreadySkipped: false,
        ),
        isFalse,
      );
    });
  });

  group('unlockNextLevelBySkip', () {
    test('unlocks next without completing current', () async {
      SharedPreferences.setMockInitialValues({'highestLevel': 4});
      final prefs = await SharedPreferences.getInstance();
      final repo = SharedPreferencesProgressRepository(prefs);

      await repo.recordLevelFailure(4);
      await repo.recordLevelFailure(4);
      expect(repo.failureCountFor(4), 2);

      final next = await repo.unlockNextLevelBySkip(4, maxLevel: 50);
      expect(next, 5);
      expect(repo.highestUnlockedLevel, 5);
      expect(repo.completedLevels.contains(4), isFalse);
      expect(repo.hasUsedLevelSkip(4), isTrue);
      expect(await repo.unlockNextLevelBySkip(4, maxLevel: 50), isNull);
    });
  });
}
