module Opdracht3Point2 where

import Data.List


-- dubbelen :: [a] -> [a]
dubbelen :: Eq a => [a] -> [a]
dubbelen s = nub (s \\ (nub s))

-- Only works with second typeclass

{--
    ghci> dubbelen "aabbbcdeeeef"
    "abe"
--}
