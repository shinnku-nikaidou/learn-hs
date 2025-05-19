module QCheck (hello, prop, rev) where

import Test.QuickCheck

prop :: [a] -> Property
prop xs =
  not (null xs) ==>
    length (tail xs) === (length xs - 1)

rev :: [a] -> [a]
rev xs = case xs of
  [] -> []
  (x : xs') -> rev xs' ++ [x]

hello :: IO ()
hello = putStrLn "Hello, Haskell!"
