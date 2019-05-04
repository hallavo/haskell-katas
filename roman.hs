-- I V  X  L   C   D    M
-- 1 5 10 50 100 500 1000

-- WORK IN PROGRESS!
-- Doesn't handle IV, IX, XC, etc. correctly
-- For example  4 -> IIII
--              9 -> VIIII
--             49 -> XXXXVIIII

getcoefs :: (Integral a) => a -> [a]
getcoefs x = getcoefsOne x [1000,500,100,50,10,5,1] []

getcoefsOne :: (Integral a) => a -> [a] -> [a] -> [a]
getcoefsOne x [] result = result
getcoefsOne x (c:cs) result = getcoefsOne (x `mod` c) cs ((x `div` c):result)

roman :: (Integral a) => a -> String
roman x = romanOne (getcoefs x) ["I","V","X","L","C","D","M"] ""

romanOne :: Integral a => [a] -> [String] -> String -> String
romanOne [] ns result = reverse result
romanOne cs [] result = reverse result
romanOne (c:cs) (n:ns) result = romanOne cs ns (result ++ (myrepeat n c))

myrepeat :: (Integral a) => String -> a -> String
myrepeat str n = myrepeatOne str n ""

myrepeatOne :: (Integral a) => String -> a -> String -> String
myrepeatOne str 0 result = result
myrepeatOne str n result = myrepeatOne str (n-1) (result ++ str)

main = do
  putStrLn "Enter an integer:"
  input <- getLine
  let x = (read input :: Int)
  putStrLn "The corresponding roman numeral is:"
  putStrLn $ show $ roman x
