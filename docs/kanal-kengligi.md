# Kanal kengligi: 20 / 40 / 80 MHz

## Oddiy qilib aytganda

Kanal kengligini **yo'l** deb tasavvur qiling:

| Kenglik | Yo'l | |
|---|---|---|
| 20 MHz | 🚗 | 1 qatorli yo'l |
| 40 MHz | 🚗🚗 | 2 qatorli yo'l |
| 80 MHz | 🚗🚗🚗🚗 | 4 qatorli yo'l |

Yo'l keng bo'lsa, bir vaqtda ko'proq ma'lumot o'tadi, ya'ni **tezlik oshadi**.
Lekin yo'l qancha keng bo'lsa, qo'shni «yo'llar» (qo'shnilarning Wi‑Fi'lari) bilan shuncha ko'p **to'qnashadi**.

---

## 20 MHz

| | |
|---|---|
| Tezlik | eng past: 2.4 GHz da ~30–40 Mbit/s |
| Barqarorlik | ⭐⭐⭐ eng yuqori |
| Uzoq masofa | eng ishonchli: signal kuchsizlanganda ham ushlab turadi |
| Qo'shnilar bilan to'qnashuv | eng kam |

**Qachon:** ko'p kvartirali uy, atrofda o'nlab Wi‑Fi bor, uzilishlar va notekis ping kuzatiladi.

## 40 MHz

| | |
|---|---|
| Tezlik | ~2 barobar: 2.4 GHz da ~50–70 Mbit/s |
| Barqarorlik | ⭐⭐ qo'shnilar ko'p bo'lsa notekis |
| Uzoq masofa | 20 MHz dan biroz yomonroq |
| Qo'shnilar bilan to'qnashuv | 2.4 GHz da yuqori: 13 kanaldan ~7 tasini egallaydi |

**Qachon:** 2.4 GHz uchun, qo'shni tarmoqlar kam bo'lsa yoki routerga yaqin bo'lsangiz. 5 GHz da eng kam tavsiya qilinadigan qiymat.

## 80 MHz (faqat 5 GHz)

| | |
|---|---|
| Tezlik | eng yuqori: 20 MHz dan ~4 barobar |
| Barqarorlik | ⭐⭐⭐ 5 GHz bo'sh bo'lgani uchun odatda muammosiz |
| Uzoq masofa | 5 GHz baribir qisqa masofa uchun |
| Qo'shnilar bilan to'qnashuv | kam |

**Qachon:** 5 GHz uchun deyarli har doim ✅

---

## «Avto» haqida

«Avto» rejimida router kenglikni o'zi tanlaydi va ba'zan **sababsiz kamaytirib yuboradi**: 80 → 40 yoki 40 → 20. Qo'lda qo'yish ishonchliroq.

## Amaliy sinov

1. 2.4 GHz ni **20 MHz** ga qo'ying, speedtest va ping qiling.
2. **40 MHz** ga qo'ying, xuddi o'sha joyda qayta o'lchang.
3. 40 MHz da tezlik oshib, ping notekis bo'lmasa, 40 qolsin. Aks holda 20.

**Real misol** ([amaliy-misol.md](amaliy-misol.md)):

| 2.4 GHz | Ping o'rtacha | Ping eng yuqori | Natija |
|---|---|---|---|
| Avto (kanal 4) | 38 ms | 99 ms | notekis |
| Kanal 1, 20 MHz | 17 ms | 28 ms | barqaror |
| Kanal 1, 40 MHz | 13 ms | 48 ms | tezroq, barqaror |

## 💡 Xulosa

- **2.4 GHz → 20 MHz** (barqaror) yoki **40 MHz** (tez): sinab ko'rib tanlang.
- **5 GHz → 80 MHz.**
- «Avto» dan qochib, qo'lda qo'ying.
