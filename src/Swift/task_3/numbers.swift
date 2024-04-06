import Foundation

// Функция для вычисления суммы и произведения цифр числа
func sumAndProductOfDigits(of number: Int) -> (sum: Int, product: Int) {
    var n = number
    var sum = 0
    var product = 1

    while n > 0 {
        let digit = n % 10
        sum += digit
        product *= digit
        n /= 10
    }

    return (sum, product)
}

// Читаем строку ввода
guard let inputLine = readLine() else { fatalError("Failed to read the line.") }
let components = inputLine.split(separator: " ")

// Первый компонент - количество чисел
guard let count = Int(components.first ?? "") else { fatalError("Invalid input") }
var result = [String]()

// Обрабатываем каждое число и проверяем условие
for i in 1..<components.count {
    guard let number = Int(components[i]) else { continue }
    let (sum, product) = sumAndProductOfDigits(of: number)
    if sum < product {
        // Если условие выполнено, добавляем индекс в результат
        result.append(String(i))
    }
}

// Выводим результат
print(result.joined(separator: " "))