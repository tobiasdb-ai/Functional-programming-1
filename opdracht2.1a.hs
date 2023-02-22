module Opdracht2Point1a where

import Data.List ( nub, (\\) )
euclid :: Integer -> Integer -> Integer
euclid x y = 
    let list = [z|z<-[1..x], x `mod` z == 0]++[z|z<-[1..y], y `mod` z == 0]
    in maximum ((list) \\ (nub list))



