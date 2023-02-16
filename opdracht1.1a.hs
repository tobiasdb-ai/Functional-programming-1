module Opdracht1Point1a where

faca :: Int -> Int
faca 0 = 1  
faca n = n * faca (n - 1)  
