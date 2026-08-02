#!/usr/bin/env python3
"""Add developer-mode strings to all ARB files."""
from __future__ import annotations

import json
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1] / "lib" / "l10n"

STRINGS: dict[str, dict[str, str]] = {
    "en": {
        "developerModeTitle": "Developer Mode",
        "developerModePasswordHint": "Password",
        "developerModeUnlock": "Unlock",
        "developerModeEnabled": "All levels unlocked for testing.",
        "developerModeWrongPassword": "Wrong password",
        "developerModeActive": "Developer mode active",
        "developerModeDisable": "Disable developer mode",
    },
    "tr": {
        "developerModeTitle": "Geliştirici Modu",
        "developerModePasswordHint": "Şifre",
        "developerModeUnlock": "Aç",
        "developerModeEnabled": "Test için tüm bölümler açıldı.",
        "developerModeWrongPassword": "Yanlış şifre",
        "developerModeActive": "Geliştirici modu açık",
        "developerModeDisable": "Geliştirici modunu kapat",
    },
    "es": {
        "developerModeTitle": "Modo desarrollador",
        "developerModePasswordHint": "Contraseña",
        "developerModeUnlock": "Desbloquear",
        "developerModeEnabled": "Todos los niveles desbloqueados para pruebas.",
        "developerModeWrongPassword": "Contraseña incorrecta",
        "developerModeActive": "Modo desarrollador activo",
        "developerModeDisable": "Desactivar modo desarrollador",
    },
    "pt": {
        "developerModeTitle": "Modo desenvolvedor",
        "developerModePasswordHint": "Senha",
        "developerModeUnlock": "Desbloquear",
        "developerModeEnabled": "Todos os níveis liberados para teste.",
        "developerModeWrongPassword": "Senha incorreta",
        "developerModeActive": "Modo desenvolvedor ativo",
        "developerModeDisable": "Desativar modo desenvolvedor",
    },
    "pt_BR": {
        "developerModeTitle": "Modo desenvolvedor",
        "developerModePasswordHint": "Senha",
        "developerModeUnlock": "Desbloquear",
        "developerModeEnabled": "Todos os níveis liberados para teste.",
        "developerModeWrongPassword": "Senha incorreta",
        "developerModeActive": "Modo desenvolvedor ativo",
        "developerModeDisable": "Desativar modo desenvolvedor",
    },
    "fr": {
        "developerModeTitle": "Mode développeur",
        "developerModePasswordHint": "Mot de passe",
        "developerModeUnlock": "Déverrouiller",
        "developerModeEnabled": "Tous les niveaux débloqués pour les tests.",
        "developerModeWrongPassword": "Mot de passe incorrect",
        "developerModeActive": "Mode développeur actif",
        "developerModeDisable": "Désactiver le mode développeur",
    },
    "de": {
        "developerModeTitle": "Entwicklermodus",
        "developerModePasswordHint": "Passwort",
        "developerModeUnlock": "Freischalten",
        "developerModeEnabled": "Alle Level zum Testen freigeschaltet.",
        "developerModeWrongPassword": "Falsches Passwort",
        "developerModeActive": "Entwicklermodus aktiv",
        "developerModeDisable": "Entwicklermodus deaktivieren",
    },
    "it": {
        "developerModeTitle": "Modalità sviluppatore",
        "developerModePasswordHint": "Password",
        "developerModeUnlock": "Sblocca",
        "developerModeEnabled": "Tutti i livelli sbloccati per i test.",
        "developerModeWrongPassword": "Password errata",
        "developerModeActive": "Modalità sviluppatore attiva",
        "developerModeDisable": "Disattiva modalità sviluppatore",
    },
    "ru": {
        "developerModeTitle": "Режим разработчика",
        "developerModePasswordHint": "Пароль",
        "developerModeUnlock": "Разблокировать",
        "developerModeEnabled": "Все уровни открыты для теста.",
        "developerModeWrongPassword": "Неверный пароль",
        "developerModeActive": "Режим разработчика включён",
        "developerModeDisable": "Отключить режим разработчика",
    },
    "ja": {
        "developerModeTitle": "開発者モード",
        "developerModePasswordHint": "パスワード",
        "developerModeUnlock": "解除",
        "developerModeEnabled": "テスト用に全ステージを解放しました。",
        "developerModeWrongPassword": "パスワードが違います",
        "developerModeActive": "開発者モード有効",
        "developerModeDisable": "開発者モードをオフ",
    },
    "ko": {
        "developerModeTitle": "개발자 모드",
        "developerModePasswordHint": "비밀번호",
        "developerModeUnlock": "잠금 해제",
        "developerModeEnabled": "테스트용으로 모든 스테이지가 열렸습니다.",
        "developerModeWrongPassword": "비밀번호가 틀렸습니다",
        "developerModeActive": "개발자 모드 활성",
        "developerModeDisable": "개발자 모드 끄기",
    },
    "zh": {
        "developerModeTitle": "开发者模式",
        "developerModePasswordHint": "密码",
        "developerModeUnlock": "解锁",
        "developerModeEnabled": "已解锁全部关卡用于测试。",
        "developerModeWrongPassword": "密码错误",
        "developerModeActive": "开发者模式已开启",
        "developerModeDisable": "关闭开发者模式",
    },
    "zh_CN": {
        "developerModeTitle": "开发者模式",
        "developerModePasswordHint": "密码",
        "developerModeUnlock": "解锁",
        "developerModeEnabled": "已解锁全部关卡用于测试。",
        "developerModeWrongPassword": "密码错误",
        "developerModeActive": "开发者模式已开启",
        "developerModeDisable": "关闭开发者模式",
    },
    "zh_TW": {
        "developerModeTitle": "開發者模式",
        "developerModePasswordHint": "密碼",
        "developerModeUnlock": "解鎖",
        "developerModeEnabled": "已解鎖全部關卡用於測試。",
        "developerModeWrongPassword": "密碼錯誤",
        "developerModeActive": "開發者模式已開啟",
        "developerModeDisable": "關閉開發者模式",
    },
    "ar": {
        "developerModeTitle": "وضع المطوّر",
        "developerModePasswordHint": "كلمة المرور",
        "developerModeUnlock": "فتح",
        "developerModeEnabled": "تم فتح كل المستويات للاختبار.",
        "developerModeWrongPassword": "كلمة مرور خاطئة",
        "developerModeActive": "وضع المطوّر مفعّل",
        "developerModeDisable": "إيقاف وضع المطوّر",
    },
    "id": {
        "developerModeTitle": "Mode pengembang",
        "developerModePasswordHint": "Kata sandi",
        "developerModeUnlock": "Buka",
        "developerModeEnabled": "Semua level dibuka untuk pengujian.",
        "developerModeWrongPassword": "Kata sandi salah",
        "developerModeActive": "Mode pengembang aktif",
        "developerModeDisable": "Nonaktifkan mode pengembang",
    },
    "vi": {
        "developerModeTitle": "Chế độ nhà phát triển",
        "developerModePasswordHint": "Mật khẩu",
        "developerModeUnlock": "Mở khóa",
        "developerModeEnabled": "Đã mở tất cả màn để kiểm thử.",
        "developerModeWrongPassword": "Sai mật khẩu",
        "developerModeActive": "Chế độ nhà phát triển đang bật",
        "developerModeDisable": "Tắt chế độ nhà phát triển",
    },
    "th": {
        "developerModeTitle": "โหมดนักพัฒนา",
        "developerModePasswordHint": "รหัสผ่าน",
        "developerModeUnlock": "ปลดล็อก",
        "developerModeEnabled": "ปลดล็อกทุกด่านสำหรับทดสอบแล้ว",
        "developerModeWrongPassword": "รหัสผ่านผิด",
        "developerModeActive": "โหมดนักพัฒนาเปิดอยู่",
        "developerModeDisable": "ปิดโหมดนักพัฒนา",
    },
    "pl": {
        "developerModeTitle": "Tryb deweloperski",
        "developerModePasswordHint": "Hasło",
        "developerModeUnlock": "Odblokuj",
        "developerModeEnabled": "Wszystkie poziomy odblokowane do testów.",
        "developerModeWrongPassword": "Błędne hasło",
        "developerModeActive": "Tryb deweloperski aktywny",
        "developerModeDisable": "Wyłącz tryb deweloperski",
    },
    "nl": {
        "developerModeTitle": "Ontwikkelaarsmodus",
        "developerModePasswordHint": "Wachtwoord",
        "developerModeUnlock": "Ontgrendelen",
        "developerModeEnabled": "Alle levels ontgrendeld voor testen.",
        "developerModeWrongPassword": "Onjuist wachtwoord",
        "developerModeActive": "Ontwikkelaarsmodus actief",
        "developerModeDisable": "Ontwikkelaarsmodus uitschakelen",
    },
    "uk": {
        "developerModeTitle": "Режим розробника",
        "developerModePasswordHint": "Пароль",
        "developerModeUnlock": "Розблокувати",
        "developerModeEnabled": "Усі рівні відкрито для тестування.",
        "developerModeWrongPassword": "Неправильний пароль",
        "developerModeActive": "Режим розробника активний",
        "developerModeDisable": "Вимкнути режим розробника",
    },
    "hi": {
        "developerModeTitle": "डेवलपर मोड",
        "developerModePasswordHint": "पासवर्ड",
        "developerModeUnlock": "अनलॉक",
        "developerModeEnabled": "परीक्षण के लिए सभी स्तर अनलॉक हो गए।",
        "developerModeWrongPassword": "गलत पासवर्ड",
        "developerModeActive": "डेवलपर मोड सक्रिय",
        "developerModeDisable": "डेवलपर मोड बंद करें",
    },
}


def main() -> None:
    for path in sorted(ROOT.glob("app_*.arb")):
        loc = path.stem[len("app_") :]
        patch = STRINGS.get(loc)
        if patch is None:
            print(f"skip {loc}")
            continue
        data = json.loads(path.read_text(encoding="utf-8"))
        data.update(patch)
        path.write_text(
            json.dumps(data, ensure_ascii=False, indent=2) + "\n",
            encoding="utf-8",
        )
        print(f"patched {loc}")


if __name__ == "__main__":
    main()
