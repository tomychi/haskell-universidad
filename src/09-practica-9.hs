-- dada una lista de numeros, remover de cada pareja de repeticiones, uno de ellos
removeDupli :: [Int] -> [Int]
removeDupli [] = []
removeDupli [x] = [x]
removeDupli (x:y:xs) 
    |  x == y =  removeDupli (y:xs)
    | x /= y  =  x: removeDupli (y:xs)



-- dropWhile que elimina la parte inicial de una lista que cumple una condicion
-- dropWhile par [2,4,7,8,9] --> [7,8,9]
dropWhilee :: [a] -> (a -> Bool) ->[a]
dropWhilee xs p = ys
    where ys = [x | x<-xs, not(p x)]

-- dado un elemento y una lista del tipo de el elemento comprobar si elem esta en la lista
pertenece :: (Eq a) => a -> [a] -> Bool
pertenece _ [] = False
pertenece y (x:xs) 
            | y == x = True
            | pertenece y xs = True
            | otherwise = False


{-
    Caballeros y mentirosos
    A ≅ ~A v B
    utilizando la logica proposicional averigue quien es caballero y quien mentiroso 

    A ≅ ~A v B
    <def implicacion>
    A ≅ A -> B
    <def implicacion>
    A ≅ A v B ≅ B 
    <regla dorada>  
    A ^ B 
-}


{-
    Demuestre ~(P v Q ) ≅ (~P ^ ~Q)

    ~(P v Q ) ≅ (~P ^ ~Q)
    <definicion implicacion>
    ~(~p -> Q ) ≅ (~P ^ ~Q)
    <negacion implicacion>
    (~P ^ ~Q ) ≅ ~(~P ^ ~Q)

-} 
{-
    xs ≠ [] especificar xs esta ordenado
    
    ord :: [Num] -> Bool
    ord.xs = (< ∀i: 0 ≤ i < #xs-1 : xs.i < xs.i+1> v #xs<2 )

-}







