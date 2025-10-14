-- Defina uma função para calcular a área de um triângulo de lados a, b e c usando lei dos cossenos, relação fundamental da trigonometria, definição de seno e área de um triângulo
areaTriangulo :: Int -> Int -> Int -> Double
areaTriangulo a b c = (c*h)/2
    where
        h = b * sinAlpha
        sinAlpha = sqrt (1 - cosAlpha ^ 2)
        cosAlpha = (b ^ 2 + c ^ 2 - a ^ 2) / (2 * b * c)