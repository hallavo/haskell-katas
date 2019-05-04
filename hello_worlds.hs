
module Main where

import Control.Monad
import Debug.Trace
import System.Environment
import System.IO
import System.IO.Unsafe

hello_worlds :: Int -> IO ()
hello_worlds 0 = putStr "" 
hello_worlds n = do putStrLn "Hello World"
                    hello_worlds (n-1)
-- Print "Hello World" on a new line 'n' times.
main :: IO()
main = do
    n <- readLn :: IO Int
    hello_worlds n
