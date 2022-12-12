{- 
O fatorial duplo de um número natural n é o produto de todos os números de 1 (ou 2) até n,
contados de 2 em 2. Por exemplo, o fatorial duplo de 8 é 8 × 6 × 4 × 2 = 384, e o fatorial
duplo de 7 é 7 × 5 × 3 × 1 = 105 . Defina uma função para calcular o fatorial duplo usando
recursividade.
-}

fatorialDuplo :: Integer -> Integer
fatorialDuplo n = if n == 0
                  then 1
                  else if n == 1
                  then 1
                  else fatorialDuplo (n - 2) * n