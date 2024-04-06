fun isPangram(sentence: String): Boolean {
    // Создаем множество для хранения уникальных символов
    val letters = mutableSetOf<Char>()

    // Проходим по каждому символу в строке
    for (char in sentence) {
        // Если символ является буквой, добавляем его в множество в нижнем регистре
        if (char.isLetter()) {
            letters.add(char.toLowerCase())
        }
    }

    // Панграмма должна содержать все 26 букв английского алфавита
    return letters.size == 26
}

fun main() {
    println()
    val input = readLine() ?: ""

    // Выводим результат проверки
    println(isPangram(input))
}