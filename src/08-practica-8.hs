-- Ejercicio 1. Definir la funci ́on nand a b = not (a && b) en Haskell sin utilizar not y &&.
nand :: Bool -> Bool -> Bool
nand True True = False
nand _ _ = True

{-
Ejercicio 2. Definir en Haskell la funcion maj :: Bool => Bool => Bool => Bool
==retorna True sii al menos 2 argumentos son True
-}

maj :: Bool -> Bool -> Bool -> Bool
maj a b c = length (filter (== True) [a, b, c]) >= 2

{-

Ejercicio 3. En Haskell un predicado sobre un tipo A es una funcion p :: A => Bool,
por ejemplo:
even :: Int => Bool
even x = x ‘mod‘ 2 == 0
Se puede pensar como un predicado sobre numeros cuya variable libre es x.
Ademas en Haskell tenemos las siguientes funciones:
and :: [ Bool ] => Bool
== retorna True sii todos los elementos son True
or :: [ Bool ] => Bool
== retorna True sii al menos un elemento es True
Con estos dos operadores y listas por comprension podemos escribir una
version ejecutable de los cuantificadores en Haskell. Por ejemplo el siguiente
cuantificador:

(∀i : 0 ≤ i < #xs] : even xs.i)

Puede escribirse literalmente como:
and [ even xs !! i | i <= [ 0 . . ( length xs ) - 1]]
Pero en Haskell lo mas comun es escribirlo de la siguiente forma:
and [ even x | x <= xs ]
Utilizar estas ideas para escribir los siguientes cuantificadores:
   (∃i : 0 ≤ i < ]xs : p xs.i)
   (∀i : 0 ≤ i < ]xs : p xs.i)
Para un predicado p dado.

-}

par :: Int -> Bool
par x = mod x 2 == 0

todosParesLiteral :: [Int] -> Bool
todosParesLiteral [] = False
todosParesLiteral xs = and [par (xs !! i) | i <- [0 .. length xs -1]]

-- (∀i : 0 ≤ i < #xs] : even xs.i)
todosPares :: [Int] -> Bool
todosPares [] = False
todosPares xs = and [par x | x <- xs]

-- (∃i : 0 ≤ i < #xs] : p xs.i)

-- (∀i : 0 ≤ i < #xs] : p xs.i)

todos :: [Int] -> [a] -> (Int -> [a] -> Bool) -> Bool
todos is xs p = and ys
  where
    ys = [p i xs | i <- is]

existe :: [Int] -> [a] -> (Int -> [a] -> Bool) -> Bool
existe is xs p = or ys
  where
    ys = [p i xs | i <- is]

{-
Ejercicio 4. Utilizando las ideas asociadas a listas por comprension, y las
funciones sum, product, y length, escribir los cuantificadores de sumatoria, pro-
ductoria y contatoria para ejemplos concretos.
-}
sumatoria :: [Int] -> (Int -> Bool) -> Int
sumatoria xs f = sum [x | x <- xs, f x]

productoria :: [Int] -> (Int -> Bool) -> Int
productoria xs f = product [x | x <- xs, f x]

contatoria :: [Int] -> (Int -> Bool) -> Int
contatoria xs f = length [x | x <- xs, f x]
