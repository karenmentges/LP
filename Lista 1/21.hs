{- 
Escreva as funções and e or usando casamento de padrões.
-}

aand :: Bool -> Bool -> Bool
aand _ False = False
aand False _ = False
aand True True = True

oor :: Bool -> Bool -> Bool
oor _ True = True
oor True _ = True
oor False False = False