import Cocoa

// MARK: - Day 1 — Variables, constants, strings, numbers

// MARK: - 1a. Создай константу с названием своего любимого фильма. Выведи её длину.

let favFilm = "myFavFilm"
print(favFilm.count) // 9

// MARK: - 1b. Создай переменную city со значением "Moscow". Выведи её в верхнем регистре.

var city = "Moscow"
print(city.uppercased()) // MOSCOW

// MARK: - 1c. Создай константу websiteURL со значением "https://apple.com". Проверь, начинается ли она с "https" и заканчивается ли на ".com". Выведи оба результата.

let websiteURL = "https://apple.com"
websiteURL.hasPrefix("https") // true
websiteURL.hasSuffix(".com") // true

// MARK: - 1d. Создай переменную lives = 3. Игрок умер — забери жизнь. Игрок нашёл бонус — добавь 2. Выведи итог.

var lives = 3 // количество жизней
lives -= 1 // игрок умер - осталось 2
lives += 2 // нашел бонус
print(lives) // 4

// MARK: - 1e. Создай константу population = 8_000_000_000. Выведи её. Напиши в комментарии что означает это число.

let population = 8_000_000_000
print(population) // 8000000000

// MARK: - 1f. Создай переменную temperature = 36.6. Пациенту стало хуже — температура выросла на 1.2. Выведи итог.

var temperature = 36.6
temperature += 1.2
print(temperature) // 37.800000000000004

// MARK: - 1g. Создай константу songTitle со значением "Bohemian Rhapsody". Выведи количество символов и проверь, заканчивается ли на "dy".

let songTitle = "Bohemian Rhapsody"
print(songTitle.count) // 17
songTitle.hasSuffix("dy") // true

// MARK: - 1h. Создай переменную bankBalance = 1_000. Купи что-то за 350, получи зарплату 2_500, заплати аренду 800. Выведи итоговый баланс.

var bankBalance = 1_000
bankBalance -= 350 // покупка
bankBalance += 2_500 // зп
bankBalance -= 800 // аренда
print(bankBalance) // 2350

// MARK: - 1i. Создай константу year = 2024. Проверь, делится ли год на 4 (високосный ли). Выведи результат.

let year = 2024
year.isMultiple(of: 4) // 4

// MARK: - 1j. Создай многострочную строку — три строки из меню кафе (блюдо, цена, описание). Выведи её.

let menu = """
    блюдо
    цена
    описание
    """
print(menu)

/* console:
 блюдо
 цена
 описание
 */

// MARK: - Challenge (Создание профиля персонажа для игры).

// MARK: - 1k. Константа heroName — придумай крутое имя героя.

let heroName = "Брюс Уэйн"

// MARK: - 1l. Переменная health = 100. Герой получил урон 35, нашёл аптечку +20, попал в ловушку -15. Выведи итоговое здоровье.

var health = 100
health -= 35 // получил урон
health += 20 // нашёл аптечку
health -= 15 // попал в ловушку
print(health) // 70

// MARK: - 1m. Проверь: делится ли итоговое здоровье на 5.

health.isMultiple(of: 5) // true

// MARK: -1n. Выведи heroName заглавными буквами — как будто его объявляют на арене.

print(heroName.uppercased()) // БРЮС УЭЙН

// MARK: - 1o. Многострочная строка heroDescription — имя, класс, оружие. Выведи её длину.

let heroDescription = """
имя
класс
оружие
"""
print(heroDescription.count) // 16
