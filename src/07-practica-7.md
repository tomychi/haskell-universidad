## by: Juani

# Ejercicio 1

​

1. (p -> q) ∨ (q -> p)

​

    ### Hipotesis

        p -> q ≡ ¬p ∨ q 

        p -> q ≡ (p ∨ q ≡ q)

​

    ### Demostracion

       ≡ {Teorema p -> q ≡ ¬(p) ∨ q}

       (¬p ∨ q) ∨ (¬q ∨ p)

       ≡ {Asociatividad ∨, conmutatividad ∨}

       (p ∨ ¬p) ∨ (q ∨ ¬q)

       ≡ {Tercer excluido}

       TRUE ∨ TRUE

       ≡ {Idempotencia}

       TRUE

​

<!-- 1. p -> q ≡ ¬(p) ∨ q

​

    ### Hipotesis -->

---    

​

# Ejercicio 2

​

1. A dice: *yo soy un caballero y B es un mentiroso*. = **(A ≡ A ∧ ¬B)**

    ### Demostracion

        A ≡ A ∧ ¬ B

        ≡ {Negacion de la implicacion}

        A ≡ ¬(A -> B)

        ≡ {Definicion de la implicacion}

        A ≡ ¬(A ∨ B ≡ B)

        ≡ {Teorema}

        A ≡ ¬(A ∨ B) ≡ B

        ≡ {De Morgan}

        A ≡ (¬A ∧ ¬B) ≡ B

        ≡ {Conmutatividad de la equivalencia}

        ¬A ∧ ¬B ≡ A ≡ B

2. A dice: *yo soy un mentiroso y B es una caballero*. = **(A ≡ ¬A ∧ B)**

    ### Demostracion

​

3. A dice: *yo soy un caballero y B es un caballero*. = **(A ≡ A ∧ B)**

    ### Demostracion

4. Nos encontramos con A y B, A dice: *al menos uno de nosotros*. = **(A ≡ ¬A ∨ ¬B)**

    ### Demostracion

5. A dice: *yo soy un mentiroso o B es un caballero*. = **(A ≡ ¬A ∨ B)**

    ### Demostracion

6. Le preguntan a A si es un caballero. A responde: *Si soy un caballero, entonces me comere el sombrero*. Demostrar que A se tiene que comer el sombrero. = **((A ≡ A -> S) -> S)**

    ### Demostracion

​

---

# Ejercicio 3: *(Ni:R.i:Ti) = (∑i:R.i ∧ T.i: 1)*

​

1. Regla de particion de rango

    

    $(Ni:R.i ∨ T.i: 1) = (Ni:Ri:Ti) + (Ni:Si:Ti)$

    ### Demostracion

        (Ni:R.i ∨ T.i: 1) 

        = {Def. de contatoria}

        (∑i: (Ri ∨ Si) ∧ Ti: 1)

        = {Distributiva}

        (∑i: (Ri ∧ Ti) ∨ (Si ∧ Ti): 1)

        = {Particion de rango para sumatoria}

        (∑i : Ri ∧ Ti : 1) + (∑i : Si ∧ Ti: 1)

        = {Def. contatoria}

        (Ni:Ri:Ti) + (Ni:Si:Ti)

​

1. Regla de rango vacio 

​

    $(Ni:false:T) = 0$

    ### Demostracion 

        (Ni:false:T)

        = {Def. de sumatoria}

        (∑i: Ri ∧ false: 1)

        = {Absorcion ∧}

        (∑i: false : 1)

        = {sumatoria con rango falso es 0}

        0

​

1. $(∑i: Ri ∧ Ti: K) = K * (Ni:Ri:Ti)$

​

    ### Demostracion

        (∑i: Ri ∧ Ti: K)

        = {}

​
​


