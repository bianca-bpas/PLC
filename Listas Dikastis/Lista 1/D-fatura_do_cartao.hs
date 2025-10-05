type GrupoMes = (String, [Double])

split :: String -> Char -> [String]
split [] _ = []
split (a:b) c
    | a /= c = case split b c of
        [] -> [[a]]
        (x:xs) -> (a:x) : xs
    | otherwise = [] : (split b c)

onlyValid :: String -> Bool
onlyValid str = all valid str
    where valid c = c == '.' || (c >= '0' && c <= '9')

values :: String -> [String]
values fatura = [x | x <- (split fatura ';'), onlyValid x]

converterParaDouble :: [String] -> [Double]
converterParaDouble = map read


logMes :: String -> String -> Double


main = do
    a <- getLine
    let result = minMaxCartao a
    print result