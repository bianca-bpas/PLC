salarioLiquido :: Double -> Double
salarioLiquido salarioBase = salarioBase + gratificacao - imposto
    where
        gratificacao = salarioBase / 10
        imposto = (7 * salarioBase) / 100