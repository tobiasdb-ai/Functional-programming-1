module Opdracht1Point1b where
    
facb :: Int -> Int
facb x
  | x <= 0 = 1
  | otherwise = (facb (x-1)) * x

{--
GETEST✅
input 6
output 720
--}