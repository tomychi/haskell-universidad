subrango :: [String] -> [String]
subrango [] = []
subrango (x : xs) = x : subrango [m | m <- xs, m /= x]