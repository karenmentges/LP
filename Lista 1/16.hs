{- 
Faça uma função que receba uma lista de elementos e retorne a soma de todos eles.
-}

soma :: [Integer] -> Integer
soma list = if null list
            then 0
            else (head list) + soma (tail list)