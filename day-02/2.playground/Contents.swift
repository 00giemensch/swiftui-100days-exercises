import Cocoa

// MARK: - Day 2 - Booleans, string joining, string interpolation

// MARK: - 2a. Создай константу isRaining со значением true и константу isSunny со значением false. Выведи обе через string interpolation одной строкой: "Rain: true, Sun: false".

let isRaining = true
let isSunny = false

print("Rain: \(isRaining), Sun: \(isSunny)")

// MARK: - 2b. Создай переменную isLoggedIn = false. Пользователь вошёл — измени значение через !. Выведи результат.

var isLoggedIn = false
isLoggedIn = !isLoggedIn // Пользователь вошёл
print(isLoggedIn) // true

// MARK: - 2c. Создай переменную isMuted = true. Переключи её три раза через .toggle(). Выведи после каждого переключения.

var isMuted = true

isMuted.toggle()
print(isMuted) // false
isMuted.toggle()
print(isMuted) // true
isMuted.toggle()
print(isMuted) // false

// MARK: - 2d. Создай три константы: имя, фамилия, город. Собери их в одну строку через + и выведи.

let name = "Elon "
let surname = "Musk "
let city = "Starbase"

print(name + surname + city) // Elon Musk Starbase

// MARK: - 2e. Создай константы firstName и lastName. Собери полное имя через string interpolation и выведи.

let firstName = "Ivan"
let lastName = "Ivanov"
let fullName = "\(firstName) + \(lastName)"

print(fullName) // Ivan + Ivanov

// MARK: - 2f. Создай константу product = "MacBook" и переменную quantity = 3. Выведи через string interpolation: "У меня 3 MacBook".

let product = "MacBook"
let quantity = 3

print("у меня \(quantity) \(product)") // у меня 3 MacBook

// MARK: - 2g. Создай константу speed = 120 и limit = 90. Создай Bool isSpeeding — присвой ей результат проверки превышает ли speed значение limit через isMultiple или простое сравнение. Выведи через interpolation: "Превышение скорости: true".

let speed = 120
let limit = 90
let isSpeeding = speed > limit

print("Превышение скорости: \(isSpeeding)") // Превышение скорости: true

// MARK: - 2h. Создай переменную score = 0. Добавь к ней \+= 10 три раза через отдельные строки. Выведи финальный результат через interpolation: "Итоговый счёт: 30".

var score = 0
score += 10
score += 10
score += 10

print("Итоговый счет: \(score)") // Итоговый счет: 30

// MARK: - 2i. Создай константы width = 10 и height = 5. Посчитай площадь прямо внутри string interpolation и выведи: "Площадь: 50".

let width = 10
let height = 5
let s = "Площадь: \(width * height)"

print(s) // Площадь: 50

// MARK: - 2j. Создай Bool hasTicket = false и isVIP = true. Переключи hasTicket через .toggle(). Выведи через interpolation: "Билет: true, VIP: true".

var hasTicket = false
let isVIP = true
hasTicket.toggle()

print("Билет: \(hasTicket), VIP: \(isVIP)")

// MARK: - Challenge (Checkpoint 1 - Пол даёт задачу: конвертер температур Celsius → Fahrenheit. Но сделай его интереснее)

// MARK: - 2k. Создай три константы с температурами: температура тела, температура кипения воды, температура на улице сегодня (придумай сам).

let tempBody = 36.6
let tempWater = 20.0
let tempStreet = 24.0

// MARK: - 2l. Для каждой посчитай Fahrenheit по формуле: × 9 / 5 + 32.

var tempBodyFahrenheit = ((tempBody * 9) / 5) + 32
var tempWaterFahrenheit = ((tempWater * 9) / 5) + 32
var tempStreetFahrenheit = ((tempStreet * 9) / 5) + 32

// MARK: - 2m. Создай Bool isFever — true если температура тела выше 37.5 градусов.

let isFever = tempBody > 37.5 // false

// MARK: - 2n. Выведи все три результата через string interpolation в таком формате: "Тело: 36.6°C = 97.88°F, жар: false"

print("Тело: \(tempBody)°C = \(tempBodyFahrenheit.formatted())°F, жар: \(isFever)")


