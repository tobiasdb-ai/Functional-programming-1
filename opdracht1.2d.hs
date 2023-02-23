module Opdracht1Point2d where

diceIsModn :: Integer -> [(Integer, Integer, Integer)]
diceIsModn n = [(x,y,z)|x<-[1..6],y<-[1..6],z<-[1..6],(x+y+z) `mod` n == 0] 

{--
GETEST✅
Input 17 
[(5,6,6),(6,5,6),(6,6,5)]
--}