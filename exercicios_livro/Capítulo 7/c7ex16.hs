fibo :: Int -> Int
fibo n = aux n 0 1
    where
        aux 0 a _ = a
        aux n a b = aux (n-1) b (a+b)