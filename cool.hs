module Main where

x :: String
x = "cats"

factorial :: Int -> Int
factorial 0 = 1
factorial n = n * factorial (n-1)

-- Call functions using f x (not f(x))

len :: [a] -> Int
len [] = 0
len [x] = 1
len (x:xs) = 1 + len xs

myMap :: (a -> b) -> [a] -> [b]
myMap f [] = []
myMap f [x] = [f x]
myMap f (x:xs) = f x : myMap f xs -- Cons

data TrafficLight = Red | Yellow | Green

instance Show TrafficLight where
  show Red = "ERRRRRR"
  show Yellow = "Proceed with caution"
  show Green = "VRRRROOOOOM"

instance Eq TrafficLight where
  Red == Red = True
  Yellow == Yellow = True
  Green == Green = True
  _ == _ = False

red :: TrafficLight
red = Red

data Tree a = Empty | Branch a (Tree a) (Tree a) deriving (Show, Eq)

exampleTree :: Tree Int
exampleTree = Branch 10 (Branch 1 Empty Empty) (Branch 2 Empty Empty)

treeMap :: (a -> b) -> Tree a -> Tree b
treeMap f Empty = Empty
treeMap f (Branch a l r) = Branch (f a) (treeMap f l) (treeMap f r)
