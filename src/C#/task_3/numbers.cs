using System;
using System.Linq;

class Program
{
    static int SumOfDigits(int number)
    {
        int sum = 0;
        while (number > 0)
        {
            sum += number % 10;
            number /= 10;
        }
        return sum;
    }

    static int ProductOfDigits(int number)
    {
        int product = 1;
        while (number > 0)
        {
            product *= number % 10;
            number /= 10;
        }
        return product;
    }

    static void Main()
    {
        Console.WriteLine("Введите количество чисел и числа через пробел:");
        var input = Console.ReadLine().Split(' ').Select(int.Parse).ToList();

        int count = input[0];  // Первое число - это количество последующих чисел

        Console.Write("Выход: ");
        for (int i = 1; i <= count; i++)  // Начинаем с 1, так как нулевой элемент - это count
        {
            if (SumOfDigits(input[i]) < ProductOfDigits(input[i]))
            {
                Console.Write((i) + " ");  // Выводим индекс числа, уменьшенный на 1
            }
        }
    }
}