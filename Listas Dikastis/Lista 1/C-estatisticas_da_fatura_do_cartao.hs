split :: [Char] -> Char -> [[Char]]
split [] _ = []
split (a:b) c
    | a /= c = ([a] ++ head lista) : tail lista
    | otherwise = [] : lista
    where
        lista = split b c
-- minMaxCartao :: String -> (Double, Double)


{- main = do
    a <- getLine
    let result = minMaxCartao a
    print result -}