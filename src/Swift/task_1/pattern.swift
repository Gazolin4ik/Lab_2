import Foundation

func printAlphabetPyramid(_ N: Int) {
    // Итерация от N до 1 для печати строк сверху вниз
    for row in (1...N).reversed() {
        // Итерация от N до row для печати символов в строке справа налево
        for letter in (row...N).reversed() {
            // Печать символа, начиная с соответствующего номеру строки
            let scalar = UnicodeScalar(64 + letter)! // ASCII значение для 'A' - 65, но тут 64 + letter, т.к. индексация начинается с 1
            print("\(scalar) ", terminator: "")
        }
        // Переход на новую строку
        print("")
    }
}

// Чтение значения N
if let N = Int(readLine() ?? "0") {
    printAlphabetPyramid(N)
}