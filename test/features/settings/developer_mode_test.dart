import 'package:flutter_test/flutter_test.dart';
import 'package:liquid_sort/features/progress/data/progress_repository.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  test('developer mode unlocks all campaign levels without wiping progress', () async {
    SharedPreferences.setMockInitialValues({'highestLevel': 3});
    final prefs = await SharedPreferences.getInstance();
    final repo = SharedPreferencesProgressRepository(prefs);

    expect(repo.highestUnlockedLevel, 3);
    expect(repo.developerModeEnabled, isFalse);

    await repo.setDeveloperModeEnabled(true);
    expect(repo.developerModeEnabled, isTrue);
    expect(
      repo.highestUnlockedLevel,
      SharedPreferencesProgressRepository.developerUnlockLevel,
    );

    await repo.setDeveloperModeEnabled(false);
    expect(repo.highestUnlockedLevel, 3);
  });
}
