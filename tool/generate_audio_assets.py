"""Generate original, royalty-free WAV assets for Liquid Sort Puzzle."""

from __future__ import annotations

import math
import random
import struct
import wave
from pathlib import Path

SAMPLE_RATE = 22_050
OUTPUT = Path(__file__).resolve().parents[1] / "assets" / "audio"


def write_wave(name: str, samples: list[float]) -> None:
    OUTPUT.mkdir(parents=True, exist_ok=True)
    peak = max(1.0, max(abs(sample) for sample in samples))
    frames = bytearray()
    for sample in samples:
        value = int(max(-1.0, min(1.0, sample / peak)) * 32_000)
        frames.extend(struct.pack("<h", value))
    with wave.open(str(OUTPUT / name), "wb") as wav:
        wav.setnchannels(1)
        wav.setsampwidth(2)
        wav.setframerate(SAMPLE_RATE)
        wav.writeframes(frames)


def render(duration: float, sample_fn) -> list[float]:
    return [sample_fn(i / SAMPLE_RATE) for i in range(int(duration * SAMPLE_RATE))]


def glass_select() -> list[float]:
    def sample(t: float) -> float:
        envelope = math.exp(-24 * t) * min(1.0, t * 180)
        bell = math.sin(2 * math.pi * 1_380 * t)
        overtone = 0.45 * math.sin(2 * math.pi * 2_310 * t + 0.4)
        return 0.42 * envelope * (bell + overtone)

    return render(0.22, sample)


def button_tap() -> list[float]:
    rng = random.Random(4)
    noise = [rng.uniform(-1, 1) for _ in range(int(0.09 * SAMPLE_RATE))]

    def sample_at(i: int) -> float:
        t = i / SAMPLE_RATE
        envelope = math.exp(-42 * t)
        return envelope * (0.16 * math.sin(2 * math.pi * 420 * t) + 0.06 * noise[i])

    return [sample_at(i) for i in range(len(noise))]


def invalid_zort() -> list[float]:
    rng = random.Random(17)

    def sample(t: float) -> float:
        progress = t / 0.46
        frequency = 205 - 130 * progress + 17 * math.sin(2 * math.pi * 8 * t)
        phase = 2 * math.pi * frequency * t
        body = math.sin(phase) + 0.32 * math.sin(2 * phase) + 0.18 * math.sin(3 * phase)
        buzz = rng.uniform(-1, 1) * math.sin(math.pi * min(1.0, progress * 2))
        envelope = math.sin(math.pi * min(1.0, progress)) ** 0.65
        return 0.38 * envelope * body + 0.08 * envelope * buzz

    return render(0.46, sample)


def liquid_pour() -> list[float]:
    rng = random.Random(31)
    previous = 0.0
    samples: list[float] = []
    for i in range(int(0.72 * SAMPLE_RATE)):
        t = i / SAMPLE_RATE
        progress = t / 0.72
        raw = rng.uniform(-1, 1)
        previous = previous * 0.82 + raw * 0.18
        envelope = math.sin(math.pi * progress) ** 0.45
        water = previous * (0.18 + 0.08 * math.sin(2 * math.pi * 13 * t))
        bubble = 0.0
        for center, frequency in ((0.19, 900), (0.37, 1_180), (0.57, 760)):
            distance = abs(t - center)
            if distance < 0.035:
                bubble += math.sin(2 * math.pi * frequency * (t - center)) * (1 - distance / 0.035)
        samples.append(envelope * water + 0.09 * bubble)
    return samples


def undo_whoosh() -> list[float]:
    rng = random.Random(8)
    previous = 0.0
    samples: list[float] = []
    for i in range(int(0.32 * SAMPLE_RATE)):
        t = i / SAMPLE_RATE
        progress = t / 0.32
        previous = previous * 0.73 + rng.uniform(-1, 1) * 0.27
        tone = math.sin(2 * math.pi * (270 + 540 * progress) * t)
        envelope = math.sin(math.pi * progress) ** 0.7
        samples.append(envelope * (0.2 * previous + 0.12 * tone))
    return samples


