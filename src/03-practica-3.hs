-- practica 3
{-
Defina una funcion que, dadas dos listas ys y xs de naturales ordenadas,
retorne el merge de estas listas, es decir, la lista ordenada compuesta por los
elementos de ys xs
-}
{-# OPTIONS_GHC -Wno-incomplete-patterns #-}

listMerge :: [Int] -> [Int] -> [Int]
listMerge (x : xs) [] = x : xs
listMerge [] (y : ys) = y : ys
listMerge [] [] = []
listMerge (x : xs) (y : ys)
  | x <= y = x : listMerge xs (y : ys)
  | otherwise = y : listMerge (x : xs) ys

-- Defina una funcion que, dada una lista de naturales, la ordene.

ordLista :: [Int] -> [Int]
ordLista [] = []
ordLista [x] = [x]
ordLista (x : xs) = ordLista [m | m <- xs, m <= x] ++ [x] ++ ordLista [y | y <- xs, y > x]

--Defina una funcion que, recursivamente y solo utilizando adicion y multiplicacion, calcule, dado un natural n, el n ́umero 2^n

pow :: Int -> Int
pow 0 = 1
pow 1 = 2
pow n = 2 * pow (n -1)

-- Defina una funcion que, dado un n ́umero natural n, retorne su representacion binaria como secuencia de bits.
aBits :: Int -> Int
aBits n
  | n < 2 = n
  | otherwise = mod n 2 + aBits (div n 2) * 10

-- Defina una funcion que, dado un numero natural n en su representacion binaria, decida si n es par o no.

esPar :: Int -> Bool
esPar n
  | last (show n) == '0' = True
  | last (show n) == '1' = False
  | otherwise = False

--Escriba una funcion que, dado un n ́umero natural, decida si el mismo es un cuadrado perfecto o no.

esCuadrado :: Float -> Bool
esCuadrado 0 = False
esCuadrado m
  | last (show (sqrt m)) == '0' = True
  | otherwise = False

-- otra version SIN float
cuadraPerfe :: Int -> Bool
cuadraPerfe n
  | potencia 0 n == 0 = False
  | otherwise = True

profeCuadrado :: Integer -> Bool
profeCuadrado x = y ^ 2 == x
  where
    y = round (sqrt (fromInteger x))

cuadradoPorComprension :: Int -> Bool
cuadradoPorComprension n = [x | x <- [0 .. n], x * x == n] /= []

-- funcion que me busca la raiz cuadrada de un numero (sin usar sqrt) si no es exacta devuelve 0
-- c = constante a burcarle la potencia,  b = base a buscar
potencia :: Int -> Int -> Int
potencia b c
  | b ^ 2 < c = potencia (b + 1) c
  | b ^ 2 == c = b
  | otherwise = 0

--Definir la funcion repetidos de forma tal que dado un elemento z y un entero n; z aparece n veces.

repetir :: a -> Int -> [a]
repetir z 0 = []
repetir z 1 = [z]
repetir z n = z : repetir z (n -1)

{-
Definir la funcion nelem tal que nelem xs n es elemento n–esimo de xs,
empezando a numerar desde el 0. Por ejemplo,
nelem [1,3,2,4,9,7] 3 → 4
-}

-- data Maybe  a = Nothing | Just a

nelem :: [Int] -> Int -> Maybe Int
nelem [] n = Nothing
nelem (x : xs) n
  | length (x : xs) <= n = Nothing
  | n == 0 = Just x
  | n > 0 = nelem xs (n -1)
  | n < 0 = Nothing
