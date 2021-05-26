-- Prática 02 de Haskell
-- Nome: Fernando Kalikosque Laydner Júnior

import Data.Char

isFever :: Float -> Bool
isFever x = x > 37.8

int2Float :: Int -> Float
int2Float x = fromIntegral x :: Float

isbigCircle :: Float -> Int -> Bool
isbigCircle y x = (int2Float x)^2*pi > y

--1
comFebre :: [Float] -> [Float]
comFebre = filter isFever

--2
comFebre' :: [Float] -> [Float]
comFebre' lista = filter (\x -> x > 37.8) lista

--3
itemize :: [String] -> [String]
itemize lista = map (\x -> "<li>" ++ x ++ "</li>") lista

--4
bigCircles :: Float -> [Int] -> [Int]
bigCircles y list = filter (isbigCircle y) list

--5
quarentena :: [(String,Float)] -> [(String,Float)]
quarentena lista = filter ((isFever).snd) lista

--6
idadesEm :: [Int] -> Int -> [Int]
idadesEm lista ano = map (\x -> ano - x) lista

--7
changeNames :: [String] -> [String]
changeNames lista = map (\x -> if isUpper (head x) then "Super " ++ x else x)lista

--8
onlyShorts :: [String] -> [String]
onlyShorts lista = filter (\x -> length x <= 5) lista
