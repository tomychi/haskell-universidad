filterD :: (a -> Bool) -> [a] -> [a]
filterD p [] = []
filterD p (x : xs)
  | p x = x : filterD p xs
  | otherwise = filterD p xs

mapD :: (a -> b) -> [a] -> [b]
mapD f [] = []
mapD f (x : xs) = (f x) : mapD f xs

foldrR :: (a -> b -> b) -> b -> [a] -> b
foldrR op e [] = e
foldrR op e (x : xs) = x `op` foldrR op e xs

foldlL :: (a -> b -> b) -> b -> [a] -> b
foldlL op e [] = e
foldlL op e (x : xs) = foldlL op (x `op` e) xs

mul :: [Int] -> [Int] -> [Int]
mul xs ys = [x * y | x <- xs, y <- ys]

-- # Practica 5

-- 1.
-- [x | x <- [1 ,1,1...], True]

inf1 :: [Int]
inf1 = 1 : inf1

-- 2.
--  [x | x <- [n..], True]

infDesde :: Int -> [Int]
infDesde x = x : infDesde (x + 1)

---
-- 3.
nPrimeros :: Int -> [Int]
nPrimeros n = take n (infDesde 0)

-- 4.
hasta5 :: [Int]
hasta5 = take 5 (infDesde 0)

-- 5.
suCuadrado :: [Int] -> [Int]
suCuadrado [] = []
suCuadrado (x : xs) = map sq (x : xs)
  where
    sq x = x * x

-- 6
suDivisores :: Int -> [Int]
suDivisores 0 = []
suDivisores 1 = [1]
suDivisores n = filter (divs n) [1 .. n]

-- suDivisores n = [x | x <- [1 .. n], mod n x == 0]

-- 7
-- Inicio Funciones Auxiliares
divs :: Int -> Int -> Bool
divs x y = mod x y == 0

listaDiv :: Int -> Int -> [Int]
listaDiv x 1 = [1]
listaDiv x n = if divs x n then n : listaDiv x (n -1) else listaDiv x (n -1)

primos :: Int -> Bool
primos 0 = False
primos 1 = False
primos n = length (listaDiv n n) == 2

-- fin de las funciones Auxiliares
obtenerPrimos :: [Int] -> [Int]
obtenerPrimos [] = []
obtenerPrimos xs = filter primos xs

-- 8
sumaCuadrados :: [Int] -> Int
sumaCuadrados [] = 0
sumaCuadrados xs = sum (suCuadrado xs)

-- 9

sucesores :: [Int] -> [Int]
sucesores [] = []
sucesores xs = map suc xs
  where
    suc x = x + 1

sumarLista :: [Int] -> Int
sumarLista [] = 0
sumarLista xs = foldr (+) 0 xs
