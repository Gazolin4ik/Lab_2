using System;
using System.Collections.Generic;

class Program
{
    static bool IsPangram(string sentence)
    {
        // Создаем множество для хранения уникальных букв
        var uniqueLetters = new HashSet<char>();

        // Проходим по каждому символу в строке
        foreach (var c in sentence.ToLower()) // приводим буквы к нижнему регистру
        {
            // Проверяем, является ли символ буквой
            if (char.IsLetter(c))
            {
                // Добавляем букву в множество
                uniqueLetters.Add(c);
            }
        }

        // Панграмма должна содержать все буквы алфавита, то есть 26
        return uniqueLetters.Count == 26;
    }

    static void Main()
    {
        // Чтение строки из консоли
        Console.WriteLine("Введите строку:");
        string input = Console.ReadLine();

        // Вывод результата
        bool result = IsPangram(input);
        Console.WriteLine($"Output: {result}");
    }
}