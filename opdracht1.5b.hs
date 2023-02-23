module Opdracht1Point5b where

import Data.Bits
-- https://hackage.haskell.org/package/base-4.17.0.0/docs/Data-Bits.html

fastpow :: Integer -> Integer -> Integer
fastpow x p
  | p == 0 = 1
  | even p = c
  | otherwise = x * c
  where c = fastpow (x * x) (shiftR p 1)
