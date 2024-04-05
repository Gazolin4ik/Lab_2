# Функция для печати алфавитной пирамиды в обратном порядке
def print_alphabet_pyramid(N):
    # Итерация от n до 1 для печати строк сверху вниз
    for row in range(N, 0, -1):
        # Итерация от n до row для печати символов в строке справа налево
        for letter in range(N, row - 1, -1):
            # Печать символа, начиная с соответствующего номеру строки
            print(chr(ord('A') + letter - 1), end=' ')
        # Переход на новую строку
        print()

N = int(input())
print_alphabet_pyramid(N)