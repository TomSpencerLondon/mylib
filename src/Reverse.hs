{-# LANGUAGE NoImplicitPrelude #-}
module Reverse
  ( myReverse
  ) where
import RIO

myReverse :: [a] -> [a]
myReverse [] = []