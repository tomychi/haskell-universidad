imp :: Bool -> Bool -> Bool
imp True False = False
imp _ _ = True

inf :: Int
inf = inf + 1

{-
    imp (inf==inf)(inf==inf) 
    
    # forma aplicativa
    def inf 
    imp (inf==inf)( (inf + 1) ==inf) 
    def inf
    imp (inf==inf)( ((inf + 1) + 1) ==inf) 
    def inf
    imp (inf==inf)( (((inf + 1) + 1) + 1) ==inf) 
    ... no termina

    # forma normal 
    def inf 
    imp ( (inf + 1) == inf) (inf == inf)
    def inf 
    imp ( (inf + 1) + 1 )) == inf) (inf == inf)
    def inf 
    imp ( ((inf + 1) + 1) + 1 )) == inf) (inf == inf)
    ... no termina de ciclar nunca

    =====================================================================
    imp (inf==5) True

    # forma aplicativa
    def imp
    _  -> True
    def imp
    True

    

    # forma normal 
    def inf
    imp ( (1 + inf) == 5) True
    def inf
    imp ( (1 + (1 + inf)) == 5) True
    def inf
    imp ( (1 + (1 + (1 + inf))) == 5) True
    ... no termina de ciclar nunca


    =====================================================================
    imp False (inf==inf)
    # forma aplicativa 
    def inf
    imp False (inf + 1 == inf )
    def inf
    imp False ((inf + 1) + 1 == inf )
    def inf
    imp False (((inf + 1) + 1) + 1 == inf )
    ... no termina

    # forma normal
    def imp
    False -> (inf==inf)
    def imp
    True
-}
data Nat = Zero
         | Succ Nat
  deriving (Eq)

instance Show Nat where
  show = show . natToInt

natToInt :: Nat -> Int
natToInt Zero = 0
natToInt (Succ x) = 1 + natToInt x

suma :: Nat -> Nat -> Nat
suma Zero n = n
suma (Succ a) n = Succ (suma a n)

multi :: Nat -> Nat -> Nat
multi Zero n = Zero
multi (Succ a) n = suma (multi a n) n

listana :: [Nat] -> [Int]
listana [] = []
listana [Zero] = [0]
listana (x:xs) = natToInt x:listana xs

natm :: [Nat] -> [Nat]
natm [] = []
natm [Zero] = [Zero]
natm (x:xs) = Succ (Succ Zero) `multi` x:natm xs

ispar :: Nat -> Bool
ispar Zero = True
ispar (Succ Zero) = False
ispar (Succ (Succ n)) = ispar n

flatten :: [[a]] -> [a]
flatten [] = []
flatten [x] = x
flatten (x:xs) = x ++ flatten xs

count :: [Int] -> Int -> Int
count xs n = length as
  where
    as = filter (== n) xs
{-
    and ((square 2) == 5) (inf == inf)
    # lazy
    and ((square 2) == 5) (inf == inf)
    def square
    and ( x == 5) (inf == inf)
    [x = 2 * 2 ]
    arimetica
    and ( x == 5) (inf == inf)
    [x = 4 ]
    reemplazo
    and ( 4 == 5) (inf == inf)
    logica 
    and (False) (inf == inf)
    def and
    False _
    False

    

    


-}


