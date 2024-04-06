#include <iostream>
using namespace std;

// Функция для вычисления суммы цифр числа
int sumOfDigits(int n) {
    int sum = 0;
    while (n > 0) {
        sum += n % 10;
        n /= 10;
    }
    return sum;
}

// Функция для вычисления произведения цифр числа
int productOfDigits(int n) {
    int product = 1;
    while (n > 0) {
        product *= n % 10;
        n /= 10;
    }
    return product;
}

int main() {
    int count, number;
    
    // Считываем количество чисел
    cin >> count;

    // Обрабатываем каждое число сразу после ввода
    for (int i = 0; i < count; ++i) {
        cin >> number;
        if (sumOfDigits(number) < productOfDigits(number)) {
            cout << i + 1 << " "; // Выводим номер числа, если оно удовлетворяет условиям
        }
    }

    return 0;
}