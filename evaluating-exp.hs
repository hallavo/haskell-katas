--
-- I'm getting a type error: 
--


-- To do...
exp' :: Float -> Float
exp' x = sum $ map (expTerm x) [0..9]


expTerm :: Float -> Int -> Float
expTerm x n = x^n / (fromIntegral (factorial n))

factorial :: Int -> Int
factorial n = factorialOne n 1

factorialOne :: Integral a => a -> a -> a
factorialOne 0 result = result
factorialOne n result = factorialOne (n-1) result*n

main = do
  let input = [1.0, 2.0, 3.0, 4.0, 5.0]
  print input
  print $ map exp' input 
