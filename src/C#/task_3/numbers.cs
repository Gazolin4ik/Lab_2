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
        Console.WriteLine("Введите числа через пробел:");
        var numbers = Console.ReadLine().Split(' ').Select(int.Parse).ToArray();

        Console.Write("Выход: ");
        for (int i = 0; i < numbers.Length; i++)
        {
            if (SumOfDigits(numbers[i]) < ProductOfDigits(numbers[i]))
            {
                Console.Write(i + " ");
            }
        }
    }
}