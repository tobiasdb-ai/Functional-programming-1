module Opdracht1Point5b where

import Data.Bits
-- https://hackage.haskell.org/package/base-4.17.0.0/docs/Data-Bits.html

fastpow :: Integer -> Integer -> Integer
fastpow x 0 = 1
fastpow 0 p = 0
fastpow x p = 
