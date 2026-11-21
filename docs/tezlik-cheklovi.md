# Tezlik cheklovi (QoS / Bandwidth Control)

Televizor, torrent yoki katta yangilanish yuklayotgan kompyuter **butun internetni egallab olishi** mumkin. Natijada boshqa qurilmalarda sahifalar sekin ochiladi va video qotadi.

## Yechim: qurilmaga yuqori chegara qo'yish

TP-Link'da: **Контроль пропускной способности** (Bandwidth Control).

### 1. Qurilmaga doimiy IP biriktirish

Chegara **IP manzilga** qo'yiladi. IP o'zgarib qolsa, chegara boshqa qurilmaga tushib qoladi.

**DHCP → Резервирование адресов → Добавить**
- MAC-адрес: qurilmaning MAC manzili (**DHCP → Список клиентов** da ko'rinadi)
- IP-адрес: hozirgi IP, masalan `192.168.0.101`
- Состояние: **Включено**

> Archer C20 MAC manzilni **`AA:BB:CC:DD:EE:FF`** (ikki nuqta bilan) formatida qabul qiladi. Chiziqcha bilan yozilsa, «Неправильный формат МАС-адреса» xatosi chiqadi.

### 2. Umumiy tezlikni kiritish

**Контроль пропускной способности → Включить**
- Исходящая (yuborish): tarifingiz, Kbit/s da (100 Mbit/s = `100000`)
- Входящая (yuklash): tarifingiz, Kbit/s da

⚠️ Tarifni to'g'ri yozing. Haqiqiydan katta yozilsa, cheklov yomon ishlaydi.

### 3. Qoida qo'shish

**Добавить:**
| Maydon | Qiymat |
|---|---|
| Диапазон IP | `192.168.0.101` – `192.168.0.101` |
| Приоритет | `8` (eng past: tarmoq band bo'lsa, avval boshqalarga) |
| Исходящая мин / макс | `100` / `10000` |
| Входящая мин / макс | `100` / `25000` |

## Qancha qo'yish kerak?

| Ishlatish | Kerakli tezlik |
|---|---|
| HD (720p) video | 5–8 Mbit/s |
| Full HD (1080p) | 10–15 Mbit/s |
| 4K | 25 Mbit/s |
| Video qo'ng'iroq | 3–5 Mbit/s |

💡 TV ekrani Full HD bo'lsa, 4K video hech narsa bermaydi, faqat trafikni yeydi. **15 Mbit/s** yetadi.

## Avval kim «yeyayotganini» bilish

- **Статистика беспроводного режима**: Wi‑Fi qurilmalari va paketlar soni.
- **Системные инструменты → Статистика**: IP bo'yicha trafik (statistikani yoqish kerak).
