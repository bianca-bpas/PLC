mdc :: Int -> Int -> Int
mdc a 0 = a
mdc a b
    | b > 0 = mdc b (a `mod` b)
    | otherwise = mdc a (-b)