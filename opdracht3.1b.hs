module Opdracht3Point1b where

-- Bron: https://en.wikipedia.org/wiki/Riemann_sum

-- hint 1: https://en.wikipedia.org/wiki/Riemann_sum
-- hint 2: p = 0.0001

-- xis return all xi values that correspond with a, b and p

xis :: Double -> Double -> Double -> [Double]
xis a b p = [a+((b-a)*p*i)|i<-[0..(1/p)-1]]

integreer :: (Double -> Double) -> Double -> Double -> Double -> Double
integreer f a b p =
    let dxi = (b-a)*p
    in sum [(f xi) * dxi|xi<-(xis a b p)]

{--
    ghci> g x = x*x + 4            
    ghci> integreer g 2 3 0.0001
    10.333083335000017
    ghci>
--}

