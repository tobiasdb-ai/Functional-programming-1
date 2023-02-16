module Opdracht1Point2b where

nulpuntenb :: Double -> Double -> Double -> [Double]
nulpuntenb a b c
  | disc > 0 = [x1, x2]
  | disc == 0 = [x1]
  | otherwise = []
  where
    disc = b^2 - 4*a*c
    x1 = (-b + sqrt(disc)) / (2 * a)
    x2 = (-b - sqrt(disc)) / (2 * a)
