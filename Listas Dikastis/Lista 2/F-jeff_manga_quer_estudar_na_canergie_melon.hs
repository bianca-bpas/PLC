converteLetraNumero :: String -> Double
converteLetraNumero x
    | head x == 'A' = 9.3 + ajuste (tail x)
    | head x == 'B' = 8.3 + ajuste (tail x)
    | head x == 'C' = 7.3 + ajuste (tail x)
    | head x == 'D' = 6.3 + ajuste (tail x)
    | head x == 'F' = 5.9
    where
        ajuste l
            | l == "+" = 0.4
            | l == "-" = -0.3
            | l == "" = 0.0

media :: [String] -> Double
media lista = (sum notas) / fromIntegral (length notas)
    where notas = map converteLetraNumero lista

contagemNotas :: [String] -> [String] -> Int
contagemNotas notas notasCorte =
    length (filter (\corte -> notaAluno >= corte ) (map converteLetraNumero notasCorte))
    where 
        notaAluno = media notas

main = do
    a <- getLine
    b <- getLine
    print (contagemNotas (read a) (read b))

