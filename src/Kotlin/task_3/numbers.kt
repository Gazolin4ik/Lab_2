fun main() {
    println()
    val input = readLine()?.trim()?.split("\\s+".toRegex()) ?: return

    val count = input.getOrNull(0)?.toIntOrNull() ?: return
    var output = StringBuilder()

    for (i in 1 until input.size) {
        val num = input.getOrNull(i)?.toIntOrNull() ?: continue
        val (sum, product) = sumAndProductOfDigits(num)

        if (sum < product) {
            output.append("$i ")
        }
    }

    println(output.toString().trim())
}

fun sumAndProductOfDigits(number: Int): Pair<Int, Int> {
    var n = number
    var sum = 0
    var product = 1

    while (n > 0) {
        val digit = n % 10
        sum += digit
        product *= digit
        n /= 10
    }

    return Pair(sum, product)
}