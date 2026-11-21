# Router dasturini (firmware) yangilash

## Nega kerak?

Uy routerlari xakerlarning sevimli nishoni. Eski dasturdagi teshiklar orqali routerni egallab olishadi, keyin u:
- begona hujumlarda (botnet) ishlatiladi;
- trafigingizni sezdirmay boshqa joyga yo'naltiradi;
- internetingizni sekinlashtiradi.

Yangilanishlar odatda **xavfsizlik va barqarorlik** tuzatishlari bo'ladi. Tezlikni sezilarli oshirmaydi, lekin «eshikka yangi qulf» vazifasini bajaradi.

**Yiliga 1–2 marta** tekshiring.

## ⚠️ To'g'ri faylni tanlash

TP-Link saytida bitta model uchun **ko'p** firmware bo'ladi. Ikki narsa aniq mos kelishi shart:

### 1. Apparat versiyasi
Routerning **tagidagi yorliqda**: `Ver: 6.0`, `Ver: 6.20`, `Ver: 6.40`...

**V6 ≠ V6.20 ≠ V6.40.** Bular ichki tuzilishi farq qiladigan alohida qurilmalar. Boshqa versiyaning firmware'i routerni ishdan chiqarishi mumkin.

Router sahifasida ham ko'rinadi: **Состояние → Версия оборудования** (masalan `Archer C20 v6 00000006`).

### 2. Mintaqa
**RU**, **EU**, **US**... Router menyusi ruscha bo'lsa, ko'pincha **RU**. Hozirgi firmware nomida ham yozilgan bo'ladi.

### 3. Sana
Ro'yxatda o'sha versiya va mintaqa uchun **eng yangisini** oling.

## Qadamlar

1. **Zaxira nusxa:** Системные инструменты → Резервная копия и восстановление → **Резервная копия**
   > ⚠️ Bu faylda provayder login-paroli (PPPoE) va Wi‑Fi paroli bor. Hech kimga bermang, GitHub'ga yuklamang.
2. TP-Link saytidan `.zip` yuklab, ichidan `.bin` faylni chiqaring.
3. Системные инструменты → **Обновление встроенного ПО** → faylni tanlang → **Обновить**.
4. **2–3 daqiqa kuting. Routerni elektrdan UZMANG, sahifani yopmang.**
5. Qayta kiring va tekshiring: **Состояние → Версия встроенного ПО**.
6. Sozlamalar saqlanganini tekshiring: internet (WAN), Wi‑Fi kanallari, qoidalar.

## Real misol (Archer C20 v6 RU)

| | Versiya | Sana |
|---|---|---|
| Oldin | Build 230331 (birinchi firmware) | 2023-08 |
| Keyin | 0.9.1 Build 260811 | 2026-08 |

Hamma sozlamalar (PPPoE, kanallar, QoS, DHCP rezervatsiya) saqlanib qoldi.
