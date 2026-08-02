# Liquid Sort Puzzle

Flutter ile yazılmış orijinal bir sıvı sıralama bulmaca oyunu.

Tüplerdeki renkli sıvıları dökerek her tüpü tek renge ayır. İlerleyen seviyelerde renk karıştırma, gizli tüpler, donmuş/kilitli tüpler, ısı, portal, bomba, valf ve sıralı tamamlama gibi mekanikler devreye girer.

## Özellikler

- Kampanya: 50 seviye
- Mekanikler: mix, hidden, frozen, locked, heated, portal, bomb, valve, moving, ordered
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
