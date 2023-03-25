module Opdracht3Point3 where

import Data.List

-- poss :: [()]
poss :: [(Integer, Integer, Integer, Integer, Integer)]
poss =  [(a,b,c,d,e)|a<-[1..6],b<-[1..6],c<-[1..6],d<-[1..6],e<-[1..6]]

con = [[1,2,3,4,5],[2,2,2,2,2],[3,3,3,3,5],[4,4,4,5,1],[4,4,4,3,3],[3,5,4,3,5],[1,2,2,3,4],[6,5,4,3,2],[6,5,4,3,1]]

-- phase1 :: Ord b => [b] -> [(Int, b)]
phase1 x = zip (map length (group (sort x))) (nub ((sort x))) -- results in [(no. of indices, eyes)]

-- equ x = if x == 1 then True else False

-- phase2 x = filter (\(p,_) -> p>1) (phase1 x)
phase2 x y = filter (\(p,_) -> p==y) (phase1 x)
-- phase3 x y = any (\(p,_) -> p==y) (phase1 x)

-- (\x -> phase3 x y) == (\x -> length (phase2 x y) == 1)

straightFilter x = if sort x == [1,2,3,4,5] || sort x == [2,3,4,5,6] then True else False


poker list = filter (\x -> length (phase2 x 5) == 1) list
fourOfAKind list = filter (\x -> length (phase2 x 4) == 1) list
threeOfAKind list = filter (\x -> length (phase2 x 3) == 1 && length (phase2 x 2) == 0) list
fullHouse list = filter (\x -> length (phase2 x 2) == 1 && length (phase2 x 3) == 1) list
twoPair list = filter (\x -> length (phase2 x 2) == 2) list
onePair list = filter (\x -> length (phase2 x 2) == 1 && length (phase2 x 3) == 0) list
straight list = filter straightFilter list
bust list = filter (\x -> length ((poker [x]) ++ (fourOfAKind [x]) ++ (threeOfAKind [x]) ++ (fullHouse [x]) ++ (twoPair [x]) ++ (onePair [x]) ++ (straight [x])) == 0) list


-- phase2 x = filter () (phase1 x)
