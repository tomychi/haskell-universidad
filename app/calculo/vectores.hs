-- f distancia entre dos puntos en R3
distanciaPQ :: (Float, Float, Float) -> (Float, Float, Float) -> Float
distanciaPQ (x1, y1, z1) (x2, y2, z2) = sqrt m
  where
    m = (x1 - x2) ^ 2 + (y1 - y2) ^ 2 + (z1 - z2) ^ 2

-- f componentes de un vector dado P. inicial y P. final

componentesPQ :: (Float, Float, Float) -> (Float, Float, Float) -> (Float, Float, Float)
componentesPQ (x1, y1, z1) (x2, y2, z2) = (a, b, c)
  where
    a = x2 - x1
    b = y2 - y1
    c = z2 - z1

sumVectores2d :: (Float, Float) -> (Float, Float) -> (Float, Float)
sumVectores2d (x1, y1) (x2, y2) = (x1 + x2, y1 + y2)

producEscalar :: (Float, Float, Float) -> (Float, Float, Float) -> Float
producEscalar (x1, y1, z1) (x2, y2, z2) = r
  where
    r = x1 * x2 + y1 * y2 + z1 * z2

producVectoria :: (Float, Float, Float) -> (Float, Float, Float) -> (Float, Float, Float)
producVectoria (u1, u2, u3) (v1, v2, v3) = (a, b, c)
  where
    a = (u2 * v3) - (u3 * v2)
    b = - (u1 * v3 - u3 * v1)
    c = (u1 * v2) - (u2 * v1)