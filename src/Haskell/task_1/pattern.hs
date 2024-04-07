import Data.Char (chr, ord)

-- Функция для печати алфавитного пирамиды
printAlphabetPyramid :: Int -> IO ()
printAlphabetPyramid n = mapM_ printRow [n, n-1 .. 1]
  where
    printRow row = do
      putStrLn $ concatMap (\letter -> [chr (ord 'A' + letter - 1), ' ']) [n, n-1 .. row]

-- Главная функция для ввода
main :: IO ()
main = do
  input <- getLine
  let n = read input :: Int
  printAlphabetPyramid n