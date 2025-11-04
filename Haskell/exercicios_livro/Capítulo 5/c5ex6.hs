precoRetrato :: Int -> String -> Double
precoRetrato n dia = preco + (fimDeSemana dia preco)
    where
        preco = precoBase n
        precoBase :: Int -> Double
        precoBase x
            | x == 1 = 100
            | x == 2 = 130
            | x == 3 = 150
            | x == 4 = 165
            | x == 5 = 175
            | x == 6 = 180
            | x >= 7 = 185
        
        fimDeSemana :: String -> Double -> Double
        fimDeSemana d p
            | (d == "sábado") || (d == "domingo") = (2 * p) / 10
            | otherwise = 0