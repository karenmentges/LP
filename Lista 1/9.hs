{- 
A prefeitura de Chapecó abriu uma linha de crédito para os funcionários estatutários. O
valor máximo da prestação não poderá ultrapassar 30% do salário bruto. Fazer uma função
que permita entrar com o salário bruto e o valor da prestação, e que retorne um booleano
indicando se o funcionário pode ou não receber o empréstimo.
-}

emprestimo :: Double -> Double -> Bool
emprestimo s p = if (p <= s*0.3)
                 then True
                 else False