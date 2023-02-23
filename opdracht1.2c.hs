module Opdracht1Point2c where

diceIsMod5 :: [(Integer, Integer, Integer)]
diceIsMod5 = [(x,y,z)|x<-[1..6],y<-[1..6],z<-[1..6],(x+y+z) `mod` 5 == 0] 

