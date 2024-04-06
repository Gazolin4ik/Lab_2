use std::collections::HashSet;
use std::io;

// Функция check_pangram принимает ссылку на строку и возвращает булево значение.
fn check_pangram(sentence: &str) -> bool {
    // Создаем HashSet для хранения каждой уникальной буквы.
    let mut letters = HashSet::new();

    // Итерируем по каждому символу в строке.
    for c in sentence.chars() {
        // Проверяем, является ли символ алфавитным (a-z, A-Z).
        if c.is_ascii_alphabetic() {
            // Добавляем символ в набор в нижнем регистре.
            letters.insert(c.to_ascii_lowercase());
        }
    }

    // Проверяем, содержит ли набор 26 букв, что является количеством букв в латинском алфавите.
    letters.len() == 26
}

fn main() {
    println!();
    let mut sentence = String::new();
    
    // Читаем строку из стандартного ввода.
    io::stdin()
        .read_line(&mut sentence)
        .expect("Ошибка чтения строки");

    // Убираем символ новой строки из введённой строки.
    let sentence = sentence.trim();

    // Выводим результат функции check_pangram.
    println!("{}", check_pangram(sentence));
}