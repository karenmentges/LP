{- 
Crie uma função que receba a idade de uma pessoa e informe a sua classe eleitoral:
a. “não eleitor” abaixo de 16 anos;
b. “eleitor obrigatório” entre 18 (inclusive) e 65 anos;
c. “eleitor facultativo” de 16 até 18 anos e acima de 65 anos (inclusive).
-}

eleitor :: Integer -> String
eleitor i = if (i < 16)
            then "Nao eleitor"
            else if (i >= 18 && i < 65)
            then "Eleitor obrigatorio"
            else if (i >= 16 && i < 18 || i >= 65)
            then "Eleitor facultativo"
            else "Error!"