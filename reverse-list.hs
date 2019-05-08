rev :: [Int] -> [Int]
rev l = revOne l []

revOne :: [Int] -> [Int] -> [Int]
revOne [] result = result
revOne (x:xs) result = revOne xs (x:result)


main = do
  print (rev [1..10])

