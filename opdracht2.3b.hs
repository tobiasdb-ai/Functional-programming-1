module Opdracht2Point3b where

rsadecrypt :: (Integer, Integer) -> Integer -> Integer
rsadecrypt (d, m) x = (x ^ d) `mod` m