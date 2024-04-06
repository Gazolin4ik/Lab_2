function sumAndProductOfDigits(n) {
    let sum = 0, product = 1, digit;

    while (n) {
        digit = n % 10;
        sum += digit;
        product *= digit;
        n = Math.floor(n / 10);
    }

    return { sum, product };
}

function processInput(input) {
    let numbers = input.split(' ');
    let count = parseInt(numbers.shift(), 10);
    let output = ''; // Инициализируем выходную строку
    
    for (let i = 1; i <= count; i++) {
        let num = parseInt(numbers[i - 1], 10);
        let { sum, product } = sumAndProductOfDigits(num);
        
        if (sum < product) {
            output += i + ' '; // Добавляем индекс к выходной строке
        }
    }

    console.log(output.trim()); // Выводим результат и удаляем пробел в конце
}

let inputString = prompt(); 
processInput(inputString);