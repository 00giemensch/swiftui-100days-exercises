import Cocoa

// MARK: - Day 03 — Arrays, Dictionaries, Sets, Enums

// MARK: - Arrays

// MARK: - 3a. Создай массив groceries из 4 продуктов. Добавь в конец ещё один через .append(). Выведи весь массив.

var groceries = ["Apple", "Banana", "Orange", "Mango"]
groceries.append("Kiwi")

print(groceries) // ["Apple", "Banana", "Orange", "Mango", "Kiwi"]

// MARK: - 3b. Создай массив colors из 5 цветов. Выведи первый и последний элемент по индексу.

var colors: Array<String> = ["black", "green", "white", "blue", "gray"]

print(colors.first) // Optional("black")
print(colors.last) // Optional("gray")

// MARK: - 3c. Создай массив tasks из 4 задач на день. Удали вторую задачу через remove(at:). Выведи количество оставшихся задач через .count.

var tasks = ["погладить вещи", "сходить на работу", "принять душ", "пройти новый урок"]
tasks.remove(at: 1)

print(tasks.count) // 3

// MARK: - 3d. Создай массив players из 6 имён. Проверь через .contains(), есть ли там определённое имя (придумай два варианта — которое есть и которого нет).

var players = ["s1mple", "Niko", "KennyS", "electronic", "ZywOo", "Xyp9x"]
players.contains("m0NESY") // false
players.contains("electronic") // true

// MARK: - 3e. Создай массив чисел prices (5 значений). Выведи отсортированную версию через .sorted(), не изменяя оригинальный массив.

var array: Array = [451, 32, 13, 5, 10]
print(array.sorted()) // [5, 10, 13, 32, 451]

// MARK: - 3f. Создай массив queue из 4 имён людей в очереди. Выведи массив в обратном порядке через .reversed().

var queue = ["Nicolai", "Denis", "Andreas", "Michael"]
print(queue.reversed()) // ReversedCollection<Array<String>>(_base: ["Nicolai", "Denis", "Andreas", "Michael"])

// MARK: - 3g. Создай пустой массив Array<String> с именем playlist. Добавь туда 4 названия песен через .append(). Выведи итоговый плейлист.

var playlist = Array<String>()
playlist.append("Billie Jean")
playlist.append("Look at Me!")
playlist.append("SICKO MODE")
playlist.append("Goosebumps")

print(playlist) // ["Billie Jean", "Look at Me!", "SICKO MODE", "Goosebumps"]


// MARK: — Dictionaries

// MARK: - 3h. Создай словарь capital где ключи — названия трёх стран, а значения — их столицы. Выведи столицу одной из стран.

var capital = ["Belarus": "Minsk", "France": "Paris", "Mexico": "Mexico City"]
print(capital["France"]) // Optional("Paris")

// MARK: - 3i. Создай словарь student с ключами "name", "grade", "school". Выведи все три значения через default value "Unknown".

var student = ["name": "Ivan", "grade": "some grade...", "school": "some school..."]

print(student["name", default: "Unknown"]) // Ivan
print(student["grade", default: "Unknown"]) // some grade...
print(student["school", default: "Unknown"]) // some school...
print(student["job", default: "Unknown"]) // Unknown

// MARK: - 3j. Создай словарь inventory (тип [String: Int]) — 3 товара и их количество на складе. Выведи количество товара, которого там нет, используя default значение 0.

var inventory: [String: Int] = ["сникерс": 41, "молоко": 25, "хлеб": 8]
print(inventory) // ["хлеб": 8, "молоко": 25, "сникерс": 41]
print(inventory["огурцы", default: 0]) // 0

// MARK: - 3k. Создай пустой словарь [String: String] с именем passwords. Добавь туда 3 пары логин-пароль. Перезапиши пароль для одного из логинов. Выведи итоговый словарь.

var passwords = [String: String]()
passwords = [
    "dkkkk@fdfdsf.com": "djudj2d8dh723dy72",
    "admin": "admin1234!dsd",
    "login": "12345678"
]

print(passwords) // ["admin": "admin1234!dsd", "dkkkk@fdfdsf.com": "djudj2d8dh723dy72", "login": "12345678"]
passwords["login"] = "newPassword1234"
print(passwords) // ["dkkkk@fdfdsf.com": "djudj2d8dh723dy72", "admin": "admin1234!dsd", "login": "newPassword1234"]

