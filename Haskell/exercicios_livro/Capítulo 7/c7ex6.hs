par n = par' n True

par' n y
    | n == 0 = y
    | otherwise = par' (n-1) (not y)