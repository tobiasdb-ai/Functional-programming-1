module Opdracht2Point2 where

-- Begin Code from opdracht2.1a.hs
euclid :: Integer -> Integer -> Integer
euclid x y =
    if y `rem` x == 0 then x else euclid (y `rem` x) x
-- End Code from opdracht2.1a.hs

m :: Integer -> Integer -> Integer
m p q = p * q

eulersTotient :: Integer -> Integer -> Integer
eulersTotient p q = (p - 1) * (q - 1)

e :: Integer -> Integer -> Integer
e p q =  [possibleE|possibleE<-[1..eulersTotient p q -1], euclid possibleE (eulersTotient p q) == 1] !! 1
-- the `!! 1` suffix means that the second from the list is returned

-- `In order for the congruence relation a ≡ b (mod n) to hold, n must divide a - b`
congruency :: Integer -> Integer -> Integer -> Bool
congruency a b n = rem (a - b) n == 0

-- d :: Integer -> Integer -> Integer
d e eulersTotient = [dPossiblity|dPossiblity<-[1..100000], congruency (dPossiblity*e) 1 eulersTotient] !! 1
-- the `!! 1` suffix means that the second from the list is returned





