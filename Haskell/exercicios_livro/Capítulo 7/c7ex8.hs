prodIntervalo :: Int -> Int -> Int
prodIntervalo m n = foldl (*) 1 [m..n]
