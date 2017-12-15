problem1 = do
  text <- readFile "2017/day-4.in"
  let list = lines text
      asWords = map words list
  print (countValid $ map valid asWords)

containsSame :: [String] -> [String]
containsSame xs = [ x | x <- xs, y <- xs, x == y]

test1 :: [String]
test1 = ["aa bb cc dd ee", "aa bb cc dd aa", "aa bb cc dd aaa"]

valid :: [String] -> Bool
valid [] = True
valid (x:xs) = if contains x xs then False
               else valid xs

contains :: String -> [String] -> Bool
contains str [] = False
contains "" xs = error "Contains was passed an empty string"
contains str (x:xs) = if str == x then True
                      else contains str xs

countValid :: [Bool] -> Int
countValid [] = 0
countValid (False:xs) = countValid xs
countValid (True:xs) = 1 + countValid xs

