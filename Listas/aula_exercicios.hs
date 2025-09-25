zip :: [t] -> [u] -> [(t,u)]
zip [] [] = []
zip (a:b) (c:d) = (a,c) : zip b d
zip _ _ = []