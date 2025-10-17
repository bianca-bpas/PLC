fatorial :: Int -> Int
fatorial n = foldl (*) 1 [1..n]