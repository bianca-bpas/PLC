a :: String
-- negado -> String
a =
    if sqrt (abs (10 - 35) * 100) < 5 then "aceito" else "negado"

b :: Int
-- pred espera um Bool e não um Char
b =
    -- if pred 'B' then 10 else 20
    if pred ('B' == 'B') then 10 else 20

c :: Double
-- pred espera Bool e o retorno tem tipos diferentes
c =
    -- if odd 1 then sqrt 9 else pred 'B'
    if odd 1 then sqrt 9 else 0.1

d :: Int
-- -4 -> Int
d =
    4 * if 'B' < 'A' then 2 + 3 else 2 - 3

e :: Int
-- -2 -> Int
e =
    signum (if 'B' < 'A' then 2 + 3 else 2) - 3