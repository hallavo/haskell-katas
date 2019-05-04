-- Produce a list containing each of the original elements duplicated n times
f :: Int -> [Int] -> [Int]
f n arr = concatMap (replicate' n) arr

replicate' :: Int -> Int -> [Int]
replicate' 0 x = []
replicate' n x = x : (replicate' (n-1) x)

-- This part handles the Input and Output and can be used as it is. Do not modify this part.
main :: IO ()
main = getContents >>=
       mapM_ print. (\(n:arr) -> f n arr). map read. words
