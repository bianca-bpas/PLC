fatorialDuplo :: Int -> Int
fatorialDuplo 0 = 1
fatorialDuplo 1 = 1
fatorialDuplo 2 = 2
fatorialDuplo n =  n * fatorialDuplo (n-2)