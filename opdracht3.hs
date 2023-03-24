module Opdracht3 where

-- import Data.List for Opdracht 3.2
import Data.List

-- Opdracht 3.1a
differentieer :: (Double -> Double) -> Double -> Double -> Double
differentieer f p x = (f (x+p) - f x) / p

-- Opdracht 3.1b
xis :: Double -> Double -> Double -> [Double]
xis a b p = [a+((b-a)*p*i)|i<-[0..(1/p)-1]]
-- xis return all xi values that correspond with a, b and p

integreer :: (Double -> Double) -> Double -> Double -> Double -> Double
integreer f a b p =
    let dxi = (b-a)*p
    in sum [(f xi) * dxi|xi<-(xis a b p)]

-- Opdracht 3.2
dubbelen :: Eq a => [a] -> [a]
dubbelen s = nub (s \\ (nub s))

-- Opdracht 3.3