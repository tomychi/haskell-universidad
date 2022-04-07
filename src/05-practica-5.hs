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

-- # Practica 5
-- ########################################################################### --

-- 1. Generar una lista infinita de unos.
-- [x | x <- [1 ,1,1...], True]

inf1 :: [Int]
inf1 = 1 : inf1

-- 2.Generar una lista infinita de naturales comenzando desde un n ́umero dado.
--  [x | x <- [n..], True]

infDesde :: Int -> [Int]
infDesde x = x : infDesde (x + 1)

---
-- 3.Generar una lista con los primeros n naturales.
nPrimeros :: Int -> [Int]
nPrimeros n = take n (infDesde 0)

-- 4. Retornar los primeros 5 elementos de una lista infinita de enteros positivos.
hasta5 :: [Int]
hasta5 = take 5 (infDesde 0)

-- ########################################################################### --

-- Utilizando funciones de alto orden resolver:
-- 5. Dada una lista de enteros, retornar sus cuadrados.
suCuadradoMap :: [Int] -> [Int]
suCuadradoMap [] = []
suCuadradoMap (x : xs) = map sq (x : xs)
  where
    sq x = x * x

-- 6. Dado un entero positivo, retornar sus divisores.
suDivisoresFilter :: Int -> [Int]
suDivisoresFilter 0 = []
suDivisoresFilter 1 = [1]
suDivisoresFilter n = filter (divs n) [1 .. n]

-- 7. Dada una lista de naturales, obtener la lista que contenga solo los numeros primos de la lista original.
-- Inicio Funciones Auxiliares
divs :: Int -> Int -> Bool
divs x y = mod x y == 0

-- lista divisores de un numero
listaDiv :: Int -> Int -> [Int]
listaDiv x 1 = [1]
listaDiv x n = if divs x n then n : listaDiv x (n -1) else listaDiv x (n -1)

-- devuelve True si es primo, False NO primo
primos :: Int -> Bool
primos 0 = False
primos 1 = False
primos n = length (listaDiv n n) == 2

-- fin de las funciones Auxiliares
primosFilter :: [Int] -> [Int]
primosFilter [] = []
primosFilter xs = filter primos xs

-- 8. Dada una lista de naturales, retornar la suma de los cuadrados de la lista.
sumaCuadradosMap :: [Int] -> Int
sumaCuadradosMap [] = 0
sumaCuadradosMap xs = sum (suCuadradoMap xs)

-- 9. Dada una lista de naturales, retornar la lista con sus sucesores.
sucesoresMap :: [Int] -> [Int]
sucesoresMap [] = []
sucesoresMap xs = map suc xs
  where
    suc x = x + 1

-- 10. Dada una lista de enteros, sumar todos sus elementos.
sumarListaFoldr :: [Int] -> Int
sumarListaFoldr [] = 0
sumarListaFoldr xs = foldr (+) 0 xs

-- 11. Definir el factorial usando fold.

factorialFoldr :: Int -> Int
factorialFoldr n = foldr (*) 1 [1 .. n]

-- ########################################################################### --

-- Utilizando listas por comprension resolver:
-- compre = comprension
-- 12. Dada una lista de enteros, retornar sus sucesores.
sucesoresCompre :: [Int] -> [Int]
sucesoresCompre [] = []
sucesoresCompre xs = [x + 1 | x <- xs]

-- 13. Dada una lista de naturales, retornar sus cuadrados.

suCuadradoCompre :: [Int] -> [Int]
suCuadradoCompre [] = []
suCuadradoCompre xs = [x ^ 2 | x <- xs]

-- 14. Dada una lista de enteros, retornar los elementos pares que sean mayores a 10.
paresMayor10 :: [Int] -> [Int]
paresMayor10 [] = []
paresMayor10 xs = [x | x <- xs, even x && x > 10]

-- 15. Dado un entero, retornar sus divisores.
suDivisoresCompre :: Int -> [Int]
suDivisoresCompre 0 = []
suDivisoresCompre n = [x | x <- [1 .. n], mod n x == 0]

-- 16. Dado un natural n, retornar los numeros primos comprendidos entre 2 y n.
primosCompre :: Int -> [Int]
primosCompre 0 = []
primosCompre n = [x | x <- [2 .. n], primos x]

-- 17. Dadas dos listas de naturales, retornar su producto cartesiano.
producCartesiano :: [Int] -> [Int] -> [Int]
producCartesiano [] [] = []
producCartesiano xs ys = [x * y | x <- xs, y <- ys]

-- 18. Definir la lista infinita de los numeros pares.
paresInf :: [Int]
paresInf = [x | x <- [0, 2 ..]]
