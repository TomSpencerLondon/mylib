module ReverseSpec where

import Test.Hspec
import Test.Hspec.QuickCheck
import Reverse

spec :: Spec
spec = do
  describe "myReverse" $ do
    it "handles empty lists" $ myReverse [] `shouldBe` ([] :: [Int])
    it "reverses hello" $ myReverse "hello" `shouldBe` "olleh"

  describe "betterReverse" $ do
    prop "behaves the same as myReverse" $ \list ->
      betterReverse list `shouldBe` myReverse (list :: [Int])