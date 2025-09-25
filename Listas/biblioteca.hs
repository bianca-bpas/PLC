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

livros :: BancoDados -> Pessoa -> [Livro]
livros ((p, l):b) pessoa =
    livros ("", []:[]) "" = []
    livros p == pessoa = l : livros b pessoa

-- emprestimos :: BancoDados -> Livro ->[Pessoa]

-- emprestado :: BancoDados -> Livro -> Bool

-- qtdEmprestimos :: BancoDados -> Pessoa -> Int

-- emprestar :: BancoDados -> Pessoa -> Livro -> BancoDados

-- devolver :: BancoDados -> Pessoa -> Livro -> BancoDados