soma :: Int -> Int -> Int
soma _ 0 = 0
soma a b = a + soma a (b-1)