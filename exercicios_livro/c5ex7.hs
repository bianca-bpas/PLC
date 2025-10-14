module Main where

import System.IO (hSetBuffering, stdout, BufferMode(NoBuffering))

main :: IO ()
main = do 
        hSetBuffering stdout NoBuffering
        putStr "Digite a nota do trabalho de laboratório ...: "
        laboratório <- readLn
        putStr "Digite a nota da avaliação semestral .......: "
        semestral <- readLn
        putStr "Digite a nota do exame final ...............: "
        final <- readLn
        putStrLn ""
        putStr "Conceito obtido: "
        let conceitoObtido = conceito laboratório semestral final
        putStrLn [conceitoObtido]

conceito :: Float -> Float -> Float -> Char
conceito n1 n2 n3
    | (media >= 8) && (media <= 10) = 'A'
    | (media >= 7) = 'B'
    | (media >= 6) = 'C'
    | (media >= 5) = 'D'
    | (media >= 0) = 'E'
    where media = (n1 * 2 + n2 * 3 + n3 * 5) / 10