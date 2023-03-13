module Opdracht2Point2 where
import Control.Arrow (Arrow(first))
import System.Win32 (RegInfoKey(sec_len))

p = 7
q = 13

-- Begin Code from opdracht2.1a.hs

euclid :: Integer -> Integer -> Integer
euclid x y =
    if y `rem` x == 0 then x else euclid (y `rem` x) x

-- End Code from opdracht2.1a.hs

m :: Integer -> Integer -> Integer
m p q = p * q

-- m = 50737

eulersTotient :: Integer -> Integer -> Integer
eulersTotient p q = (p - 1) * (q - 1)

-- eulersTotient = 50176

e :: Integer -> Integer -> Integer
-- e :: Integer -> Integer -> [Integer]
e p q =  [possibleE|possibleE<-[1..eulersTotient p q -1], euclid possibleE (eulersTotient p q) == 1] !! 1

-- e = 55775

-- `In order for the congruence relation a ≡ b (mod n) to hold, n must divide a - b`

-- a ­≅ b `mod` c
-- congruency :: Integer -> Integer -> Integer -> Bool
congruency :: Integral a => a -> a -> a -> Bool
congruency a b c = rem (a - b) c == 0

-- d :: Integer -> Integer -> Integer
d e eulersTotient = [dPossiblity|dPossiblity<-[1..100000], congruency (dPossiblity*e) 1 eulersTotient]
-- d e eulersTotient = [d|d<-[1..100000], (((d*e) - 1) `div` eulersTotient) `mod` 0]





