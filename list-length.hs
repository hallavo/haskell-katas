len :: [a] -> Int
len lst = lenOne lst 0

lenOne :: [a] -> Int -> Int
lenOne [] result = result
lenOne (x:xs) result = lenOne xs (result+1)

main = do
  print [1..10]
  print $ len [1..10]
