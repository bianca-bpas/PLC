-- Redefina a função a seguir usando guardas no lugar de expressões condicionais
{- describeLetter :: Char -> String
describeLetter c =
    if c >= ’a’ && c <= ’z’
        then "Lower case"
        else if c >= ’A’ && c <= ’Z’
            then "Upper case"
            else "Not an ASCII letter"
 -}

 describerLetter :: Char -> String
 describeLetter c
    | c >= 'a' && c <= 'z' = "Lower case"
    | c >= 'A' && c <= 'Z' = "Upper case"
    | otherwise = "Not an ASCII letter"