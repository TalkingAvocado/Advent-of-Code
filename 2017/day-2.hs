
ranges :: (Ord a, Num a) => [[a]] -> [a]
ranges xs = map (\x -> (maximum x) - (minimum x)) xs


 {-- Haskell: Add cards to Anki for Haskell test. Do them in  a similar style to the python ones that I saw. Show maximum and minimum as ways of getting the maximum and minimum from a list. max and min both require more agruments than maximum and minimum as they need both things to compare rather than just a list.

Also add the func :: Ord a, Num a => [[a]] -> [a] what would you expect and the specific error, as well as func :: (Ord a, Num a) => [[a]] -[a] and the specific error. In this example I probably need a main that calls the function. --}
