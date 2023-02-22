    module Opdracht1Point5a where

pow :: Integer -> Integer -> Integer
pow x 0 = 1
pow x p = x * pow x (p-1)

{--
ghci> pow 1234567890 1234567890
*** Exception: stack overflow
--}
