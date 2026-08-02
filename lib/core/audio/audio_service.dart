import 'dart:async';

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../features/progress/data/progress_repository.dart';

enum GameSound {
  select('select.wav'),
  button('button.wav'),
  invalid('invalid_zort.wav'),
  pour('pour.wav'),
  undo('undo.wav'),
  iceBreak('ice_break.wav'),
  tick('tick.wav'),
  timeout('timeout.wav'),
  complete('complete.wav'),
  glassMove('select.wav'),
  liquidLanding('pour.wav'),
  tubeCompleted('complete.wav'),
  comboIncrease('button.wav'),
  coinCount('button.wav'),
  starReveal('complete.wav'),
  victory('complete.wav');

  const GameSound(this.assetName);
  final String assetName;
}

abstract interface class AudioService {
  Future<void> play(GameSound sound, {double volume = 1});
  Future<void> startMusic();
  Future<void> stopMusic();
  Future<void> setMusicEnabled(bool enabled);
  Future<void> setUrgency(bool urgent);
  Future<void> stopEffects();
  Future<void> dispose();
}

final audioServiceProvider = Provider<AudioService>((ref) {
  final service = AudioplayersAudioService(
    ref.watch(progressRepositoryProvider),
  );
  ref.onDispose(() => unawaited(service.dispose()));
  return service;
});

class AudioplayersAudioService implements AudioService {
  AudioplayersAudioService(this._progress)
    : _effectPlayers = {
        for (final sound in GameSound.values) sound: AudioPlayer(),
      };

  final ProgressRepository _progress;
  final Map<GameSound, AudioPlayer> _effectPlayers;
  AudioPlayer _musicPlayer = AudioPlayer();
  AudioPlayer _urgencyPlayer = AudioPlayer();
  bool _musicStarted = false;
  bool _urgencyStarted = false;
  bool? _musicAllowed;

  @override
  Future<void> play(GameSound sound, {double volume = 1}) async {
    if (!_progress.soundEnabled) return;
    try {
      final player = _effectPlayers[sound]!;
      await player.stop();
      await player.play(
        AssetSource('audio/${sound.assetName}'),
        volume: volume.clamp(0, 1),
      );
    } catch (_) {
      // Audio must never interrupt gameplay on an unsupported device.
    }
  }

  @override
  Future<void> startMusic() async {
    if (!(_musicAllowed ?? _progress.musicEnabled) || _musicStarted) return;
    try {
      _musicStarted = true;
      await _musicPlayer.setReleaseMode(ReleaseMode.loop);
      await _musicPlayer.play(
        AssetSource('audio/ambient_music.wav'),
        volume: .18,
      );
    } catch (_) {
      _musicStarted = false;
    }
  }

  @override
  Future<void> stopMusic() async {
    _musicStarted = false;
    _urgencyStarted = false;
    try {
      final oldMusic = _musicPlayer;
      final oldUrgency = _urgencyPlayer;
      _musicPlayer = AudioPlayer();
      _urgencyPlayer = AudioPlayer();
      await oldMusic.stop();
      await oldUrgency.stop();
      await oldMusic.release();
      await oldUrgency.release();
      await oldMusic.dispose();
      await oldUrgency.dispose();
    } catch (_) {
      // Music is optional and must fail silently.
    }
  }

  @override
  Future<void> setMusicEnabled(bool enabled) async {
    _musicAllowed = enabled;
    if (enabled) {
      await startMusic();
    } else {
      await stopMusic();
    }
  }

  @override
  Future<void> setUrgency(bool urgent) async {
    if (!urgent) {
      if (!_urgencyStarted) return;
      _urgencyStarted = false;
      try {
        final oldUrgency = _urgencyPlayer;
        _urgencyPlayer = AudioPlayer();
        await oldUrgency.stop();
        await oldUrgency.release();
        await oldUrgency.dispose();
      } catch (_) {
        // The optional urgency layer can fail silently.
      }
      return;
    }
    if (_urgencyStarted ||
        !_musicStarted ||
        !(_musicAllowed ?? _progress.musicEnabled)) {
      return;
    }
    try {
      _urgencyStarted = true;
      await _urgencyPlayer.setReleaseMode(ReleaseMode.loop);
      await _urgencyPlayer.play(
        AssetSource('audio/urgency_loop.wav'),
        volume: .12,
      );
    } catch (_) {
      _urgencyStarted = false;
    }
  }

  @override
  Future<void> stopEffects() async {
    for (final player in _effectPlayers.values) {
      try {
        await player.stop();
      } catch (_) {
        // Effects are optional and can fail silently.
      }
    }
  }

  @override
  Future<void> dispose() async {
    for (final player in _effectPlayers.values) {
      await player.dispose();
    }
    await _musicPlayer.dispose();
    await _urgencyPlayer.dispose();
  }
}
