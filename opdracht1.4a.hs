module Opdracht1Point4a where

mult :: Integer -> Integer -> Integer
mult x 0 = 0
mult x y = x + mult x (y-1)

{--
ghci> mult 12345678901234567890 2468013579
*** Exception: stack overflow
--}
