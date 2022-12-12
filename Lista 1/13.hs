{- 
Um funcionário de uma empresa recebe aumento salarial anualmente. O primeiro aumento é
de 1,5% sobre seu salário inicial. Os aumentos subsequentes sempre correspondem ao dobro
do percentual de aumento do ano anterior. Faça uma função onde é informado o salário
inicial do funcionário, o ano de contratação e o ano atual, e calcula e exibe o seu salário
atual.
-}

aumentoSalarial :: Float -> Integer -> Integer -> Float
aumentoSalarial s ac aa = 