soma :: Int -> Int -> Int
soma a 0 = a
soma a b = soma (succ a) (pred b)