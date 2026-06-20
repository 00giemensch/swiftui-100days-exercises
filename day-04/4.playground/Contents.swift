import Cocoa

// MARK: - Day 04 — Type annotations

// MARK: - 4a. Создай константу bookTitle с явной type annotation : String. Присвой значение — название любимой книги.

let bookTitle: String = "MyFavBook"

// MARK: - 4b. Создай переменную temperature с type annotation : Double, но присвой ей целое число (например 20). Выведи и проверь — какого типа получилось значение.

var temperature: Double = 20
print(type(of: temperature)) // Double

// MARK: - 4c. Создай переменную attempts: Int, не присваивая значения сразу. Чуть ниже (как будто после "сложной логики") присвой ей значение 3. Выведи.

var attempts: Int
attempts = 3
print(attempts) // 3

// MARK: - 4d. Создай пустой массив favoriteGenres с type annotation : [String]. Добавь туда 3 жанра через .append().

var favoriteGenres = [String]()
favoriteGenres.append("first")
favoriteGenres.append("second")
favoriteGenres.append("third")

print(favoriteGenres) // ["first", "second", "third"]

// MARK: - 4e. Создай пустой словарь userSettings с type annotation : [String: Bool]. Добавь туда 3 настройки (например "darkMode", "notifications") со значениями true/false.

var userSettings = [String: Bool]()
userSettings["darkmode"] = false
userSettings["notifications"] = true
userSettings["lightmode"] = true

print(userSettings) // ["notifications": true, "lightmode": true, "darkmode": false]

// MARK: - 4f. Создай пустое множество Set<Int> с именем rolledDice. Добавь туда 6 чисел через .insert(), среди которых есть повторы (имитация бросков кубика). Выведи .count — будет меньше шести из-за дубликатов.

var rolledDice = Set<Int>()
rolledDice.insert(3)
rolledDice.insert(1)
rolledDice.insert(6)
rolledDice.insert(1)
rolledDice.insert(2)
rolledDice.insert(2)

print(rolledDice.count) // 4

// MARK: - 4g. Создай enum Weather с case sunny, rainy, cloudy, snowy. Создай константу todayWeather: Weather и присвой одно из значений.

enum Weather {
    case sunny
    case rainy
    case cloudy
    case snowy
}

let todayWeather: Weather = .cloudy

// MARK: - 4h. Попробуй создать константу let total: Int = "5" (со строкой вместо числа) — посмотри на ошибку компилятора. Исправь её на правильный тип и опиши в комментарии своими словами, что произошло.

let total: Int = 5

// MARK: - Challenge — Checkpoint 2 (по заданию Пола - расширенная версия для практики:)

// MARK: - 4i. Создай массив строк watchedMovies минимум с 8 элементами, среди которых есть повторяющиеся названия (ты несколько раз смотрел один и тот же фильм).

var watchedMovies = ["фильм №1", "фильм №2", "фильм №1", "фильм №3", "фильм №3", "фильм №4", "фильм №5", "фильм №6"]

// MARK: - 4j. Выведи через .count, сколько всего фильмов в списке (включая повторы).

print(watchedMovies.count) // 8

// MARK: - 4k. Преврати массив в Set, используя Set(watchedMovies), и выведи количество уникальных фильмов.

print(Set(watchedMovies).count) // 6

// MARK: - 4l. Выведи через string interpolation итог в формате: "Всего просмотров: 8, уникальных фильмов: 5".

print("Всего просмотров: \(watchedMovies.count), уникальных фильмов: \(Set(watchedMovies).count)")

// MARK: - 4m. Добавь к изначальному множеству ещё один фильм, которого там не было, через .insert(). Проверь через .contains(), что он теперь там есть.

watchedMovies.insert("фильм №7", at: 8)

print(watchedMovies.contains("фильм №7")) // true
print(watchedMovies) // ["фильм №1", "фильм №2", "фильм №1", "фильм №3", "фильм №3", "фильм №4", "фильм №5", "фильм №6", "фильм №7"]

