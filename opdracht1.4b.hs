module Opdracht1Point4b where

import Data.Bits
-- https://hackage.haskell.org/package/base-4.17.0.0/docs/Data-Bits.html
-- https://www.geeksforgeeks.org/russian-peasant-multiply-two-numbers-using-bitwise-operators/

-- fastmult :: Integer -> Integer -> Integer
-- fastmult x 1 = x
-- fastmult x y = fastmult (shiftL x 1) (shiftR y 1)

fastmult :: Integer -> Integer -> Integer
fastmult x 1 = x
fastmult x y = fastmult 5 y-1