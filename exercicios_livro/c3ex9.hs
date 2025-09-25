elasticPotentialEnergy :: Float -> Float -> Float
elasticPotentialEnergy f k =
    0.5 * k * ((compressShift)^2)
    where compressShift = f/k