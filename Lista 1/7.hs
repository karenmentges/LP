{- 
Faça uma função que receba três notas de um aluno, e calcule e retorne a média aritmética
das notas e a situação do aluno, dada pela tabela a seguir.

Média das notas             Situação
menor que 3                 reprovado
entre 3 (inclusive) e 7     exame especial
acima de 7 (inclusive)      aprovado
-}

media :: Double -> Double -> Double -> IO()
media x y z = if (n < 3)
              then
                putStrLn ((show (n)) ++ "  Reprovado")
              else if (n >= 3 && n < 7)
              then 
                putStrLn ((show (n)) ++ "  Exame Especial")
              else 
                putStrLn ((show (n)) ++ "  Aprovado")
              where n = ((x + y + z)/3)