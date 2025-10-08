isReplica :: String -> Int -> Char -> Bool
isReplica palavra num letra = (palavra == res)
    where
        res = concatena letra num

concatena :: Char -> Int -> String
concatena _ 0 = ""
concatena letra num = [letra] ++ concatena letra (num-1)

main = do
    a <- getLine
    b <- getLine
    c <- getChar
    let result = isReplica a (read b) c
    print result