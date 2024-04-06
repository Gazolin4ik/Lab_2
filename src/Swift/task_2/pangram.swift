import Foundation

// Функция, которая проверяет, является ли строка панграммой
func isPangram(_ sentence: String) -> Bool {
    // Создаем множество для хранения уникальных символов
    let set = Set(sentence.lowercased().filter { $0.isLetter })

    // Проверяем, содержит ли множество 26 букв
    return set.count == 26
}

if let input = readLine() {
    print(isPangram(input))
}