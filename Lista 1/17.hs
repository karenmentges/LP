{- 
Faça uma função que receba duas listas e retorne outra lista produto destas duas listas, ou
seja, cada posição das listas de entrada devem ser multiplicadas e armazenadas na mesma
posição na lista de saída.
-}

mult :: [Integer] -> [Integer] -> [Integer]
mult list1 list2 = if (null list1 && null list2)
                   then []
                   else (head list1) * (head list2) : mult (tail list1) (tail list2)