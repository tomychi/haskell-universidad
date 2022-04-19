# funciones para Ghci/Haskell:
## by: Uriel Guzman
- elimina el o los elem de la lista de la izquierda  
[] \\ x	ó []
- dice si todos los elems lo cumplen  
all (pred) [] 
- devuelve si todos son True  
and [Bool] 
- dice si alguno de los elems lo cumple  
any (pred) []
- divide la lista en la primer condicion verdadera que de el pred  
break (pred) []  
- repite la lista infinitamente
cycle [] 
- compara 2 ord (GT,EQ y LT) = (>, = ,< que)  
a `compare` b   
- une todas las listas en una sola  
concat [[]]	
  
- es mapear la lista y luego hacer una sola con estos valores  
concatMap (f) []

- elimina el 1er x de la lista  
delete x []
- ve que elems estan en el 1ro pero no en el 2do arbol (?)  
diference (s1) (s2)		
- elimina x-1 primeros lugares  
drop x []				
- devuelve si esta o no x en la lista    
x `elem` []				
- toma un diccionario y devuele todos los valores  
elems [()]				
- devuelve la posicion si esta, pero con maybe  
elemIndex x []			
- devuelve una lista con las posiciones del elem (caos multiple)  
elemIndices x []		
- devuelve si un diccionario esta vacio (Data.Map)  
empty []				
- devuelve un error "algo"  
error "algo"			
- devuelve si x es par o no  
even x 					
- toma un predicado (fun bool), una lista y devuelve una lista con aquelos elem que sea True en la f  
filter (f) []			
- devuelve el 1er elem que cumple, pero con el maybe añadido  
find (pred) []			
- devuelve la posicion del 1ero encontrado con maybe  
findIndex (pred) []		
- devuelve una lista de los elemestod encontrados que cumplan  
findIndices (pred) []	
- toma una dupla y devuelve el 1er elem  
fst (,)					
- toma 2 fun e invierte su parametros (algo asi)  
flip f f'				
- toma una op , una lista y la emplea asociando a la izquierda  
foldl 'op' []			
- toma una op , una lista y la emplea asociando a la derecha  
foldr 'op' []			
- toma una lista y la convierte en diccionario, sin claves repetidas (Data.Map) o en arboles sin elems repetidos (Data.set)   
fromList [()]			
- toma una lista y la convierte en diccionario con repetidos, y toma ademas una fun para decidir con cual quedarse  
fromListWith (f) [()]	
- agrupa en listas los elems iguales  
group []				
- devuelve el elem a la cabeza  
head []					
- elimina solo el ultimo  
init []					
- inserta x en su lugar correspondiente si es que las lista se puede ordenar.. tambien puede usarse con x x en (Data.Map)  
insert x []				
- hace lo mismo que intert, pero tomando una fun que le diga que hacer en caso de repetidos  
insertWith (f) [()]		
- toma una lista, y una lista de listas y devuelve una lista con los elems intercalados  
intercalate [] [[]] 	
- interseca los conjuntos  
[] `intersect` []		
- ve que elems hay en comun entre dos arboles(?)  
intersection (s1) (s2)  
- coloca el x entre cada par de elems  
interspers x []			
- busca las sublistas desde el principio  
isPrefixOf x []			
- busca las sublistas desde el final  
isSuffixOf x []			

