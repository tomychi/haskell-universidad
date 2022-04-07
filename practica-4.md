# Practica 4
- expreiones canonicas determinan 1 valor q se puede escribir de varias formas 
- forma normal es la expresion canonica
- para llevar a forma canonica
- tenemos orden aplicativo
- y el orden normal

## Orden Aplicativo: 
- se reduce siempre la expresion m ́as adento y mas a la izquierda.
## Orden Normal: 
- se reduce siempre la expresion m ́as afuera y mas a la izquierda
- si hay una forma normal, la reduccion normal la encuentra siempre 

## evaluacion lazy


# ejercicio 1
#### Orden Aplicativo: 
```
2 * cuadrado(head [2,4,5,6,7,8])
= {def: head}
2 * cuadrado (2)
= {def: cuadrado}
2 * (2*2)
= {Arimetica}
2 * 4
= {Arimetica}
8
```
#### Orden Normal:

```
2 * cuadrado(head[2,4,5,6,7,8])
= {def: cuadrado}
2 * (head[2,4,5,6,7,8]  * head[2,4,5,6,7,8])
= {def: head}
2 * (2  * head[2,4,5,6,7,8])
= {Arimetica}
4 * head[2,4,5,6,7,8]
= {def: head}
4 * 2 
= {Arimetica}
8
```



# ejercicio 2 
```
linf = 1 : linf
head linf
```
#### Orden Aplicativo: 
```
= {def linf}
head (1: linf) 
= {def linf}
head (1: (1: linf)) 
= {def linf}
head (1: (1: (1: linf))) 
= {def linf}
.... al infinito y mas alla
```
#### Orden Normal: 
```
= {def linf}
head (1 : linf)
= {def head}
1
```
# ejercicio 3 
```
f : : Int => Int => Int
f x 0 = x
f x n = cuadrado( f x (n-1))
```

#### Orden Aplicativo: 
```
f  2 3 
2 3 = cuadrado f 2 3 (16*16)        // def f
    f 2 2 
    2 2 = cuadrado f 2 1  (4*4)
        f 2 1 
    2 1 = cuadrado f 2 0  (2*2)
        f 2 0
        = 2
16 * 16 = 256
```
#### Orden Normal:
```
f 2 3
2 3 = cuadrado (f 2 3) //def cuadrado 
 (f 2 2) (f 2 2)  //def f
    (2 2 = cuadrado( f 2 1 )) * (2 2 = cuadradro (f 2 1) // cuadrado
    ((f 2 1) * (f 2 1)) * ((f 2 1) * (f 2 1)) // def cuadrado
        (2 1 = cuadrado( f 2 0 )) * (2 1 = cuadradro (f 2 0) * (2 1 = cuadradro (f 2 0) * (2 1 = cuadradro (f 2 0) // cuadrado
                4       *       4       *       4       *   4
                16              *       16  
                256
```

# Ejercicio 4 
```
square :: Int => Int
square x = x *x

inf :: Int
inf = inf + 1
```

#### Orden Normal: 








    



















