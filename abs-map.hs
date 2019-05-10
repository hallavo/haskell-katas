absMap arr = map abs' arr

abs' :: Int -> Int
abs' x
  | x >= 0 = x
  | x <  0 = -x

-- This section handles the Input/Output and can be used as it is. Do not modify it.
main = do
  inputdata <- getContents
  mapM_ putStrLn $ map show $ absMap $ map (read :: String -> Int) $ lines inputdata
