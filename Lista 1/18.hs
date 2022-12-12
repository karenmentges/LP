{- 
Defina um novo tipo de dado chamado Produto, que permita armazenar informações sobre:
a. Produto perecível: código, descrição, ano de validade e se é comestível ou não.
b. Produto não perecível: código, descrição, fabricante, ano de fabricação.
Faça testes com este novo tipo de dado.
-}

data Produto = Perecivel Integer String Integer Bool
             | NaoPerecivel Integer String String Integer
             deriving Show

codigoProduto :: Produto -> Integer
codigoProduto produto = case produto of
                           Perecivel codigo _ _ _           -> codigo
                           NaoPerecivel codigo _ _ _        -> codigo

descricaoProduto :: Produto -> String
descricaoProduto produto = case produto of
                           Perecivel _ descricao _ _        -> descricao
                           NaoPerecivel _ descricao _ _     -> descricao

anoValProduto :: Produto -> Integer
anoValProduto produto = case produto of
                           Perecivel _ _ anoVal _           -> anoVal

fabricanteProduto :: Produto -> String
fabricanteProduto produto = case produto of
                           NaoPerecivel _ _ fabricante _    -> fabricante

comestivelProduto :: Produto -> Bool
comestivelProduto produto = case produto of
                           Perecivel _ _ _ comestivel       -> comestivel

anoFabProduto :: Produto -> Integer
anoFabProduto produto = case produto of
                           NaoPerecivel _ _ _ anoFab           -> anoFab


{- 
codigoProduto (Perecivel 10 "Carne" 2023 True)
descricaoProduto (Perecivel 10 "Carne" 2023 True)
anoValProduto (Perecivel 10 "Carne" 2023 True)
comestivelProduto (Perecivel 10 "Carne" 2023 True)

codigoProduto (NaoPerecivel 11 "Arroz" "Panelaco" 2022)
descricaoProduto (NaoPerecivel 11 "Arroz" "Panelaco" 2022)
fabricanteProduto (NaoPerecivel 11 "Arroz" "Panelaco" 2022)
anoFabProduto (NaoPerecivel 11 "Arroz" "Panelaco" 2022)
-}