// MARK: - 3l. Создай словарь scoreByPlayer (тип [String: Int]) с 4 игроками. Выведи количество игроков через .count.

var scoreByPlayer: [String: Int] = ["player1": 8, "player2": 20, "player3": 4, "player4": 0]
print(scoreByPlayer.count) // 4


// MARK: — Sets

// MARK: - 3m. Создай множество uniqueVisitors из массива с повторяющимися именами (минимум 2 дубликата). Выведи множество и посчитай сколько там реально элементов.

var visitors = ["Mike", "Viktor", "Mary", "Viktor", "Mike"]
var uniqueVisitors = Set(visitors)
print(uniqueVisitors) // ["Viktor", "Mary", "Mike"]
print(uniqueVisitors.count) // 3

// MARK: - 3n. Создай пустое множество Set<String>. Добавь туда 5 элементов через .insert(), два из которых одинаковые. Выведи .count — объясни в комментарии почему он меньше пяти.

var emptySet = Set<String>()
emptySet.insert("a")
emptySet.insert("a")
emptySet.insert("b")
emptySet.insert("c")
emptySet.insert("d")
print(emptySet.count) // 4

// MARK: - 3o. Создай множество bannedWords из 5 слов. Проверь через .contains() есть ли в нём конкретное слово.

var bannedWords = ["serials", "game", "youtube", "kill", "dead"]

print(bannedWords.contains("game")) // true

// MARK: — Enums

// MARK: - 3p. Создай enum TrafficLight с тремя case: red, yellow, green. Создай переменную, присвой ей .red, затем измени на .green.

enum TrafficLight {
    case red
    case yellow
    case green
}

var color = TrafficLight.green
color = .red
color = .yellow

// MARK: - 3q. Создай enum Direction с case north, south, east, west. Напиши переменную текущего направления персонажа и измени его три раза.

enum Direction {
    case north
    case south
    case east
    case west
}

var currentDirection = Direction.north
currentDirection = .east
currentDirection = .west
currentDirection = .south

// MARK: - 3r. Создай enum OrderStatus с case pending, shipped, delivered, cancelled. Создай переменную для статуса заказа и проведи его через все стадии кроме cancelled.

enum OrderStatus {
    case pending
    case shiped
    case delivered
    case cancelled
}

var status = OrderStatus.pending
status = .shiped
status = .delivered
print(status) // delivered

// MARK: - Challenge — Inventory System (Ты разрабатываешь простую систему учёта для интернет-магазина)

// MARK: - 3s. Создай enum Category с case electronics, clothing, food, books.

enum Category {
    case electronics
    case clothing
    case food
    case books
}

// MARK: - 3t. Создай массив productNames из 5 товаров.

var productNames = ["хлеб", "молоко", "сахар", "мука", "картофель"]

// MARK: - 3u. Создай словарь stock (тип [String: Int]), где ключи — это товары из productNames, а значения — количество на складе.

var stock: [String: Int] = [productNames[0]: 2, productNames[1]: 0, productNames[2]: 4, productNames[3]: 10, productNames[4]: 40]

// MARK: - 3v. Создай множество outOfStockAlerts — добавь туда названия товаров, у которых на складе 0 (выбери вручную 1-2 товара с нулевым остатком).
var outOfStockAlerts = Set([productNames[1]])

// MARK: - 3w. Выведи через string interpolation отчёт по каждому товару в формате: "Товар: Наушники, на складе: 5", используя default значение для несуществующих ключей.

print("Товар: \(productNames[0]), на складе: \(stock[productNames[0]]!, default: "0")")
print("Товар: \(productNames[1]), на складе: \(stock[productNames[1]]!, default: "0")")
print("Товар: \(productNames[2]), на складе: \(stock[productNames[2]]!, default: "0")")
print("Товар: \(productNames[3]), на складе: \(stock[productNames[3]]!, default: "0")")
print("Товар: \(productNames[4]), на складе: \(stock[productNames[4]]!, default: "0")")

// MARK: - 3x. Проверь через .contains(), есть ли первый товар из productNames в outOfStockAlerts, и выведи результат.

print(outOfStockAlerts.contains(productNames[0])) // false
print(outOfStockAlerts.contains(productNames[1])) // true