-- Data.cha
- devuelve dado un char, una de las 31 categorias de caracteres  
generalCategory			
- comprueba si un carácter es de control o no.  
isControl 				
- comprueba si un carácter es uno de los caracteres de espacio en blanco. Eso incluye espacios, tabuladores, saltos de línea, etc.  
isSpace 				
- comprueba si un carácter está en minúsculas.  
isLower 				
- comprueba si un carácter está en mayúsculas.  
isUpper 				
- comprueba si un carácter es una letra.  
isAlpha 				
- comprueba si un carácter es una letra o un número.  
isAlphaNum 				
- comprueba si un carácter es imprimible. Los caracteres de control, por ejemplo, no lo son.  
isPrim 					
- comprueba si un carácter es un dígito.  
isDigit 				
- comprueba si un carácter es un dígito octal.  
isOctDigit 				
- comprueba si un carácter es un dígito hexadecimal.  
isHexDigit 				
- comprueba si un carácter es una letra.  
isLetter 				
- comprueba si un carácter es una marca Unicode. Esto caracteres que se combinan con sus adyacentes.  
isMark 					
- comprueba si un carácter numérico.  
isNumber 				
- comprueba si un carácter es un signo de puntuación.  
isPunctuation 			
- comprueba si un carácter es símbolo matemático o el de una moneda.  
isSymbol 				
- comprueba si un carácter es un espacio o un separador Unicode.  
isSeparator 			
- comprueba si un carácter es uno de los primeros 128 caracteres del conjunto de caracteres Unicode.  
isAscii 				
- comprueba si un carácter es uno de los primeros 256 caracteres del conjunto de caracteres Unicode.  
isLatin1 				
- comprueba si un carácter está en mayúsculas y además es ascii.  
isAsciiUpper 			
- comprueba si un carácter está en minúsculas y además es ascii.  
isAsciiLower 			
- convierte un carácter a mayúsculas. Lo espacios, números y todo lo demás permanece igual.  
toUpper 				
- convierte un carácter a minúsculas.  
toLower 				
- es similar a toUpper excepto para una pocas letras.  
toTitle 				
- convierte un carácter a un Int entre 0 y 9 / a y f  
digitToInt 				
- es la función inversa de digitToInt , rango 1 al 15  
intToDigit 				
- combierte numero a caracter  
chr						
- combierte caracter a numero  
ord						
- aplica infinitamente f a los elem resultantes (se usa con take z)  
iterate (f) x 			
- toma un diccionario y devuelve todas las claves  
keys [()]				
- devuelve el elem del final  
last []					
- longitud de la lista  
length []				
- devuelve una lista con las lineas de una str .. (\n)  
lines [char]			
- toma una clave y devuelve su valor   
lookup x []				
- toma una fun y una lista y le aplica a la lista la fun  
map (f) []				
- toma una clave, un diccionario y devuleve si esta contenida o no   
member x []				
- dice cual es el minimo o maximo, pero siempre colocandolos a la derecha  
min / max x y			
- devuelve el max o min de la lista  
maximun [] / minimun [] 
- elimina elems repetidos  
nub []					
- revisa si esta vacia y devuelte true o false .. tambien esta en Data.Map  
null []					
- devuelve si no esta en la lista True  
x `notElem` []			
- devuelve si x es impar o no  
odd x					
- devuele True si hay por lo menos 1   
or [Bool]				
- devuele una dupla con una lista que cumple y otra que no  
partition (pred) []		
- devuelve el predecesor (si tiene)  
pred x 					
- devuelve el producto de la lista  
product []				
- devuelve el valor de x , pero solo si se opera luego (anota explicitamente)  
read "x"				
- repite una lista de 1 solo elem infinitamente  
repeat []				
- devuelve una lista con y elems, de x  
replicate x y 			
- invierte la lista  
reverse []				
- toma un real y los redondea a entero  
round x					
- hace los mismo que nub mas rapido, pero no mantine el orden de los elems (util en [] grandes)  
setNub []				
- toma una clave y un valor y nos devuelve un diccionario que solo contiene esa clave.  
singleton x x			
- tamaño de lista o diccionario  
size []					
- toma un tipo de Show y devuelve una cadena de texto  
show x 					
- guarda lo conseguido con takeWhile en x y el resto en y  
let (x,y) span (pred) []
- toma un num, una lista y divide en la lista en esa cant  
splitAt x []			
- toma una dupla y devuelve 2do elem  
snd (,)					
- ordena la lista (hdp)  
sort []					
- sucesor (si es que tiene)  
succ x					
- devuelve la suma de la lista  
sum []					
- devuelve todo menos el 1ro  
tail x []				
- extrae hasta x-1 lugar de la lista  
take x []				
- toma un predicado y [] , y devuelve hasta que deje de cumplirse el predicado    
takeWhile (f) []		
- es la inversa de fromList.  
toList 					
- va tomasndo elems de las listas, y devuelve una [[]] con las convinaciones de estas    
tranpose [[]]			
- une dos conjuntos , o ve que elems se usaron en ambos si son arboles (?)  
[] `union` []			
- devuelve una str uniendo los elems con \n  
unlines [cad]			
- crea un str con una lista de palabras  
unwords [cad]			
- separa un str en palabras  
words [char]			
- devuelve una lista con duplas  
zip [] []				
- toma la funcion, y decuelve una lista con la operacon entre 2 listas  
zipWith (f) [] []		