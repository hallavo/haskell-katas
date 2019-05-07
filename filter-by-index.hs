-- How could I write this more clearly?
f :: [Int] -> [Int]
f lst = map fst $ filter (even.snd) $ zip lst [1 .. length lst]

-- This part deals with the Input and Output and can be used as it is. Do not modify it.
main = do
  inputdata <- getContents
  mapM_ (putStrLn. show). f. map read. lines $ inputdata
