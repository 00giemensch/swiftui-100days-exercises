# Day 02 — Booleans, string joining, string interpolation

## Exercises

**2a.** Создай константу `isRaining` со значением `true` и константу `isSunny` со значением `false`. Выведи обе через string interpolation одной строкой: `"Rain: true, Sun: false"`.

**2b.** Создай переменную `isLoggedIn = false`. Пользователь вошёл — измени значение через `!`. Выведи результат.

**2c.** Создай переменную `isMuted = true`. Переключи её три раза через `.toggle()`. Выведи после каждого переключения.

**2d.** Создай три константы: имя, фамилия, город. Собери их в одну строку через `+` и выведи.

**2e.** Создай константы `firstName` и `lastName`. Собери полное имя через string interpolation и выведи.

**2f.** Создай константу `product = "MacBook"` и переменную `quantity = 3`. Выведи через string interpolation: `"У меня 3 MacBook"`.

**2g.** Создай константу `speed = 120` и `limit = 90`. Создай Bool `isSpeeding` — присвой ей результат проверки, превышает ли `speed` значение `limit`. Выведи через interpolation: `"Превышение скорости: true"`.

**2h.** Создай переменную `score = 0`. Добавь `+= 10` три раза. Выведи финальный результат через interpolation: `"Итоговый счёт: 30"`.

**2i.** Создай константы `width = 10` и `height = 5`. Посчитай площадь прямо внутри string interpolation и выведи: `"Площадь: 50"`.

**2j.** Создай Bool `hasTicket = false` и `isVIP = true`. Переключи `hasTicket` через `.toggle()`. Выведи через interpolation: `"Билет: true, VIP: true"`.

## 🏆 Challenge — Temperature Converter

**2k.** Создай три константы с температурами: температура тела, температура кипения воды, температура на улице сегодня (придумай сам).

**2l.** Для каждой посчитай Fahrenheit по формуле: `× 9 / 5 + 32`.

**2m.** Создай Bool `isFever` — `true` если температура тела выше `37.5` градусов.

**2n.** Выведи все три результата через string interpolation в формате: `"Тело: 36.6°C = 97.88°F, жар: false"`.
