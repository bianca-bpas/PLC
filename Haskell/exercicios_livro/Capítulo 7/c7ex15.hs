fat :: Int -> Int
fat n = fat' n 1
    where
        fat' :: Int -> Int -> Int
        fat' n x
            | n == 0 = x
            | n > 0 = fat' (n-1) (n*x)
    