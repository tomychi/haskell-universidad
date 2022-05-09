showTree :: (Show a) => Tree a -> String
showTree Nil = "nil"
showTree (Node l n r) = "< " ++ show n ++ " " ++ showTree l ++ " | " ++ showTree r ++ ">"

data Tree a = Nil | Node (Tree a) a (Tree a)
  deriving (Show)


-- instance Show Tree a where
--   show Nil = "nil"
--   show a = showTree (Tree a) 
{-
representacion grafica
       3 root
    10  nil nil
nil  nil

Nodo (Nodo ( Nodo Nil 10 Nil) 3 Nil
-}

size :: Tree a -> Int
size Nil = 0
size (Node hi r hd) = 1 + size hi + size hd

sumanodos ::Tree Int -> Int
sumanodos Nil = 0
sumanodos (Node h1 n hd) = n + (sumanodos h1) + (sumanodos hd)  


data SIntExp = Cte Int | Sum SIntExp SIntExp | Mul SIntExp SIntExp deriving Show

{-

  Cte 5
  sum Cte 5 Cte 5  
  mul Cte 7 Cte 0  
  mul (sum (Cte 5 Cte 10)) Cte 0  

  4 3 6

  d0 + (d1 ∗ d2)
  Sum((Cte 4) (Mul (Cte 3) (Cte 6)))
  
   




-} 



