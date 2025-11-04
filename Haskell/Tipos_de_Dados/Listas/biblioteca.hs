type BancoDados = [(Pessoa,Livro)]
type Pessoa = String
type Livro = String

baseExemplo :: BancoDados
baseExemplo = [("Sergio","O Senhor dos Aneis"),
               ("Andre","Duna"),
               ("Fernando","Jonathan Strange & Mr. Norrell"), 
               ("Fernando","Duna")
              ]
-- livros emprestados

{- livros :: BancoDados -> Pessoa -> [Livro]
livros [] _ = []
livros ((p, l):xs) pessoa
    | p == pessoa = l : livros xs pessoa
    | otherwise = livros xs pessoa -}

livros bd pessoa = [l | (p, l) <- bd, p == pessoa]

{- emprestimos :: BancoDados -> Livro ->[Pessoa]
emprestimos [] _ = []
emprestimos ((p, l):xs) livro
    | l == livro = p : emprestimos xs livro
    | otherwise = emprestimos xs livro -}

emprestimos bd livro = [p | (p, l) <- bd, l == livro]

emprestado :: BancoDados -> Livro -> Bool
emprestado [] _ = False
emprestado ((p, l):xs) livro
    | l == livro = True
    | otherwise = emprestado xs livro

qtdEmprestimos :: BancoDados -> Pessoa -> Int
qtdEmprestimos [] _ = 0
qtdEmprestimos ((p, l):xs) pessoa
    | p == pessoa = 1 + qtdEmprestimos xs pessoa
    | otherwise = qtdEmprestimos xs pessoa

emprestar :: BancoDados -> Pessoa -> Livro -> BancoDados
emprestar (a:xs) pessoa livro = a : emprestar xs pessoa livro
emprestar [] pessoa livro = [(pessoa, livro)]

devolver :: BancoDados -> Pessoa -> Livro -> BancoDados
{- devolver [] _ _ = []
devolver ((p, l):xs) pessoa livro
    | p == pessoa && l == livro = xs
    | otherwise = (p, l) : devolver xs pessoa livro -}

devolver bd pessoa livro = [(p, l) | (p, l) <- bd, not (p == pessoa && l == livro)]
