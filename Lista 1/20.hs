{- 
Faça uma função que receba um produto e o ano atual e verifique se ele ainda está válido
para uso, retornando um valor booleano. Considere que produtos não perecíveis sempre
estão válidos.
-}

data Produto = Perecivel Integer String Integer Bool
             | NaoPerecivel Integer String String Integer
             deriving Show

anoValProduto :: Produto -> Integer
anoValProduto produto = case produto of
                           Perecivel _ _ anoVal _           -> anoVal
                           NaoPerecivel _ _ _ _             -> 0


validade :: Produto -> Integer -> Bool
validade produto anoAtual = if (anoValProduto(produto) == 0)
                            then True
                            else if (anoValProduto(produto) >= anoAtual)
                            then True
                            else False


{- 
validade (Perecivel 10 "Carne" 2023 True) 2022
validade (Perecivel 10 "Carne" 2023 True) 2025
validade (NaoPerecivel 11 "Arroz" "Panelaco" 2022) 2000
validade (NaoPerecivel 11 "Arroz" "Panelaco" 2022) 2030
-}