function isPangram(sentence) {
    // Убираем пробелы и приводим строку к нижнему регистру
    let formattedSentence = sentence.replace(/\s+/g, '').toLowerCase();
    
    // Создаем набор уникальных символов
    const letters = new Set(formattedSentence);
    
    // Проверяем, что количество уникальных букв не меньше 26 (количество букв в английском алфавите)
    return letters.size >= 26;
  }
  
  // Ввод строки пользователем через всплывающее окно
  let sentence = prompt();
  console.log(isPangram(sentence));
  