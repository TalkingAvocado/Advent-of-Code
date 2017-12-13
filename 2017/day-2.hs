
ranges :: (Ord a, Num a) => [[a]] -> [a]
ranges xs = map (\x -> (maximum x) - (minimum x)) xs

problem1 = do
  text <- readFile "2017/day-2.in"
  let cases = lines text
      -- gets rid of last thing but also allows it to be printed which is odd
      --strs = map init cases
      singleWords = map words cases
      intoNumbers = map f singleWords
  print intoNumbers
  print (ranges intoNumbers)
  print (sum $ ranges intoNumbers)
  
f :: [String] -> [Int]
f = map read
 
 {-- Haskell: Add cards to Anki for Haskell test. Do them in  a similar style to the python ones that I saw. Show maximum and minimum as ways of getting the maximum and minimum from a list. max and min both require more agruments than maximum and minimum as they need both things to compare rather than just a list.

Also add the func :: Ord a, Num a => [[a]] -> [a] what would you expect and the specific error, as well as func :: (Ord a, Num a) => [[a]] -[a] and the specific error. In this example I probably need a main that calls the function. --}
