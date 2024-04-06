use std::io;

fn sum_and_product_of_digits(digits: &str) -> (u32, u32) {
    let mut sum = 0;
    let mut product = 1;
    for digit in digits.chars() {
        if let Some(d) = digit.to_digit(10) {
            sum += d;
            product *= d;
        }
    }
    (sum, product)
}

fn main() {
    let mut input = String::new();
    io::stdin().read_line(&mut input).expect("Failed to read line");

    let numbers: Vec<&str> = input.trim().split_whitespace().collect();
    let count: u32 = numbers[0].parse().expect("Please type a number!");

    for (i, &num_str) in numbers.iter().enumerate().skip(1) {
        if i > count as usize { break; } // Для случая, если введено больше чисел, чем указано.
        
        let (sum, product) = sum_and_product_of_digits(num_str);
        
        if sum < product {
            print!("{} ", i); 
        }
    }
    println!(); // Добавляем новую строку в конце вывода
}