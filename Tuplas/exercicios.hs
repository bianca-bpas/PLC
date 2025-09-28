menorMaior :: Int -> Int -> Int -> (Int, Int)
menorMaior a b c = (menor, maior)
    where
        menor = min a (min b c)
        maior = max a (max b c)

ordenaTripla :: (Int, Int, Int) -> (Int, Int, Int)
ordenaTripla (a, b, c) = (menor, meio, maior)
    where
        menor = min a (min b c)
        maior = max a (max b c)
        meio = a + b + c - menor - maior