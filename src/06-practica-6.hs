-- Practica 6
-- intro

type Pos = (Int, Int)

-- vacia y conc (son constructores)
-- data Lista a = Vacia | Conc a Lista a
--    deriving (Show, Eq)
-- show para mostrar y Eq para igualdad

-- definir tu Show

-- instance Show(AB a)=> mostrarArbol AB a

--1. Definir el tipo Nat, visto en el te ́orico.
data Nat = Zero | Succ Nat
  deriving (Show)

-- 2. Definir la funcion natToInt : Nat → Int que dado un numero Nat retorna su entero correspondiente. Por ejemplo: natToInt (Suc(Suc Zero)) = 2.
natToInt :: Nat -> Int
natToInt Zero = 0
natToInt (Succ x) = 1 + natToInt x

--3. Definir la funcion intToNat : Int → Nat que dado un numero entero retorna su Nat correspondiente. Por ejemplo: intToNat 2 = (Suc(Suc Zero)).

intToNat :: Int -> Nat
intToNat 0 = Zero
intToNat x = Succ (intToNat (x -1))

-- 4. Definir la funcion suma Nat : Nat → Nat → Nat, la cual suma dos numeros Nat.
suma :: Nat -> Nat -> Nat
suma Zero n = n
suma (Succ a) n = Succ (suma a n)

-- 5. Definir los  ́arboles binarios.

-- Nodo = raiz  (constuctor) hijo izquierdo, hijo derecho
data Tree a = Nil | Node (Tree a) a (Tree a)
  deriving (Show)

{-
representacion grafica
       3 root
    10  nil nil
nil  nil

Nodo (Nodo ( Nodo Nil 10 Nil) 3 Nil
-}

-- ########### Definir las siguientes funciones sobre  ́arboles binarios: size y height
-- 6. La funcion size, que dado un  ́arbol retorna el numero de nodos del  ́arbol.
size :: Tree a -> Int
size Nil = 0
size (Node hi r hd) = 1 + size hi + size hd

-- r (es lo q esta adentro del nodo, no quiero sumarlo)

-- 7. La funcion height, que dado un  ́arbol retorna la altura del mismo.

height :: Tree a -> Int
height Nil = 0
height (Node hi r hd) = 1 + max (size hi) (size hd)