{- 
Defina uma função chamada primeiros que seleciona todos os elementos de uma lista não
vazia, exceto o último, usando as funções do prelúdio.
-}

primeiros :: [a] -> [a]
primeiros list = reverse (tail (reverse list))