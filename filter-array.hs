
f :: Int -> [Int] -> [Int]
f n arr = concatMap (filterOne n) arr

filterOne :: Int -> Int -> [Int]
filterOne lim x 
  | x <  lim = [x]
  | x >= lim = []

-- The Input/Output section. You do not need to change or modify this part
main = do 
  n <- readLn :: IO Int 
  inputdata <- getContents 
  let numbers = map read (lines inputdata) :: [Int] 
  putStrLn . unlines $ (map show . f n) numbers
