module Opdracht2Point1b where

egcd :: Integer -> Integer -> (Integer,Integer,Integer)
egcd 0 b = (b, 0 ,1)
egcd a b =
    let (g, s, t) = egcd (b `mod` a) a
    in (g, t - (b `div` a) * s, s)

