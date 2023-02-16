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



russianPeasant :: (Integral a, Bits a) => a -> a -> a
russianPeasant a b = go a b 0
  where
    go a b acc
      | a == 0 = acc
      | odd a = go (shiftR a 1) (shiftL b 1) (acc + b)
      | otherwise = go (shiftR a 1) (shiftL b 1) acc



{--
The go function in the russianPeasant implementation is a recursive helper function that performs the actual Russian Peasant multiplication.

The go function takes three arguments:

a: the first number to be multiplied.
b: the second number to be multiplied.
acc: the accumulated product of a and b so far.
The function uses the following algorithm to compute the product of a and b:

If a is 0, return acc. This is the base case of the recursion.
If a is odd (i.e., the least significant bit of a is 1), add b to acc, and then halve a and double b. This is equivalent to shifting a one bit to the right and shifting b one bit to the left, and adding b to acc.
If a is even, halve a and double b, and return acc unchanged. This is equivalent to shifting a one bit to the right and shifting b one bit to the left.
The function keeps recursively calling itself until a becomes 0, which is the base case of the recursion. At that point, it returns the accumulated product acc.

The go function is tail-recursive, which means that it can be optimized by the Haskell compiler to use constant stack space, even for large inputs.--}