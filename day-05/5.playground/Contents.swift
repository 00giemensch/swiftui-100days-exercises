import Cocoa

var greeting = "Hello, playground"

// MARK: - Day 05 — Conditions

// MARK: - 5a. Создай константу age. Используй if, чтобы проверить — можно ли арендовать машину (обычно от 21 года). Выведи сообщение если можно.

let age = 22
let isCarRentalAvailable: Bool

if age >= 21 {
    isCarRentalAvailable = true
    print(isCarRentalAvailable) // true
}

// MARK: - 5b. Создай две константы — названия любимых блюд. Сравни их через < и >, выведи какое идёт первым по алфавиту.

let favouriteDish1 = "BBQ"
let favouriteDish2 = "lasagna"

if favouriteDish1 > favouriteDish2 {
    print("\(favouriteDish1) идет первым по алфавиту")
} else if favouriteDish1 < favouriteDish2 {
    print("\(favouriteDish1) идет первым по алфовиту")
}

// Console: BBQ идет первым по алфовиту

// MARK: - 5c. Создай массив cart из 3 товаров. Добавь четвёртый через .append(). Если товаров стало больше 3 — удали самый первый через if и remove(at:).

var cart = ["Молоко", "Хлеб", "Масло"]
cart.append("Соль")

if cart.count > 3 {
    cart.remove(at: 0)
}

// MARK: - 5d. Создай константу enteredCode со значением какого-то кода. Сравни через == с правильным кодом "1234", выведи результат. Затем то же самое через !=.

let enteredCode = 4901

print(enteredCode == 1234) // false
print(enteredCode != 1234) // true

// MARK: - 5e. Создай переменную comment со значением пустой строки. Через if и .isEmpty замени её на "Без комментария".

var comment = ""

if comment.isEmpty {
    comment = "Без комментария"
}

print(comment) // Без комментария

// MARK: - 5f. Создай константу outsideTemp = 5. Через if/else выведи "Тепло" или "Холодно" (порог подбери сам).

let outsideTemp = 5

if outsideTemp > 20 {
    print("Тепло")
} else {
    print("Холодно")
}

// MARK: - 5g. Создай константу examScore. Через if/else if/else выведи оценку: "A" (90+), "B" (75-89), "C" (60-74), "F" (ниже).

let examScore = 65

if examScore >= 90 {
    print("A")
} else if examScore >= 75 && examScore <= 89 {
    print("B")
} else if examScore >= 60 && examScore <= 74 {
    print("C")
} else {
    print("F")
}

// MARK: - 5h. Создай isStudent: Bool и age: Int. Через && проверь — положена ли скидка студентам младше 25 лет.

var isStudent = true
var age1 = 14

if isStudent == true && age1 < 25 {
    print("Скидке быть")
}

// MARK: - 5i. Создай isAdmin: Bool и isModerator: Bool. Через || проверь — есть ли у пользователя доступ к панели управления.

var isAdmin = false
var isModerator = true

print(isAdmin || isModerator ? "Доступ есть" : "Доступа нет") // Доступ есть

// MARK: - 5j. Создай hasSubscription: Bool, isTrialActive: Bool, isBanned: Bool. Через &&/|| с явными скобками проверь — может ли пользователь смотреть контент (подписка ИЛИ триал, но только если не забанен).

var hasSubscription = false
let isTrialActive = true
let isBanned = false

print((hasSubscription || isTrialActive) && isBanned == false ? "Доступ к просмотру есть" : "Доступа нет") // Доступ к просмотру есть

// MARK: - 5k. Создай enum DeliveryStatus с case processing, shipped, delivered, returned. Через switch выведи сообщение для каждого статуса.

enum DeliveryStatus {
    case processing, shipped, delivered, returned
}

var status: DeliveryStatus = .delivered

switch status {
case .processing:
    print("processing")
case .shipped:
    print("shipped")
case .delivered:
    print("delivered")
case .returned:
    print("returned")
}

