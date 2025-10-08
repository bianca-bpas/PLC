{- Defina uma função que receba a indutância L e a capacitância C, 
e resulta na frequência de ressonância desse aparelho de rádio
Teste seu programa pelo cálculo da frequência do rádio quando 
L = 0, 25mH e C = 0, 10nF -}
frequenciaRessonancia :: Double -> Double -> Double
frequenciaRessonancia l c = 1 / (2*pi*(sqrt l*c))
