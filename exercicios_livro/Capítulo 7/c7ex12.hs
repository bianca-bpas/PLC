raizQuadradaInteira :: Int -> Int -> Int
raizQuadradaInteira x = base 0
    where
        base n
            | n ^ 2 > x = n-1
            | otherwise = base n+1