// MARK: - 5l. Создай константу userInput типа String с произвольным значением. Через switch с default обработай 3 конкретных варианта и всё остальное.

let userInput = "black"

switch userInput {
case "white":
    print("white")
case "black":
    print("black")
case "green":
    print("green")
default:
    "another color"
}

// MARK: - 5m. Создай константу stage = 3 (этап обратного отсчёта запуска ракеты). Через switch и fallthrough выведи все этапы от текущего до старта ("Зажигание!", "3…", "2…", "1…", "Старт!").

let stage = 3
switch stage {
case 3:
    print("Зажигание!")
    print("3")
    fallthrough
case 2:
    print("2")
    fallthrough
case 1:
    print("1")
    print("Старт!")
default: break
}

// MARK: - 5n. Создай isWeekend: Bool. Через тернарный оператор выведи "Отдыхаем" или "Работаем".

let isWeekend = false
print(isWeekend ? "Отдыхаем" : "Работаем") // Работаем

// MARK: - 5o. Создай массив notifications. Через тернарный оператор и .isEmpty выведи "Нет уведомлений" либо количество через interpolation.

var notifications = [String]()
if notifications.isEmpty {
    print("Нет уведомлений")
} else {
    print(notifications.count)
}

// MARK: - Challenge 1 — Кинотеатр

//Система расчёта цены билета:

//До 12 лет — бесплатно
//12-17 — детская цена
//18-64 — взрослая цена
//65+ — пенсионная скидка


//Используй if/else if/else, выведи итоговую цену через string interpolation.

let year = 20
var price = ""

if year < 12 {
    price = "бесплатно"
} else if year >= 12 && year <= 17 {
    price = "детская скидка"
} else if year >= 18 && year <= 64 {
    price = "взрослая цена"
} else {
    price = "пенсионная скидка"
}

print("Учитывая ваш возраст, вам предоставляется: \(price)") // Учитывая ваш возраст, вам предоставляется: взрослая цена

// MARK: - Challenge 2 — Торговый автомат

//Создай enum VendingItem с 5 товарами (вода, чипсы, шоколад и т.д.). Через switch для каждого товара выведи его цену. Добавь default-подобный случай через дополнительный case для несуществующего товара (или используй строки вместо enum и обязательно default).

enum VendingItem {
    case вода
    case чипсы
    case шоколад
    case лимонад
    case печенье
}

let result = VendingItem.вода

switch result {
case .вода:
    print("вода: 45 руб.")
case .лимонад:
    print("лимонад: 70 руб.")
case .печенье:
    print("печенье: 65 руб.")
case .чипсы:
    print("чипсы: 80 руб.")
case .шоколад:
    print("шоколад: 50 руб.")
default:
    print("Выберите другой вариант")
}

// MARK: - Challenge 3 — Контроль доступа в игре

//Создай систему проверки: игрок может войти в закрытую зону, если он isVIP или (hasKey и questCompleted). Используй &&/|| с явными скобками. Дополнительно — выведи через тернарный оператор статус "Доступ открыт" / "Доступ закрыт".

let isVIP = false
let hasKey = true
let questCompleted = true

print(isVIP || (hasKey && questCompleted) ? "Доступ открыт" : "Доступ закрыт") // Доступ открыт

// MARK: - Mixed Review

//5p. (Day 5 + Day 4) Создай переменную level: Int с type annotation. Через switch выведи звание игрока для уровней 1-10, 11-20, 21+ (используй case 1...10 диапазон, если знаешь, либо if/else if).

let level: Int = 2

switch level {
case 1...10:
    print("Level A")
case 11...20:
    print("Level B")
case 21...:
    print("Level C")
default: break
}

// Console: Level A

// MARK: - 5q. (Day 5 + Day 3 — Dictionary) Создай словарь prices ([String: Int]) с 3 товарами. Через if проверь — есть ли в нём товар по конкретному ключу, выведи цену или "Не найдено" через default value.

