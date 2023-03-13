module Opdracht2Point4 where

import Data.Char

rsaencrypt :: (Integer, Integer) -> Integer -> Integer
rsaencrypt (e, m) x = (x ^ e) `mod` m

rsadecrypt :: (Integer, Integer) -> Integer -> Integer
rsadecrypt (d, m) x = (x ^ d) `mod` m

-- ghci> rsaencrypt (5, 91) 75
-- 17
-- ghci> rsadecrypt (29, 91) 17
-- 75

encryptchar :: (Integer, Integer) -> Char -> Integer
encryptchar (e, m) x = rsaencrypt (e, m) (toInteger ( ord x))

decryptchar :: (Integer, Integer) -> Integer -> Char
decryptchar (d, m) x = chr (fromInteger (rsadecrypt (d, m) x))

-- ghci> encryptchar (5, 91) 'K'
-- 17
-- ghci> decryptchar (29, 91) 17 
-- 'K'
