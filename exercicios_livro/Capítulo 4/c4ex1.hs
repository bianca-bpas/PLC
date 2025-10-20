forcaGravitacional :: Double -> Double -> Double -> Double
forcaGravitacional m1 m2 d = (g * m1 * m2) / d^2
    where g = 6.67e-11