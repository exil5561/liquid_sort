import 'dart:async';

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/foundation.dart';
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

  String get assetPath => 'audio/$assetName';
}

abstract interface class AudioService {
  Future<void> play(GameSound sound, {double volume = 1});
  Future<void> unlock();
  Future<void> startMusic();
  Future<void> pauseMusic();
  Future<void> resumeMusic();
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
  AudioplayersAudioService(this._progress);

  static const _effectPoolSize = 4;
  static const _musicAsset = 'audio/Glass_Tube_Logic.mp3';
  static const _musicVolume = 0.45;

  /// Keep BGM as normal media so OnePlus / Game Space does not mute it.
  static final _musicContext = AudioContext(
    android: const AudioContextAndroid(
      isSpeakerphoneOn: false,
      stayAwake: false,
      contentType: AndroidContentType.music,
      usageType: AndroidUsageType.media,
      audioFocus: AndroidAudioFocus.gain,
    ),
    iOS: AudioContextIOS(
      category: AVAudioSessionCategory.playback,
      options: const {AVAudioSessionOptions.mixWithOthers},
    ),
  );

  /// SFX must not steal focus from BGM.
  static final _sfxContext = AudioContext(
    android: const AudioContextAndroid(
      isSpeakerphoneOn: false,
      stayAwake: false,
      contentType: AndroidContentType.sonification,
      usageType: AndroidUsageType.assistanceSonification,
      audioFocus: AndroidAudioFocus.none,
    ),
    iOS: AudioContextIOS(category: AVAudioSessionCategory.ambient),
  );

  final ProgressRepository _progress;
  final List<AudioPlayer> _effectPool = <AudioPlayer>[];
  AudioPlayer? _musicPlayer;
  AudioPlayer? _urgencyPlayer;
  var _effectIndex = 0;
  Future<void>? _readyFuture;
  var _unlocked = false;
  var _musicStarted = false;
  var _musicDesired = false;
  var _musicPauseDepth = 0;
  var _urgencyStarted = false;
  bool? _musicAllowed;

  bool get _musicOn => _musicAllowed ?? _progress.musicEnabled;
  bool get _musicPaused => _musicPauseDepth > 0;

  Future<void> _ensureReady() {
    final existing = _readyFuture;
    if (existing != null) return existing;
    final future = _initPlayers();
    _readyFuture = future;
    return future;
  }

  Future<void> _initPlayers() async {
    try {
      await AudioPlayer.global.setAudioContext(_musicContext);

      final effects = <AudioPlayer>[];
      for (var i = 0; i < _effectPoolSize; i++) {
        final player = AudioPlayer(playerId: 'effect-$i');
        await player.setPlayerMode(PlayerMode.mediaPlayer);
        await player.setReleaseMode(ReleaseMode.stop);
        await player.setAudioContext(_sfxContext);
        effects.add(player);
      }

      final music = AudioPlayer(playerId: 'music');
      final urgency = AudioPlayer(playerId: 'urgency');
      await music.setPlayerMode(PlayerMode.mediaPlayer);
      await urgency.setPlayerMode(PlayerMode.mediaPlayer);
      await music.setAudioContext(_musicContext);
      await urgency.setAudioContext(_musicContext);

      _effectPool
        ..clear()
        ..addAll(effects);
      _musicPlayer = music;
      _urgencyPlayer = urgency;
      debugPrint('AudioService: players ready');
    } catch (error, stack) {
      _readyFuture = null;
      _effectPool.clear();
      _musicPlayer = null;
      _urgencyPlayer = null;
      _log('init failed', error, stack);
      rethrow;
    }
  }

  AudioPlayer _nextEffectPlayer() {
    final player = _effectPool[_effectIndex % _effectPool.length];
    _effectIndex++;
    return player;
  }

  Future<void> _startMusicIfDesired() async {
    if (_musicDesired && _musicOn) {
      await startMusic();
    }
  }

  @override
  Future<void> unlock() async {
    if (!kIsWeb) {
      _unlocked = true;
      await _startMusicIfDesired();
      return;
    }
    if (_unlocked) {
      await _startMusicIfDesired();
      return;
    }
    try {
      await _ensureReady();
      final primer = _effectPool.first;
      await primer.play(AssetSource(GameSound.button.assetPath), volume: 0.001);
      unawaited(
        Future<void>.delayed(const Duration(milliseconds: 80), primer.stop),
      );
      _unlocked = true;
      await _startMusicIfDesired();
    } catch (error, stack) {
      final message = error.toString();
      if (message.contains('AbortError') || message.contains('interrupted')) {
        _unlocked = true;
        await _startMusicIfDesired();
        return;
      }
      _log('unlock failed', error, stack);
    }
  }

