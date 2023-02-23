module Opdracht1Point2a where
    
nulpuntena :: Double -> Double -> Double -> [Double]
nulpuntena a b c = [(-1 * b + sqrt(b^2 +(-4 * a * c))) / (2 * a),(-1 * b - sqrt(b^2 +(-4 * a * c))) / (2 * a)]

{--
GETEST✅
input 1 5 (-14)
output 2,-7
--}