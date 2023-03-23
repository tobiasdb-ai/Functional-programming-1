module Opdracht3Point2 where

import Data.List

lengthGreaterThanOne x = if length x > 1 then True else False

-- dubbelen :: [a] -> [a]


dubbelen :: Ord a => [a] -> [a]
dubbelen s = (concat (filter lengthGreaterThanOne ((group (sort s)))))


-- zip s [1..]
-- ghci> concat (group (sort s))

-- (zip ((group (sort s))) (map (length) (group (sort s))))