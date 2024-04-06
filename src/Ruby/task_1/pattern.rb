def print_alphabet_pyramid(n)
    # Итерация от n до 1 для печати строк сверху вниз
    n.downto(1) do |row|
      # Итерация от n до row для печати символов в строке справа налево
      n.downto(row) do |letter|
        # Печать символа, начиная с соответствующего номеру строки
        print (65 + letter - 1).chr + ' '
      end
      # Переход на новую строку
      puts
    end
  end
  
  n = gets.to_i
  print_alphabet_pyramid(n)