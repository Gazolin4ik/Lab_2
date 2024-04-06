fun printAlphabetPyramid(N: Int) {
    // Итерация от N до 1 для печати строк сверху вниз
    for (row in N downTo 1) {
        // Итерация от N до row для печати символов в строке справа налево
        for (letter in N downTo row) {
            // Печать символа, начиная с соответствующего номеру строки
            print((letter + 64).toChar() + " ")
        }
        // Переход на новую строку
        println()
    }
}

fun main() {
    val N = readLine()!!.toInt()
    printAlphabetPyramid(N)
}
