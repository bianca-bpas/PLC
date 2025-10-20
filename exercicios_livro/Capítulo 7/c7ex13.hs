{- Defina duas funções recursivas que calculam o quociente e o resto da divisão inteira de dois números naturais usando subtrações sucessivas -}
quociente :: Int -> Int -> Int
quociente x y
    | x >= y = 1 + quociente (x-y) y
    | otherwise = 0

resto :: Int -> Int -> Int
resto x y
    | x >= y = resto (x-y) y
    | otherwise = x
