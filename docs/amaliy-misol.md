# Amaliy misol

**Router:** TP-Link Archer C20 v6 (RU), AC750
**Internet:** PPPoE, provayder kabeli 100 Mbit/s
**Qurilmalar:** 5 ta telefon (Wi‑Fi), 1 ta Android TV (kabel)

## Muammo
Internet sekin edi, routergacha ping **3 ms dan 99 ms gacha** sakrardi.

## Topilgan sabablar

| # | Sabab | Qanday aniqlandi |
|---|---|---|
| 1 | Hamma qurilmalar **2.4 GHz** da, 5 GHz bo'sh | Статистика беспроводного режима (5 GHz): 0 ta stansiya |
| 2 | 2.4 GHz **4-kanalda** (1/6/11 emas), kenglik «Авто» | Состояние |
| 3 | **TV** butun trafikni olardi | trafik statistikasi |
| 4 | Firmware **2023** yilgi, birinchi versiya | Состояние → Версия встроенного ПО |

## Qilingan ishlar

| Sozlama | Oldin | Keyin |
|---|---|---|
| 2.4 GHz kanal | Avto (4) | **1** |
| 2.4 GHz kenglik | Avto | **20 MHz → 40 MHz** (sinovdan keyin) |
| 5 GHz kanal | Avto (36) | **149** |
| 5 GHz kenglik | Avto | **80 MHz** |
| Telefonlar | 2.4 GHz | **5 GHz** ga o'tkazildi |
| TV | cheklovsiz | **25 Mbit/s**, ustuvorlik 8, doimiy IP |
| Firmware | Build 230331 | **Build 260811** (oldin zaxira olindi) |

## Natija

| Ko'rsatkich | Oldin | Keyin |
|---|---|---|
| Ping routergacha (o'rtacha) | 38 ms | **13–17 ms** |
| Ping routergacha (eng yuqori) | 99 ms | **28–48 ms** |
| 5 GHz tezlik | 60–70 Mbit/s | **oshdi** |
| 2.4 GHz tezlik | 30–35 Mbit/s | **oshdi** |
| TV yoqilganda boshqalar | sekinlashardi | ta'sir yo'q |

## Saboqlar

- «Avto» kanal **4** ni tanlagan, ya'ni eng yomon variantlardan birini.
- Telefonlar o'zi 5 GHz ga o'tmaydi: tarmoqni qo'lda tanlash kerak.
- 2.4 GHz da 40 MHz bu uyda ishladi, chunki qo'shnilar kam. Har bir uyda sinab ko'rish kerak.
- Firmware yangilanganda barcha sozlamalar saqlandi, lekin zaxirasiz yangilamaslik kerak.
