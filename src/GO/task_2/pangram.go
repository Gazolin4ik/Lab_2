package main

import (
	"bufio"
	"fmt"
	"os"
	"strings"
)

// Функция проверяет, является ли строка панграммой, то есть содержит ли она все буквы английского алфавита.
func isPangram(sentence string) bool {
	const alphabetLength = 26
	seen := make(map[rune]bool)

	// Проходим по каждой букве в предложении.
	for _, char := range strings.ToLower(sentence) {
		// Если символ является буквой, добавляем в мапу.
		if char >= 'a' && char <= 'z' {
			seen[char] = true
		}
	}

	// Проверяем, содержит ли мапа все буквы алфавита.
	return len(seen) == alphabetLength
}

func main() {
	scanner := bufio.NewScanner(os.Stdin)
	fmt.Println()
	scanner.Scan()
	sentence := scanner.Text()

	if isPangram(sentence) {
		fmt.Println("true")
	} else {
		fmt.Println("false")
	}
}