#!/usr/bin/env python3
"""Add rewarded-ad level-skip strings to all ARB files."""
from __future__ import annotations

import json
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1] / "lib" / "l10n"

STRINGS: dict[str, dict[str, str]] = {
    "en": {
        "skipLevelOfferBody": "This level is tough. Watch an ad to unlock the next one.",
        "skipLevelCta": "WATCH AD • SKIP",
        "skipLevelNote": "You can come back and finish this level later.",
        "skipLevelUnlocked": "Next level unlocked!",
    },
    "tr": {
        "skipLevelOfferBody": "Bu bölüm zorluyor. Reklam izleyerek sonrakini açabilirsin.",
        "skipLevelCta": "REKLAM İZLE • ATLA",
        "skipLevelNote": "Bu bölüme sonra dönüp tamamlayabilirsin.",
        "skipLevelUnlocked": "Sonraki bölüm açıldı!",
    },
    "es": {
        "skipLevelOfferBody": "Este nivel es difícil. Mira un anuncio para desbloquear el siguiente.",
        "skipLevelCta": "VER ANUNCIO • SALTAR",
        "skipLevelNote": "Puedes volver y terminar este nivel más tarde.",
        "skipLevelUnlocked": "¡Siguiente nivel desbloqueado!",
    },
    "pt": {
        "skipLevelOfferBody": "Este nível está difícil. Assista a um anúncio para liberar o próximo.",
        "skipLevelCta": "VER ANÚNCIO • PULAR",
        "skipLevelNote": "Você pode voltar e concluir este nível depois.",
        "skipLevelUnlocked": "Próximo nível liberado!",
    },
    "pt_BR": {
        "skipLevelOfferBody": "Este nível está difícil. Assista a um anúncio para liberar o próximo.",
        "skipLevelCta": "VER ANÚNCIO • PULAR",
        "skipLevelNote": "Você pode voltar e concluir este nível depois.",
        "skipLevelUnlocked": "Próximo nível liberado!",
    },
    "fr": {
        "skipLevelOfferBody": "Ce niveau est dur. Regardez une pub pour débloquer le suivant.",
        "skipLevelCta": "VOIR PUB • PASSER",
        "skipLevelNote": "Vous pourrez revenir finir ce niveau plus tard.",
        "skipLevelUnlocked": "Niveau suivant débloqué !",
    },
    "de": {
        "skipLevelOfferBody": "Dieses Level ist hart. Sieh dir eine Werbung an, um das nächste freizuschalten.",
        "skipLevelCta": "WERBUNG • ÜBERSPRINGEN",
        "skipLevelNote": "Du kannst später zurückkehren und dieses Level beenden.",
        "skipLevelUnlocked": "Nächstes Level freigeschaltet!",
    },
    "it": {
        "skipLevelOfferBody": "Questo livello è tosto. Guarda un annuncio per sbloccare il successivo.",
        "skipLevelCta": "GUARDA AD • SALTA",
        "skipLevelNote": "Potrai tornare a finire questo livello più tardi.",
        "skipLevelUnlocked": "Livello successivo sbloccato!",
    },
    "ru": {
        "skipLevelOfferBody": "Уровень сложный. Посмотрите рекламу, чтобы открыть следующий.",
        "skipLevelCta": "РЕКЛАМА • ПРОПУСТИТЬ",
        "skipLevelNote": "Позже сможете вернуться и пройти этот уровень.",
        "skipLevelUnlocked": "Следующий уровень открыт!",
    },
    "ja": {
        "skipLevelOfferBody": "このステージは難しいです。広告を見て次を解放できます。",
        "skipLevelCta": "広告を見る • スキップ",
        "skipLevelNote": "このステージはあとで戻ってクリアできます。",
        "skipLevelUnlocked": "次のステージを解放しました！",
    },
    "ko": {
        "skipLevelOfferBody": "이 스테이지가 어렵네요. 광고를 보고 다음을 잠금 해제하세요.",
        "skipLevelCta": "광고 보기 • 건너뛰기",
        "skipLevelNote": "나중에 이 스테이지로 돌아와 완료할 수 있어요.",
        "skipLevelUnlocked": "다음 스테이지가 열렸습니다!",
    },
    "zh": {
        "skipLevelOfferBody": "这一关很难。观看广告即可解锁下一关。",
        "skipLevelCta": "看广告 • 跳过",
        "skipLevelNote": "之后还可以回来通关这一关。",
        "skipLevelUnlocked": "已解锁下一关！",
    },
    "zh_CN": {
        "skipLevelOfferBody": "这一关很难。观看广告即可解锁下一关。",
        "skipLevelCta": "看广告 • 跳过",
        "skipLevelNote": "之后还可以回来通关这一关。",
        "skipLevelUnlocked": "已解锁下一关！",
    },
    "zh_TW": {
        "skipLevelOfferBody": "這一關很難。觀看廣告即可解鎖下一關。",
        "skipLevelCta": "看廣告 • 跳過",
        "skipLevelNote": "之後還可以回來通關這一關。",
        "skipLevelUnlocked": "已解鎖下一關！",
    },
    "ar": {
        "skipLevelOfferBody": "هذا المستوى صعب. شاهد إعلانًا لفتح المستوى التالي.",
        "skipLevelCta": "شاهد إعلانًا • تخطَّ",
        "skipLevelNote": "يمكنك العودة وإنهاء هذا المستوى لاحقًا.",
        "skipLevelUnlocked": "تم فتح المستوى التالي!",
    },
    "id": {
        "skipLevelOfferBody": "Level ini sulit. Tonton iklan untuk membuka level berikutnya.",
        "skipLevelCta": "TONTON IKLAN • LEWATI",
        "skipLevelNote": "Kamu bisa kembali menyelesaikan level ini nanti.",
        "skipLevelUnlocked": "Level berikutnya terbuka!",
    },
    "vi": {
        "skipLevelOfferBody": "Màn này khó. Xem quảng cáo để mở màn tiếp theo.",
        "skipLevelCta": "XEM QC • BỎ QUA",
        "skipLevelNote": "Bạn có thể quay lại hoàn thành màn này sau.",
        "skipLevelUnlocked": "Đã mở màn tiếp theo!",
    },
    "th": {
        "skipLevelOfferBody": "ด่านนี้ยาก ดูโฆษณาเพื่อปลดล็อกด่านถัดไป",
        "skipLevelCta": "ดูโฆษณา • ข้าม",
        "skipLevelNote": "คุณสามารถกลับมาจบด่านนี้ทีหลังได้",
        "skipLevelUnlocked": "ปลดล็อกด่านถัดไปแล้ว!",
    },
    "pl": {
        "skipLevelOfferBody": "Ten poziom jest trudny. Obejrzyj reklamę, by odblokować następny.",
        "skipLevelCta": "REKLAMA • POMIŃ",
        "skipLevelNote": "Możesz wrócić i dokończyć ten poziom później.",
        "skipLevelUnlocked": "Następny poziom odblokowany!",
    },
    "nl": {
        "skipLevelOfferBody": "Dit level is lastig. Bekijk een advertentie om de volgende te ontgrendelen.",
        "skipLevelCta": "ADVERTENTIE • Overslaan",
        "skipLevelNote": "Je kunt later terugkomen om dit level af te maken.",
        "skipLevelUnlocked": "Volgende level ontgrendeld!",
    },
    "uk": {
        "skipLevelOfferBody": "Рівень складний. Подивіться рекламу, щоб відкрити наступний.",
        "skipLevelCta": "РЕКЛАМА • ПРОПУСТИТИ",
        "skipLevelNote": "Пізніше зможете повернутися і пройти цей рівень.",
        "skipLevelUnlocked": "Наступний рівень відкрито!",
    },
    "hi": {
        "skipLevelOfferBody": "यह स्तर कठिन है। अगला अनलॉक करने के लिए विज्ञापन देखें।",
        "skipLevelCta": "विज्ञापन देखें • छोड़ें",
        "skipLevelNote": "आप बाद में लौटकर इस स्तर को पूरा कर सकते हैं।",
        "skipLevelUnlocked": "अगला स्तर अनलॉक हो गया!",
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
