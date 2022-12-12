{- 
Defina um novo tipo de dado para armazenar a forma de comercialização de um produto,
com duas opções:
a. Unidade
b. Peso
Adicione este novo tipo de dado às duas opções do produto e refaça os testes anteriores.
-}

data ComercializaProduto = Unidade 
                         | Peso 
                         deriving Show

data Produto = Perecivel Integer String Integer Bool ComercializaProduto
             | NaoPerecivel Integer String String Integer ComercializaProduto
             deriving Show

comProduto :: Produto -> ComercializaProduto
comProduto produto = case produto of
                           Perecivel _ _ _ _ comercializa          -> comercializa
                           NaoPerecivel _ _ _ _ comercializa       -> comercializa

{- 
comProduto (Perecivel 10 "Carne" 2023 True Unidade)
comProduto (NaoPerecivel 11 "Arroz" "Panelaco" 2022 Peso)
-}