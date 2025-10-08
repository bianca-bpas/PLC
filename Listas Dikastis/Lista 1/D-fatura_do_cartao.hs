split :: String -> Char -> [String]
split [] _ = []
split (a:b) c
    | a /= c = case split b c of
        [] -> [[a]]
        (x:xs) -> (a:x) : xs
    | otherwise = [] : (split b c)

percorreFatura :: [String] -> [[String]]
percorreFatura [] = []
percorreFatura (a:b:c:resto) = [a, b, c] : percorreFatura resto

identificaMes :: [[String]] -> [(String, String)]
identificaMes [] = []
identificaMes ([a, b, c]:as) = (a, c) : identificaMes as

agrupaMes :: [(String, String)] -> [[(String, String)]]
agrupaMes [] = []
agrupaMes (a:as) = (a : (filter (\s -> mes a == mes s) as)) : agrupaMes (filter (\s -> mes a /= mes s) as)

mes :: (String, String) -> String
mes (a, b) = reverse (take 3 (reverse a))

faturasMes :: [[(String, String)]] -> [(String, [Double])]
faturasMes [] = []
faturasMes (a:as) = (fatura a) : faturasMes as

valor :: (String, String) -> Double
valor (a, b) = read b

fatura :: [(String, String)] -> (String, [Double])
fatura (a:b) = (mes a, valor a : map valor b)

logMes :: String -> String -> Double
logMes consulta str = sum (snd (head f))
    where f = filter (\(m, valores) -> consulta == m) (faturasMes (agrupaMes (identificaMes (percorreFatura (split str ';')))))

main = do
    a <- getLine
    b <- getLine
    let result = logMes a b
    print result