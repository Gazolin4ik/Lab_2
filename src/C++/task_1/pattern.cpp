#include <iostream>
using namespace std;

void alphabet_pyramid(int N) {
    // Итерация от N до 1 для печати строк сверху вниз
    for (int row = N; row > 0; --row) {
        // Итерация от N до row для печати символов в строке справа налево
        for (int letter = N; letter >= row; --letter) {
            // Печать символа, начиная с соответствующего номеру строки
            cout << char('A' + letter - 1) << ' ';
        }
        // Переход на новую строку
        cout << endl;
    }
}

int main() {
    int N;
    cin >> N; // Считывание числа N
    alphabet_pyramid(N); // Вызов функции печати пирамиды
    return 0;
}