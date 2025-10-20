metade :: [a] -> ([a], [a])
metade lista = ((take n lista), (drop n lista))
    where n = length lista `div` 2