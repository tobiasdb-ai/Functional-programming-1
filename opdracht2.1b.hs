module Opdracht2Point1b where

-- egcd :: Integer -> Integer -> (Integer,Integer,Integer)
-- egcd 0 b = (b, 0 ,1)
-- egcd a b =
--     let (g, s, t) = egcd (b `mod` a) a
--     in (g, t - (b `div` a) * s, s)

-- egcd :: Integer -> Integer -> (Integer,Integer,Integer)
-- egcd 0 b = (b, 0 ,1)
-- egcd a b =
--     let (g, s, t) = egcd (b `mod` a) a,
--     q = (g, t - (b `div` a) * s, s)
--     in if q > 0 then 

-- -- aanpassing is `-` vervangen voor een `+`

-- p q > gcd, x, y
-- xp + yq = gcd(p, q)





egcd :: Integer -> Integer -> (Integer,Integer,Integer)
egcd 0 b = (b, 0 ,1)
egcd a b =
    let (g, s, t) = egcd (b `mod` a) a
    in (g, t - (b `div` a) * s, s)

test :: Integer -> Integer -> (Integer,Integer,Integer)
test a b = 
    let (g, s, t) = egcd a b
    in if s < 0 || t < 0 then (g, s+a*b, t+a*b) else (g, s, t)

