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

red :: TrafficLight
red = Red

