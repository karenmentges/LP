{- 
Escrever uma função que recebe a altura (h) e o sexo (s) de uma pessoa e calcula e mostra o
seu peso ideal, utilizando as fórmulas constantes na tabela a seguir.

sexo            peso ideal
masculino       72.7 * h - 58
feminino        62.1 * h - 44.7
-}

pesoIdeal :: Double -> String -> Double
pesoIdeal h s = if(s == "masculino")
                then ((72.7 * h) - 58)
                else if (s == "feminino")
                then ((62.1 * h) - 44.7)
                else 0