trianguloValido :: Int -> Int -> Int -> Bool
trianguloValido a b c = 
    (a + b) > c &&
    (b + c) > a &&
    (c + a) > b