{-# LANGUAGE FlexibleInstances, UndecidableInstances, DuplicateRecordFields #-}

module Main where

import Control.Monad
import Data.Array
import Data.Bits
import Data.List
import Data.List.Split
import Data.Set
import Debug.Trace
import System.Environment
import System.IO
import System.IO.Unsafe


-- I'm getting a GHC error:
--
-- Unsupported extension: DuplicateRecordFields
--


-- To do...
exp n :: Float -> Float
exp n = undefined
-- exp n = sum $ map (expTerm x) [0..9]


expTerm :: Int -> Int -> Float
expTerm x n = x^n / (factorial n)

factorial :: Positive a, Integral a => a -> a
factorial n = factorialOne n 0

factorialOne :: Integral a => a -> a -> a
factorialOne 0 result = result
factorialOne n result = factorialOne (n-1) result*n

main :: IO()
main = do
    n <- readLn :: IO Int

    forM_ [1..n] $ \n_itr -> do
        x <- readLn :: IO Double
