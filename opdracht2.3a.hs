module Opdracht2Point3a where

rsaencrypt :: (Integer, Integer) -> Integer -> Integer
rsaencrypt (e, m) x = (x ^ e) `mod` m