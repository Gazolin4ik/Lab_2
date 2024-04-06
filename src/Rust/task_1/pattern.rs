use std::io; 
use std::char;

fn print_alphabet_pyramid(n: usize) {
    // Итерация от n до 1 для печати строк сверху вниз
    for row in (1..=n).rev() {
        // Итерация от n до row для печати символов в строке справа налево
        for letter in (row..=n).rev() {
            // Преобразование числа в символ алфавита, начиная с 'A'
            let c = char::from_u32('A' as u32 + letter as u32 - 1).unwrap();
            // Печать символа без перехода на новую строку
            print!("{} ", c);
        }
        // Переход на новую строку после завершения печати строки пирамиды
        println!();
    }
}

fn main() {
    // Строка для хранения ввода пользователя
    let mut input = String::new();
    println!("Введите N:");
    // Чтение строки из стандартного ввода
    io::stdin().read_line(&mut input).expect("Не удалось прочитать строку");
    // Преобразование введенной строки в число типа usize
    let n: usize = input.trim().parse().expect("Введите число");
    // Вызов функции для печати пирамиды
    print_alphabet_pyramid(n);
}
