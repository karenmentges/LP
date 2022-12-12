{- 
Defina uma função recursiva para calcular a potência de um número, considerando que o
expoente é um número natural. Utilize o método das multiplicações sucessivas:
-}

potencia :: Integer -> Integer -> Integer
potencia b e = if e == 1
               then b
               else potencia b (e - 1) * b