def tick() -> list[float]:
    return render(
        0.085,
        lambda t: 0.2 * math.exp(-48 * t) * math.sin(2 * math.pi * 1_050 * t),
    )


def timeout() -> list[float]:
    def sample(t: float) -> float:
        first = math.exp(-18 * t) * math.sin(2 * math.pi * 110 * t)
        shifted = max(0.0, t - 0.26)
        second = (1 if t >= 0.26 else 0) * math.exp(-16 * shifted) * math.sin(
            2 * math.pi * 82 * shifted
        )
        return 0.38 * first + 0.46 * second

    return render(0.72, sample)


def ice_break() -> list[float]:
    rng = random.Random(73)

    def sample(t: float) -> float:
        envelope = math.exp(-8 * t)
        crack = rng.uniform(-1, 1) * math.exp(-16 * t)
        crystal = math.sin(2 * math.pi * (1_900 + 1_200 * t) * t)
        return 0.22 * crack + 0.24 * envelope * crystal

    return render(0.42, sample)


def urgency_loop() -> list[float]:
    duration = 4.0

    def sample(t: float) -> float:
        beat = t % 0.5
        kick = math.exp(-24 * beat) * math.sin(
            2 * math.pi * (74 - 28 * min(1.0, beat * 5)) * beat
        )
        eighth = t % 0.25
        pulse = math.exp(-36 * eighth) * math.sin(2 * math.pi * 620 * eighth)
        fade = min(1.0, t / 0.08, (duration - t) / 0.08)
        return fade * (0.22 * kick + 0.065 * pulse)

    return render(duration, sample)


def completion_chime() -> list[float]:
    notes = [(0.00, 523.25), (0.22, 659.25), (0.44, 783.99), (0.69, 1_046.50)]

    def sample(t: float) -> float:
        value = 0.0
        for start, frequency in notes:
            if t < start:
                continue
            local = t - start
            envelope = math.exp(-3.8 * local) * min(1.0, local * 80)
            value += envelope * (
                math.sin(2 * math.pi * frequency * local)
                + 0.35 * math.sin(2 * math.pi * frequency * 2.01 * local)
            )
        return 0.24 * value

    return render(1.65, sample)


def ambient_music() -> list[float]:
    duration = 18.0
    chords = [
        (130.81, 196.00, 261.63),
        (110.00, 164.81, 220.00),
        (98.00, 146.83, 196.00),
        (116.54, 174.61, 233.08),
    ]

    def sample(t: float) -> float:
        chord_position = t / (duration / len(chords))
        chord_index = min(len(chords) - 1, int(chord_position))
        local = chord_position - chord_index
        chord = chords[chord_index]
        pad = sum(
            math.sin(2 * math.pi * frequency * t + index * 0.7)
            for index, frequency in enumerate(chord)
        ) / len(chord)
        swell = 0.68 + 0.22 * math.sin(math.pi * local)
        shimmer = 0.08 * math.sin(2 * math.pi * chord[2] * 2 * t)
        edge_fade = min(1.0, t / 0.7, (duration - t) / 0.7)
        return edge_fade * (0.13 * swell * pad + 0.025 * shimmer)

    return render(duration, sample)


def main() -> None:
    assets = {
        "select.wav": glass_select(),
        "button.wav": button_tap(),
        "invalid_zort.wav": invalid_zort(),
        "pour.wav": liquid_pour(),
        "undo.wav": undo_whoosh(),
        "tick.wav": tick(),
        "timeout.wav": timeout(),
        "ice_break.wav": ice_break(),
        "complete.wav": completion_chime(),
        "ambient_music.wav": ambient_music(),
        "urgency_loop.wav": urgency_loop(),
    }
    for name, samples in assets.items():
        write_wave(name, samples)
        print(f"generated {name}")


if __name__ == "__main__":
    main()