var prices: [String:Int] = ["Лимон": 10, "Хлеб": 4, "Помидор": 40]

let itemPrice = prices["Кетчуп", default: -1]

if itemPrice == -1 {
    print("Не найдено")
} else {
    print("Цена \(itemPrice)")
}

// Console: Не найдено

// 2-й способ
let itemPrice2 = prices["Хлеб"]
if itemPrice2 != nil {
    print("Цена: \(itemPrice2)")
} else {
    print("Не найдено")
}

// Console: Цена: Optional(4)

// MARK: - 5r. (Day 5 + Day 2) Создай Bool isPremium и строку userName. Через тернарный оператор и string interpolation собери приветствие: "Добро пожаловать, Имя (Premium)" или просто "Добро пожаловать, Имя".

var isPremium = true
var userName = "Mike"
var greetings = isPremium ? "Добро пожаловать, \(userName) (Premium)" : "Добро пожаловать, \(userName)"
print(greetings) // Добро пожаловать, Mike (Premium)

// MARK: - 5s. (Day 5 + Day 3 — Enum) Создай enum Season с winter, spring, summer, fall. Через switch выведи среднюю температуру для каждого сезона (придумай значения).

enum Season {
    case winter, spring, summer, fall
}

var currentSeason = Season.summer

switch currentSeason {
case .fall:
    print(12)
case .spring:
    print(16)
case .summer:
    print(24)
case .winter:
    print(-8)
}

// MARK: - 5t. (Day 5 + Day 3 — Set) Создай множество bannedUsers: Set<String>. Через if и .contains() проверь — забанен ли конкретный пользователь, выведи результат.

var bannedUsers: Set<String> = ["name0", "name1", "name2", "name3"]
var user = "name2"
if bannedUsers.contains(user) {
    print("\(user) забанен")
} else {
    print("такого пользователя не существует либо он не забанен")
}

// Console: name2 забанен

// MARK: - Mixed Challenge — Система регистрации на мероприятие

//Собери воедино темы Day 1-5:

// MARK: - a. Массив Category (enum) с типами билетов: standard, vip, staff.

enum Category {
    case standard
    case vip
    case staff
}

// MARK: - b. Словарь ticketPrices: [String: Int] с ценами для каждой категории (используй строковые ключи, совпадающие с case enum).

var ticketPrices: [String: Int] = ["standard": 0, "vip": 200, "staff": 2000]

// MARK: - c. Множество checkedInGuests: Set<String> — список тех, кто уже прошёл регистрацию.

var checkedInGuests: Set<String> = ["name1", "name2"]

// MARK: - d. Создай переменную guestName: String и guestCategory: Category.

var guestName = "name6"
var guestCategory: Category = .staff

// MARK: - e. Через if и .contains() проверь — не зарегистрирован ли гость уже. Если зарегистрирован — выведи "Уже отмечен!".

if checkedInGuests.contains(guestName) {
    print("уже отмечен!")
}

// MARK: - f. Если не зарегистрирован — через switch по guestCategory выведи приветственное сообщение, разное для каждой категории.

switch guestCategory { // Variable 'guestCategory' used before being initialized
case .standard:
    print("Добро пожаловать, \(guestName) (standard)")
case .vip:
    print("Добро пожаловать, \(guestName) (vip)")
case .staff:
    print("Добро пожаловать, \(guestName) (staff)")
}

// Console: Добро пожаловать, name6 (staff)

// MARK: - g. Через тернарный оператор определи скидку: isEarlyBird ? 10 : 0 (создай Bool isEarlyBird сам).
var isEarlyBird = true
var скидка = isEarlyBird ? 10 : 0

// MARK: - h. Выведи итоговую сводку через string interpolation: имя, категория, цена с учётом скидки, статус регистрации.

print("имя: \(guestName), категория: \(guestCategory), цена с учетом скидки: \((ticketPrices["staff"] ?? 0)-скидка), статус регистрации")
