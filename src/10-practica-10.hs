import           GHC.Base (maxInt)

-- Ejercicio 3. Especificar y derivar la siguiente funcion.
-- f xs dice si todos los elementos son iguales.
iguales :: Eq a => [a] -> Bool
iguales [] = True
iguales (x:xs) = elemIgual x xs

elemIgual :: Eq a => a -> [a] -> Bool
elemIgual y [] = True
elemIgual y (x:xs) = (x == y) && elemIgual y xs

-- Ejercicio 5. Sea m : [Num] → [Num] una funcion que devuelve el mınimo de una lista dada. Especificar y derivar m.
minimo :: [Int] -> Int
minimo [] = maxInt
minimo (x:xs) = x `min` minimo xs

{-
Ejercicio 6. Especificar y derivar una funci ́on que dada una lista determina si
existe un elemento en ella que sea igual a la suma del resto de los elementos de
la lista.
-}
igualasuma :: [Int] -> Bool
igualasuma xs = compx xs 0

compx :: [Int] -> Int -> Bool
compx [] n = False
compx (x:xs) n = x == (n + sum xs) || compx xs (x + n)

cantParImpar :: [Int] -> (Int, Int)
cantParImpar [] = (0, 0)
cantParImpar (x:xs)
  | even x = (1 + a, b)
  | otherwise = (a, b + 1)
  where
    (a, b) = cantParImpar xs

{-
ejercicio 7
P xs.ys = (∃as, bs :: ys = as + +xs + +bs),
que dadas dos listas determina si la primera es subsegmento de la segunda.
-}
subIgual :: (Eq a) => [a] -> [a] -> Bool
subIgual [] ys = True
subIgual xs [] = False
subIgual (x:xs) (y:ys) = y == x && subEqual xs ys || subIgual (x:xs) ys

subEqual :: (Eq a) => [a] -> [a] -> Bool
subEqual [] ys = True
subEqual xs [] = False
subEqual (x:xs) (y:ys) = y == x || subEqual xs ys

sumarigual :: Int -> [Int] -> Bool
sumarigual 0 [] = True
sumarigual n [] = False
sumarigual n (x:xs) = sum (x:xs) == n || sumarigual n xs

listMerge :: (Ord a) => [a] -> [a] -> [a]
listMerge xs [] = xs
listMerge [] ys = ys
listMerge (x:xs) (y:ys)
  | x <= y = x:listMerge xs (y:ys)
  | otherwise = y:listMerge (x:xs) ys

msort :: Ord a => [a] -> [a]
msort [] = []
msort [a] = [a]
msort xs = listMerge (msort (firstHalf xs)) (msort (secondHalf xs))
  where
    firstHalf xs = let n = length xs
                   in take (div n 2) xs

    secondHalf xs = let n = length xs
                    in drop (div n 2) xs

sumar :: Int -> [Int] -> Bool
sumar h []
  | h == 0 = True
  | otherwise = False
sumar h (x:xs) = sumar h xs || sumaSig h (x:xs)

sumaSig :: Int -> [Int] -> Bool
sumaSig m []
  | m == 0 = True
  | otherwise = False
sumaSig m (x:xs) = m == 0 || sumaSig (m - x) xs






