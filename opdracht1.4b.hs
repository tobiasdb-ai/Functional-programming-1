module Opdracht1Point4b where

import Data.Bits
import Control.Monad.Trans.Cont (shiftT)
-- https://hackage.haskell.org/package/base-4.17.0.0/docs/Data-Bits.html
-- https://www.geeksforgeeks.org/russian-peasant-multiply-two-numbers-using-bitwise-operators/

fastmult :: Integer -> Integer -> Integer
fastmult x y
  | y == 0 = 0
  | even y = c
  | otherwise = x + c
  where c = fastmult (shiftL x 1) (shiftR y 1)

{--
ghci> fastmult 12345678901234567890 2468013579
30469303170220713416717378310
--}