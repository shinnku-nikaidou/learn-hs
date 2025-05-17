module QCheck (hello, prop) where

import Test.QuickCheck

prop :: [a] -> Property
prop xs =
    not (null xs) ==>
    length (tail xs) == (length xs - 1)

hello :: IO ()
hello = putStrLn "Hello, Haskell!"
