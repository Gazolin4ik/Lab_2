package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

func sumAndProductOfDigits(n int) (int, int) {
	sum, product := 0, 1
	for n > 0 {
		digit := n % 10
		sum += digit
		product *= digit
		n /= 10
	}
	return sum, product
}

func main() {
	reader := bufio.NewReader(os.Stdin)
	fmt.Println()
	text, _ := reader.ReadString('\n')
	fields := strings.Fields(text)

	// Преобразуем первое поле в количество чисел.
	count, _ := strconv.Atoi(fields[0])

	for i := 1; i <= count; i++ {
		num, _ := strconv.Atoi(fields[i])
		sum, product := sumAndProductOfDigits(num)
		if sum < product {
			fmt.Printf("%d ", i)
		}
	}
	fmt.Println()
}