  @override
  Future<void> play(GameSound sound, {double volume = 1}) async {
    if (!_progress.soundEnabled) return;
    try {
      await _ensureReady();
      if (!_unlocked) {
        await unlock();
      }
      if (!_unlocked && kIsWeb) return;
      final player = _nextEffectPlayer();
      unawaited(player.stop());
      await player.play(
        AssetSource(sound.assetPath),
        volume: volume.clamp(0, 1),
      );
    } catch (error, stack) {
      _log('play ${sound.name} failed', error, stack);
    }
  }

  @override
  Future<void> startMusic() async {
    _musicDesired = true;
    if (!_musicOn) {
      debugPrint('AudioService: startMusic skipped (music disabled)');
      return;
    }
    if (kIsWeb && !_unlocked) return;
    try {
      await _ensureReady();
      if (!kIsWeb) _unlocked = true;
      final music = _musicPlayer;
      if (music == null) {
        debugPrint('AudioService: music player null after init');
        return;
      }

      // Already playing and not paused — nothing to do.
      if (_musicStarted && !_musicPaused) {
        final state = music.state;
        if (state == PlayerState.playing) return;
        // Native player was stopped (ads / focus loss) — force replay.
        debugPrint('AudioService: music desired but state=$state, replaying');
      }

      if (_musicStarted && _musicPaused) {
        await resumeMusic();
        return;
      }

      _musicPauseDepth = 0;
      await music.setReleaseMode(ReleaseMode.loop);
      await music.setVolume(_musicVolume);
      await music.stop();
      await music.play(AssetSource(_musicAsset), volume: _musicVolume);
      _musicStarted = true;
      debugPrint('AudioService: startMusic playing $_musicAsset');
    } catch (error, stack) {
      _musicStarted = false;
      _musicPauseDepth = 0;
      _log('startMusic failed', error, stack);
    }
  }

  @override
  Future<void> pauseMusic() async {
    _musicPauseDepth += 1;
    if (_musicPauseDepth > 1) return;
    if (!_musicStarted) return;
    try {
      await _musicPlayer?.pause();
      if (_urgencyStarted) {
        await _urgencyPlayer?.pause();
      }
      debugPrint('AudioService: music paused (depth=$_musicPauseDepth)');
    } catch (error, stack) {
      _log('pauseMusic failed', error, stack);
    }
  }

  @override
  Future<void> resumeMusic() async {
    if (!_musicDesired || !_musicOn) return;
    if (_musicPauseDepth > 0) {
      _musicPauseDepth -= 1;
    }
    if (_musicPauseDepth > 0) return;
    if (!_musicStarted) {
      await startMusic();
      return;
    }
    try {
      final music = _musicPlayer;
      if (music == null) {
        await startMusic();
        return;
      }
      // Ads / system may have stopped the track — resume is not enough.
      if (music.state == PlayerState.stopped ||
          music.state == PlayerState.completed) {
        _musicStarted = false;
        await startMusic();
        return;
      }
      await music.resume();
      if (_urgencyStarted) {
        await _urgencyPlayer?.resume();
      }
      debugPrint('AudioService: music resumed');
    } catch (error, stack) {
      _musicStarted = false;
      _musicPauseDepth = 0;
      _log('resumeMusic failed', error, stack);
      await startMusic();
    }
  }

  @override
  Future<void> stopMusic() async {
    _musicDesired = false;
    _musicStarted = false;
    _musicPauseDepth = 0;
    _urgencyStarted = false;
    try {
      await _musicPlayer?.stop();
      await _urgencyPlayer?.stop();
    } catch (error, stack) {
      _log('stopMusic failed', error, stack);
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
        await _urgencyPlayer?.stop();
      } catch (error, stack) {
        _log('urgency stop failed', error, stack);
      }
      return;
    }
    if (_urgencyStarted || !_musicStarted || _musicPaused || !_musicOn) {
      return;
    }
    if (kIsWeb && !_unlocked) return;
    try {
      await _ensureReady();
      _urgencyStarted = true;
      await _urgencyPlayer!.setReleaseMode(ReleaseMode.loop);
      await _urgencyPlayer!.play(
        AssetSource('audio/urgency_loop.wav'),
        volume: .12,
      );
    } catch (error, stack) {
      _urgencyStarted = false;
      _log('urgency start failed', error, stack);
    }
  }

  @override
  Future<void> stopEffects() async {
    for (final player in _effectPool) {
      try {
        await player.stop();
      } catch (_) {}
    }
  }

  @override
  Future<void> dispose() async {
    for (final player in _effectPool) {
      await player.dispose();
    }
    _effectPool.clear();
    await _musicPlayer?.dispose();
    await _urgencyPlayer?.dispose();
    _musicPlayer = null;
    _urgencyPlayer = null;
    _readyFuture = null;
    _unlocked = false;
    _musicStarted = false;
    _musicPauseDepth = 0;
    _musicDesired = false;
  }

  void _log(String message, Object error, StackTrace stack) {
    debugPrint('AudioService: $message — $error');
    debugPrint('$stack');
  }
}
