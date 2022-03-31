-- retorna el primer elemento de una lista.

prim :: [a] -> a
prim (x : xs) = x

-- retorna toda la lista menos el primer elemento.
fin :: [a] -> [a]
fin (_ : xs) = xs

--retorna el  ́ultimo elemento de la lista.
ult :: [a] -> a
ult [x] = x
ult (x : xs) = ult xs

-- retorna toda la lista menos el ultimo elemento.
initt :: [a] -> [a]
initt [x] = []
initt (x : xs) = x : initt xs

--Defina las siguientes operaciones sobre listas (vistas en el te ́orico): concate-nar, tomar, tirar y
conc :: [a] -> [a] -> [a]
conc [] [] = []
conc [] ys = ys
conc xs [] = xs
conc (x : xs) ys = x : conc xs ys

-- devuelve la lista de lo que indica int
tomar :: Int -> [a] -> [a]
tomar 0 xs = []
tomar n [] = []
tomar n (x : xs) = x : tomar (n -1) xs

-- devuelve una lista menos los Int primeros elementos
tirar :: Int -> [a] -> [a]
tirar 0 xs = xs
tirar n [] = []
tirar n (x : xs) = tirar (n -1) xs

-- agregar un elemento al final
agregar :: a -> [a] -> [a]
agregar a [] = [a]
agregar a (x : xs) = foldr (:) [a] xs

-- agregar a (x : xs) = x : agregar a xs

absoluto :: Int -> Int
absoluto n
  | n >= 0 = n
  | otherwise = - n

--Defina una funci ́on que dado un n ́umero natural, decida si el mismo es primo o no.

esPrimo :: Int -> Bool
esPrimo n = divisores n == 2

{-
Devuelve la cantidad de divisores para un número n entre 1 y n
-}
divisores :: Int -> Int
divisores n = divisores' n n

{-
Devuelve la cantidad de divisores para un número n entre 1 y k
-}
divisores' :: Int -> Int -> Int
divisores' n 1 = 1
divisores' n k
  | (n `mod` k) == 0 = 1 + divisores' n (k -1)
  | otherwise = divisores' n (k -1)

--Defina una funcion que dado un n ́umero natural n, retorne la lista de todos los n ́umeros naturales primos menores que n.

primosMenores :: Int -> [Int]
primosMenores 0 = []
primosMenores n = [x | x <- [1 .. n], esPrimo x]

-- Defina una funcion que dada una lista, retorne la reversa de la misma.

reversa :: [a] -> [a]
reversa [] = []
reversa (x : xs) = reversa xs ++ [x]

-- Defina una funcion que dadas dos listas, decida si las listas son iguales.

-- iguales :: Eq a => [a] -> [a] -> Bool
-- iguales [] [] = True

-- Defina una funcion que dada una lista decida si es un palındromo o no.
palindromo :: Eq a => [a] -> Bool
-- ver si tiene un elemento
palindromo (x : xs) = reversa (x : xs) == (x : xs)
