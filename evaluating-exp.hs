
module Main where

import Control.Monad

exponential :: Double -> Double
exponential x = sum $ map (expTerm x) [0..9]


expTerm :: Double -> Int -> Double
expTerm x n = x^n / (fromIntegral (factorial n))

factorial :: Int -> Int
factorial n = factorialOne n 1

factorialOne :: Integral a => a -> a -> a
factorialOne 0 result = result
factorialOne n result = factorialOne (n-1) result*n

main = do
  --  Replaced this with the IO interface below
  --let input = [1.0, 2.0, 3.0, 4.0, 5.0]
  --print input
  --print $ map exponential input 

  n <- readLn :: IO Int
  forM_ [1..n] $ \n_itr -> do
    x <- readLn :: IO Double
    print $ exponential x 
