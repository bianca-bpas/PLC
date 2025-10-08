btoi :: String -> Int
btoi binario = foldl (\soma digito -> soma * 2 + (charParaInt digito)) 0 binario
  where
    charParaInt :: Char -> Int
    charParaInt '0' = 0
    charParaInt '1' = 1

main = do
    s <- getLine
    let result = btoi s
    print result