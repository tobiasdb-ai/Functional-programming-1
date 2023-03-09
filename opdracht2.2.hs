module Opdracht2Point2 where

-- p = 113
-- q = 499

-- Code from opdracht2.1a.hs
euclid :: Integer -> Integer -> Integer
euclid x y =
    if y `rem` x == 0 then x else euclid (y `rem` x) x

m :: Integer -> Integer -> Integer
m p q = p * q

-- m = 50737

eulersTotient :: Integer -> Integer -> Integer
eulersTotient p q = (p - 1) * (q - 1)

-- eulersTotient = 50176

e :: Integer -> Integer -> Integer
e p q = maximum [e|e<-[1..(eulersTotient p q)-1], euclid e (eulersTotient p q) == 1]

-- e = 2245

-- d :: Integer -> Integer -> Integer
-- d e eulersTotient = [dPossiblity|dPossiblity<-[1..100000], e * dPossiblity == (1 `mod` eulersTotient)]
d e eulersTotient = [d|d<-[1..100000], (((d*e) - 1) `div` eulersTotient) `mod` 0]


-- a ­≅ b `mod` c
-- congruency :: Integer -> Integer -> Integer -> Bool
congruency a b c = ((a - b) / c) `mod` 0


