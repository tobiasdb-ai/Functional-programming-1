module Opdracht2Point2 where

-- p = 113
-- q = 499

-- Code from opdracht2.1a.hs
import Data.List ( nub, (\\) )

euclid :: Integer -> Integer -> Integer
euclid x y = 
  let list = [z|z<-[1..x], x `mod` z == 0]++[z|z<-[1..y], y `mod` z == 0]
  in maximum ((list) \\ (nub list))


m :: Integer -> Integer -> Integer
m p q = p * q

eulersTotient :: Integer -> Integer -> Integer
eulersTotient p q = (p - 1) * (q - 1)

e :: Integer -> Integer -> Integer
e p q = maximum [e|e<-[1..(eulersTotient p q)-1], euclid e (eulersTotient p q) == 1]

-- gekozen voor e=2245

-- d :: Integer -> Integer -> Integer
d e eulersTotient = [dPossiblity|dPossiblity<-[1..(1 `mod` eulersTotient)], e * dPossiblity == (1 `mod` eulersTotient)]

