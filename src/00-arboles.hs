showTree :: (Show a) => Tree a -> String
showTree Nil = "nil"
showTree (Node l n r) = "< " ++ show n ++ " " ++ showTree l ++ " | " ++ showTree r ++ ">"

data Tree a = Nil | Node (Tree a) a (Tree a)
  deriving (Show)

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
