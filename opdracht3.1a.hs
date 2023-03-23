-- module Opdracht3Point1a where

differentieer :: (Double -> Double) -> Double -> Double -> Double
-- differentieer f p x = (f (x+p) - f x) / p
differentieer f p x = (f (x+p) - f x) / p

-- hint 1: https://nl.wikipedia.org/wiki/Differentiequoti%C3%ABnt
-- hint 2: p = 0.0001

{--
    ghci> g x = x*x + 4            
    ghci> differentieer g 0.0001 3 
    6.000100000012054
    ghci>
--}
