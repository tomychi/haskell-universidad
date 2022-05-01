data Nat = Zero | Succ Nat
  deriving (Eq)

instance Show Nat where
  show Zero = "0"
  show  n = show (natToInt n)

natToInt :: Nat -> Int
natToInt Zero = 0
natToInt (Succ x) = 1 + natToInt x

suma :: Nat -> Nat -> Nat
suma Zero n = n
suma (Succ a) n = Succ (suma a n) 

multi :: Nat -> Nat -> Nat
multi Zero n = Zero
multi  (Succ n) a = suma(multi n a) a

fact :: Nat -> Nat
fact Zero = (Succ Zero)
fact (Succ n) = (Succ n) `multi` (fact n)

prodCartesiano :: [a] -> [b] -> [(a,b)]
prodCartesiano xs ys = [(x,y) | x <- xs, y <- ys  ]

split2 :: [a] -> [([a], [a])]
split2 [] = [([],[])]
split2 [x] = ([],[x]) : [([x],[])]
split2 (x:xs) = ([], x:xs) : [ (x:as,bs) | (as,bs) <- split2 xs ]


split3 :: [a] -> [([a],[a],[a])]
split3 [] = [([],[],[])]
split3 [x] = [([],[x],[])]
split3 [x,y] = ([], [x], [y]): ([], [x,y], []) : [([x],[y], [])]
split3 (x:xs) = ([],x:xs,[]) : [ (x:as,bs,cs) | (as,bs,cs) <- split3 xs ]

