import 'package:flutter_test/flutter_test.dart';
import 'package:liquid_sort/features/game/data/campaign_levels.dart';
import 'package:liquid_sort/features/game/domain/mechanic_intro.dart';

void main() {
  test('first debut levels expose a single primary new mechanic', () {
    expect(
      MechanicIntros.forLevel(CampaignLevels.byNumber(1)).map((e) => e.kind),
      contains(MechanicKind.basics),
    );
    expect(
      MechanicIntros.forLevel(CampaignLevels.byNumber(4)).map((e) => e.kind),
      contains(MechanicKind.hidden),
    );
    expect(
      MechanicIntros.forLevel(CampaignLevels.byNumber(5)).map((e) => e.kind),
      contains(MechanicKind.mix),
    );
    expect(
      MechanicIntros.forLevel(CampaignLevels.byNumber(6)).map((e) => e.kind),
      contains(MechanicKind.frozen),
    );
    expect(
      MechanicIntros.forLevel(CampaignLevels.byNumber(18)).map((e) => e.kind),
      contains(MechanicKind.narrow),
    );
  });

  test('narrow intro is the narrow mechanic with stable storage key', () {
    final intro = MechanicIntros.byKind(MechanicKind.narrow);
    expect(intro.kind, MechanicKind.narrow);
    expect(intro.storageKey, 'narrow');
  });
}
