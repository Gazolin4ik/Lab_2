def sum_and_product_of_digits(number)
    sum = 0
    product = 1
  
    while number > 0
      digit = number % 10
      sum += digit
      product *= digit
      number /= 10
    end
  
    [sum, product]
  end
  
  input = gets.chomp.split
  
  count = input.shift.to_i
  output = ""
  
  (1..count).each do |index|
    num = input[index - 1].to_i
    sum, product = sum_and_product_of_digits(num)
  
    output += "#{index} " if sum < product
  end
  
  puts output.strip
  