# Wi‑Fi Router Tuning

![Router](https://img.shields.io/badge/router-TP--Link%20Archer%20C20-4ACBD6)
![Bands](https://img.shields.io/badge/Wi--Fi-2.4%20%7C%205%20GHz-blue)
![Shell](https://img.shields.io/badge/PowerShell-5.1%2B-5391FE?logo=powershell&logoColor=white)
![License](https://img.shields.io/badge/license-MIT-green)

> 🇬🇧 **English:** A practical guide to home Wi‑Fi tuning — 2.4 vs 5 GHz, channel width (20/40/80 MHz), non-overlapping channels, per-device bandwidth limits (QoS), safe firmware upgrades and router security — with a real before/after case on a TP-Link Archer C20 and a ping stability test script. Docs are in Uzbek.

**Uy Wi‑Fi tarmog'ini tezlashtirish: kanallar, kanal kengligi, tezlik cheklovi va firmware. Tushuntirishlar va amaliy tajriba.**

Internet sekin bo'lsa, ko'pincha aybdor provayder emas, uydagi Wi‑Fi sozlamalari bo'ladi. Router «Avto» rejimda har doim ham eng yaxshi variantni tanlay olmaydi.

> Misol uchun router: **TP-Link Archer C20 v6** (AC750, ikki diapazonli). Tamoyillar hamma routerlar uchun bir xil.

---

## Tarkib

| Fayl | Mavzu |
|---|---|
| [`docs/diapazonlar.md`](docs/diapazonlar.md) | 2.4 GHz va 5 GHz farqi |
| [`docs/kanal-kengligi.md`](docs/kanal-kengligi.md) | **20 / 40 / 80 MHz**: nima o'zgaradi |
| [`docs/kanallar.md`](docs/kanallar.md) | Qaysi kanalni tanlash |
| [`docs/tezlik-cheklovi.md`](docs/tezlik-cheklovi.md) | Bitta qurilma internetni «yemasligi» uchun (QoS) |
| [`docs/firmware.md`](docs/firmware.md) | Router dasturini xavfsiz yangilash |
| [`docs/xavfsizlik.md`](docs/xavfsizlik.md) | Parollar, RESET, begona qurilmalar |
| [`docs/amaliy-misol.md`](docs/amaliy-misol.md) | Real holat: nima qilindi, natija |
| [`scripts/ping-test.ps1`](scripts/ping-test.ps1) | Wi‑Fi barqarorligini o'lchash |

---

## 🎯 Eng asosiy 5 qoida

1. **Yaqinda → 5 GHz, uzoqda → 2.4 GHz.**
2. **2.4 GHz kanali faqat 1, 6 yoki 11.**
3. **5 GHz → 80 MHz; 2.4 GHz → 20 MHz (barqaror) yoki 40 MHz (tez).**
4. **TV va kompyuter → kabel + tezlik chegarasi.**
5. **Firmware'ni yangilang. RESET'ni bosmang.**

---

## Qisqa jadval

| Sozlama | 2.4 GHz | 5 GHz |
|---|---|---|
| Kanal | 1 / 6 / 11 | 36 yoki 149 |
| Kanal kengligi | 20 MHz (ko'p qo'shni) yoki 40 MHz (kam qo'shni) | 80 MHz |
| Rejim | 11bgn | 11a/n/ac |
| Masofa | ~15 m va 2 devorgacha silliq | ~8–12 m va 1 devorgacha tez |
| Tipik tezlik | 30–60 Mbit/s | 60–90+ Mbit/s |

---

## Tezlikni to'g'ri o'lchash

- Speedtest'ni **o'sha qurilmaning o'zida** qiling.
- Tarifdan ortiq tezlik bo'lmaydi. Provayder kabeli 100 Mbit/s bo'lsa, amalda eng ko'pi **90–94 Mbit/s**.
- Routergacha barqarorlikni ping bilan tekshiring:
  ```powershell
  .\scripts\ping-test.ps1            # router: 192.168.0.1
  .\scripts\ping-test.ps1 -Router 192.168.1.1
  ```
  Yaxshi natija: o'rtacha < 20 ms, eng yuqorisi < 50 ms, 0% yo'qotish.

---

## Litsenziya

MIT
