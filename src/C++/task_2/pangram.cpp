#include <iostream>
#include <string>
#include <cctype> // для функции tolower
using namespace std;

bool is_pangram(const string& sentence) {
    bool letters[26] = {false}; // Массив для отслеживания встреченных букв

    for (char ch : sentence) {
        if (isalpha(ch)) { // Проверяем, является ли символ буквой
            letters[tolower(ch) - 'a'] = true; // Отмечаем в массиве
        }
    }

    // Проверяем, встретились ли все буквы
    for (bool exists : letters) {
        if (!exists) return false; // Если найдена буква, которая не встретилась, возвращаем false
    }

    return true; // Все буквы встретились, значит, это панграмма
}

int main() {
    string sentence;
    getline(cin, sentence); // Считываем предложение со стандартного ввода

    cout << (is_pangram(sentence) ? "True" : "False") << endl; // Выводим результат

    return 0;
}