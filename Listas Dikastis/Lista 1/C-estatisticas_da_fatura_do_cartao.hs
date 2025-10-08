split :: String -> Char -> [String]
split [] _ = []
split (a:b) c
    | a /= c = ([a] ++ head (split b c)) : tail (split b c)
    | otherwise = [] : (split b c)

onlyValid :: String -> Bool
onlyValid str = all valid str
    where valid c = c == '.' || (c >= '0' && c <= '9')

values :: String -> [String]
values fatura = [x | x <- (split fatura ';'), onlyValid x]

converterParaDouble :: [String] -> [Double]
converterParaDouble = map read

minMaxCartao :: String -> (Double, Double)
minMaxCartao f = (minimum listaValores, maximum listaValores)
    where listaValores = converterParaDouble (values f)

main = do
    a <- getLine
    let result = minMaxCartao a
    print result