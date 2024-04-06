using System;

class Program
{
    // Функция для печати алфавитной пирамиды в обратном порядке
    static void PrintAlphabetPyramid(int N)
    {
        // Итерация от N до 1 для печати строк сверху вниз
        for (int row = N; row > 0; row--)
        {
            // Итерация от N до row для печати символов в строке справа налево
            for (int letter = N; letter >= row; letter--)
            {
                // Печать символа, начиная с соответствующего номеру строки
                Console.Write(Convert.ToChar('A' + letter - 1) + " ");
            }
            // Переход на новую строку
            Console.WriteLine();
        }
    }

    static void Main(string[] args)
    {
        Console.WriteLine("Введите N:");
        int N = Convert.ToInt32(Console.ReadLine());
        PrintAlphabetPyramid(N);
    }
}