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