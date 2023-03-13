module Opdracht2Point5 where

-- Begin Code from opdracht2.2hs

-- Begin Code from opdracht2.1a.hs
euclid :: Integer -> Integer -> Integer
euclid x y =
    if y `rem` x == 0 then x else euclid (y `rem` x) x
-- End Code from opdracht2.1a.hs

m :: Integer -> Integer -> Integer
m p q = p * q

eulersTotient :: Integer -> Integer -> Integer
eulersTotient p q = (p - 1) * (q - 1)

e :: Integer -> Integer -> Integer
e p q = [e|e<-[1..eulersTotient p q -1], euclid e (eulersTotient p q) == 1] !! 1
-- the `!! 1` suffix means that the second from the list is returned

-- `In order for the congruence relation a ≡ b (mod n) to hold, n must divide a - b`
congruency :: Integer -> Integer -> Integer -> Bool
congruency a b n = rem (a - b) n == 0

d :: Integer -> Integer -> Integer
d e eulersTotient = [d|d<-[1..100000], congruency (d*e) 1 eulersTotient] !! 1
-- the `!! 1` suffix means that the second from the list is returned

-- End Code from opdracht2.2.hs


-- Begin Code from opdracht2.4.hs

rsaencrypt :: (Integer, Integer) -> Integer -> Integer
rsaencrypt (e, m) x = (x ^ e) `mod` m

rsadecrypt :: (Integer, Integer) -> Integer -> Integer
rsadecrypt (d, m) x = (x ^ d) `mod` m

-- End Code from opdracht2.4.hs


pA = 19
qA = 23

pB = 17
qB = 103

mA = m pA qA
eA = e pA qA
dA = d eA (eulersTotient pA qA)

mB = m pB qB
eB = e pB qB
dB = d eB (eulersTotient pB qB)

message = 23

-- 1: Encrypt message with Alices private key
-- 2: Encrypt encrypted message with Bobs public key
-- Send message
-- 3: Decrypt encrypted message with Bobs private key
-- 4: Decrypt encrypted message with Alices private key

-- step1 = rsaencrypt (eA, mA) message
-- step2 = rsaencrypt (dB, mB) step1

-- step3 = rsadecrypt (eB, mB) step2
-- step4 = rsadecrypt (dA, mA) step3


{--
    ghci> rsaencrypt (dB, mB) (rsaencrypt (eA, mA) message)
    1134
    ghci> dA
    713
    ghci> mA
    437
    ghci> dB
    2285
    ghci> mB
    1751
    ghci> rsadecrypt (dA, mA) (rsadecrypt (eB, mB) 1134)
    ???

    Message cannot be decrypted without the private keys
--}
