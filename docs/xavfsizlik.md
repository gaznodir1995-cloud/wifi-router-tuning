# Xavfsizlik

## 1. Admin paroli
Routerning admin parolini (192.168.0.1 ga kirish paroli) **murakkabiga** almashtiring.
TP-Link: **Системные инструменты → Administrator**.

❌ zavod paroli, oddiy so'z, ketma-ket raqamlar, telefon raqam
✅ kamida 12 belgi, harf + raqam + belgi

**Parolni hech qachon chatga, messenjerga yoki ochiq hujjatga yozmang.** Yozilib qolgan bo'lsa, darrov almashtiring.

## 2. Wi‑Fi paroli
- Shifrlash: **WPA2-PSK (AES)** yoki **WPA3**
- ❌ WEP, TKIP, «Открытая сеть»
- **WPS** ni o'chiring, u buzib kirishni osonlashtiradi.

## 3. Begona qurilmalar
**DHCP → Список клиентов** va **Статистика беспроводного режима** bo'limlarida kimlar ulanganini ko'ring.
- «Unknown» nomli qurilma ko'p trafik ishlatsa, kimniki ekanini aniqlang.
- Tanimagan qurilma bo'lsa → Wi‑Fi parolini almashtiring.

## 4. ⚠️ RESET tugmasi
Routerning orqasidagi teshik **hamma sozlamani o'chiradi**, jumladan:
- provayder login-paroli (**PPPoE**): internet umuman ishlamay qoladi;
- Wi‑Fi nomi va paroli.

Bosishdan oldin PPPoE login-parolingiz yozib olinganiga ishonch hosil qiling (shartnomada yoki provayderda bo'ladi).

## 5. Zaxira fayli
`Резервная копия` fayli (`.bin`) ichida barcha parollar bor.
- Shaxsiy, maxfiy joyda saqlang.
- **GitHub'ga yoki ochiq kanalga yuklamang.**

## 6. iPhone: «Эта сеть блокирует защищенный трафик DNS»
iPhone shifrlangan DNS o'tmayotganini aytyapti. Odatda buni **provayder** bloklaydi, router sozlamalariga bog'liq emas.
- Internet ishlayveradi; qaysi saytlarga kirayotganingiz (nomlari) provayderga ko'rinishi mumkin.
- Parollar va xabarlar baribir **HTTPS** bilan shifrlangan.
- Xohlasangiz: **1.1.1.1** (Cloudflare) ilovasi.
