-- retorna el primer elemento de una lista.

prim :: [a] -> a
prim [] = undefined
prim (x : xs) = x

-- retorna toda la lista menos el primer elemento.
fin :: [a] -> [a]
fin [] = undefined
fin (_ : xs) = xs

--retorna el  ́ultimo elemento de la lista.
ult :: [a] -> a
ult [] = undefined
ult [x] = x
ult (x : xs) = ult xs

-- retorna toda la lista menos el ultimo elemento.
initt :: [a] -> [a]
initt [] = []
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

-- Defina una funcion que dada una lista, retorne la reversa de la misma.

reversa :: [a] -> [a]
reversa [] = []
reversa (x : xs) = reversa xs ++ [x]

-- Defina una funcion que dadas dos listas, decida si las listas son iguales.
--  Eq a  (que el tipo a tenga la igualdad implementada)
iguales :: Eq a => [a] -> [a] -> Bool
iguales [] [] = True
iguales [] (_ : _) = False
iguales (_ : _) [] = False
iguales (x : xs) (y : ys) = x == y && iguales xs ys

-- Defina una funcion que dada una lista decida si es un palındromo o no.
palindromo :: Eq a => [a] -> Bool
-- ver si tiene un elemento
palindromo [] = False
palindromo [x] = False
palindromo (x : xs) = reversa (x : xs) == (x : xs)

-- retorna primos
divs :: Int -> Int -> Bool
divs x y = mod x y == 0

listaDiv :: Int -> Int -> [Int]
listaDiv x 1 = [1]
listaDiv x n = if divs x n then n : listaDiv x (n -1) else listaDiv x (n -1)

primos :: Int -> Bool
primos 0 = False
primos 1 = False
primos n = length (listaDiv n n) == 2

--Defina una funcion que dado un n ́umero natural n, retorne la lista de todos los n ́umeros naturales primos menores que n.

primosMenores :: Int -> [Int]
primosMenores 0 = []
primosMenores n = [x | x <- [1 .. n], primos x]
