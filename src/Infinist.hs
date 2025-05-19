module Infinist where

ones :: [Integer]
ones = 1 : ones

nat :: [Integer]
nat = asc 1
  where
    asc n = n : asc (n + 1)

even :: [Integer]
even = map (* 2) nat

nList :: Integer -> [Integer]
nList n = map (* n) nat

prime :: [Integer]
prime = asc 2
  where
    asc n = n : filter isPrime (asc (n + 1))
    isPrime n = all (\x -> n `mod` x /= 0) [2 .. floor (sqrt (fromIntegral n))]

-- | Exercise 1
data Tree a = Leaf a | Node (Tree a) a (Tree a)
  deriving (Show, Eq)

myTree :: Tree (Integer, Integer)
myTree = myTreeAux (0, 0)
  where
    myTreeAux (x, y) = Node (myTreeAux (x + 1, y)) (x, y) (myTreeAux (x, y + 1))

newtype Color = Color (Integer, Integer, Integer)
  deriving (Show, Eq)

fibs :: [Integer]
fibs = 0 : 1 : zipWith (+) fibs (tail fibs)

type SomeType = Either Integer String
