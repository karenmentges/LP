{- 
Defina uma função chamada ultimo que seleciona o último elemento de uma lista não
vazia, usando as funções do prelúdio.
-}

ultimo :: [a] -> a
ultimo list = head (reverse list)