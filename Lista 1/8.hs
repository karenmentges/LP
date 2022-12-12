{- 
Escreva uma função que recebe uma String e testa se ela representa uma palíndromo,
retornando um Bool. Dica: para verificar se uma frase é palíndromo basta verificar se ela é
igual à sua reversa.
-}

palindromo :: String -> Bool
palindromo s = if (s == reverse s)
               then True
               else False