potencia :: Int -> Int -> Int
potencia _ 0 = 1
potencia x 1 = x
potencia x n = x * (potencia x (n-1))