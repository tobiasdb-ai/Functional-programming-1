module Opdracht1Point2d where

allDicePossibilitiesSumEqual :: Integer -> [(Integer, Integer, Integer)]
allDicePossibilitiesSumEqual n = [(x,y,z)|x<-[1..6],y<-[1..6],z<-[1..6],(x+y+z) `mod` n == 0] 


-- allDicePossibilitiesSumEqual5
