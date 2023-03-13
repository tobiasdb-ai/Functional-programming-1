module Opdracht3Point1b where

-- integreer :: (Double -> Double) -> Double -> Double -> Double -> Double
-- integreer f a b p = sum []
-- integreer f a b p = 
--     let d = (b-a)/p
--     in d

-- integreer f a b p =
--     let d = (b-a)/p 
--     in [a+(q*d)-0.5*d|q<-[1..p]]

integreerx f a b p =
    let d = (b-a)/p 
    in [a+(q*d)-0.5*d|q<-[1..p]]

-- integreer f a b p =
--     let d = (b-a)/p 
--     in [f (a+(q*d)-0.5*d)|q<-[1..p]]

-- integreer f a b p =
--     let d = (b-a)/p 
--     in sum $zipWith (*) [a+(q*d)-0.5*d|q<-[1..p]] [f (a+(q*d)-0.5*d)|q<-[1..p]]

integreer f a b p =
    let d = (b-a)/p 
    in [f (a+(q*d)-0.5*d)|q<-[1..p]]

g :: Double -> Double
g x = x +2

-- hint 1: https://nl.wikipedia.org/wiki/Riemannintegratie
-- hint 2: p = 0.0001

