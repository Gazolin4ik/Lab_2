#include <iostream>
#include <vector>
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
    vector<int> numbers; // Вектор для хранения чисел
    int number;
    
    // Считывание чисел до тех пор, пока не будет введен ноль или другой ограничитель
    while (cin >> number && number != 0) {
        numbers.push_back(number);
    }

    // Обход всех чисел и проверка условия задачи
    for (int i = 0; i < numbers.size(); ++i) {
        if (sumOfDigits(numbers[i]) < productOfDigits(numbers[i])) {
            cout << (i) << " "; // Выводим номера удовлетворяющих чисел
        }
    }

    return 0;
}