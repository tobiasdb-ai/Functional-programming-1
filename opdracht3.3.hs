module Opdracht3Point3 where

import Data.List
import GHC.Arr (fill)

poss =  [(a,b,c,d,e)|a<-[1..6],b<-[1..6],c<-[1..6],d<-[1..6],e<-[1..6]]




-- q = 

--     True if sort 





-- sort
-- apply length

-- q x = filter (`length` > 1) (sort x)
q x = zip (map length (group (sort x))) (nub ((sort x))) -- results in [(no. of indices, eyes)]


-- poker = 
-- fourOfAKind =
-- threeOfAKind =
-- gullHouse = 
-- twoPair = 
-- onePair = 
-- straight = 
-- bust = 



