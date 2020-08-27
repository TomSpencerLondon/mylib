{-# LANGUAGE NoImplicitPrelude #-}
module Reverse
  ( myReverse,
  betterReverse
  ) where
import RIO

myReverse :: [a] -> [a]
myReverse [] = []
myReverse (x:xs) = myReverse xs ++ [x]


betterReverse :: [a] -> [a]
betterReverse =
    loop []
  where
    loop res [] = res
    loop res (x:xs) = loop (x:res) xs