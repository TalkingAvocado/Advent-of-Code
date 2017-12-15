
ranges :: (Ord a, Num a) => [[a]] -> [a]
ranges xs = map (\x -> (maximum x) - (minimum x)) xs

problem1 = do
  text <- readFile "2017/day-2.in"
  let cases = lines text
      singleWords = map words cases
      intoNumbers = map f singleWords
  print (sum $ ranges intoNumbers)

f :: [String] -> [Int]
f = map read

problem2 = do
  text <- readFile "2017/day-2.in"
  let cases = lines text
      singleWords = map words cases
      intoNumbers = map f singleWords
  print (sum $ evenlyDivisible intoNumbers)

evenlyDivisible :: [[Int]] -> [Int]
evenlyDivisible xs = map modByZero xs

modByZero :: [Int] -> Int
modByZero xs = maximum [quot x y | x <- xs, y <- xs, x `mod` y == 0]

test2 :: [[Int]]
test2 = [[5,9,2,8],[9,4,7,3],[3,8,6,5]]

 {-- Haskell: Add cards to Anki for Haskell test. Do them in  a similar style to the python ones that I saw. Show maximum and minimum as ways of getting the maximum and minimum from a list. max and min both require more agruments than maximum and minimum as they need both things to compare rather than just a list.

Also add the func :: Ord a, Num a => [[a]] -> [a] what would you expect and the specific error, as well as func :: (Ord a, Num a) => [[a]] -[a] and the specific error. In this example I probably need a main that calls the function. --}
