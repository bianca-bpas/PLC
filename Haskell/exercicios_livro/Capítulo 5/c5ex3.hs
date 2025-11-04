min3 :: Int -> Int -> Int -> Int
min3 a b c | a < b && a < c = a
           | b < c = b
           | otherwise = c
            