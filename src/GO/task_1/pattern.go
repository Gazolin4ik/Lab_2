package main

import (
	"fmt"
	"bufio"
	"os"
	"strconv"
	"strings"
)

// Функция для печати алфавитной пирамиды в обратном порядке
func printAlphabetPyramid(N int) {
	// Итерация от N до 1 для печати строк сверху вниз
	for row := N; row >= 1; row-- {
		// Итерация от N до row для печати символов в строке справа налево
		for letter := N; letter >= row; letter-- {
			// Печать символа, начиная с соответствующего номеру строки
			fmt.Printf("%c ", 'A' + rune(letter-1))
		}
		// Переход на новую строку
		fmt.Println()
	}
}

func main() {
	reader := bufio.NewReader(os.Stdin)
	fmt.Print()
	input, _ := reader.ReadString('\n')
	N, err := strconv.Atoi(strings.TrimSpace(input))
	if err != nil {
		fmt.Println("Error: Invalid number")
		return
	}
	printAlphabetPyramid(N)
}