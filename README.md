# Liquid Sort Puzzle

Flutter ile yazılmış orijinal bir sıvı sıralama bulmaca oyunu.

Tüplerdeki renkli sıvıları dökerek her tüpü tek renge ayır. İlerleyen seviyelerde renk karıştırma, gizli tüpler, donmuş/kilitli tüpler, ısı, portal, bomba, valf ve sıralı tamamlama gibi mekanikler devreye girer.

## Özellikler

- Kampanya: 50 seviye
- Mekanikler: mix, hidden, frozen, locked, heated, portal, bomb, valve, moving, narrow (dar tüp)
- Undo / restart, ipucu (solver), yıldız puanlama
- Progress kaydı (`shared_preferences`)
- Ses, titreşim ve premium hissiyatlı UI (cosmic backdrop, glass tubes)
- Zorluk ayarları

## Teknoloji

- Flutter / Dart
- `flutter_riverpod` (state)
- `shared_preferences` (ilerleme)
- `audioplayers` (ses)

## Çalıştırma

```bash
flutter pub get
flutter run
```

## Proje yapısı

```
lib/
  app/                 # Tema ve MaterialApp
  core/                # Ses, ads, feedback, ortak widgetlar
  features/
    home/              # Splash + ana menü
    level_selection/   # Seviye seçimi
    game/              # Domain, controller, UI, animasyonlar
    progress/          # İlerleme deposu
    settings/          # Ayarlar
```

## Android release APK

```bash
flutter build apk --release
```

Çıktı: `build/app/outputs/flutter-apk/app-release.apk`

## iOS / App Store Connect

- App name: Liquid Sort Puzzle
- Bundle ID: `com.taslaktech.games.liquidsort`
- App Store Connect ID: `6797199854`
- CI: GitHub (`exil5561/liquid_sort`) + Codemagic (`codemagic.yaml` → `ios-release`)

### App icon

Tek kaynak dosya (1024×1024, şeffaflık yok):

`assets/images/app_icon.png`

Sonra üret:

```bash
dart run flutter_launcher_icons
```

iOS çıktıları: `ios/Runner/Assets.xcassets/AppIcon.appiconset/`

### Codemagic (bir kez)

1. Codemagic’e GitHub reposunu ekle
2. Team Integrations → Developer Portal / App Store Connect API key bağla
3. Application settings’te `codemagic.yaml` kullan
4. Workflow: `ios-release` (TestFlight)
