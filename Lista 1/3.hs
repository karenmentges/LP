{- 
A nota final de um estudante é calculada a partir de três notas atribuídas respectivamente a
um trabalho de laboratório, a uma avaliação semestral e a um exame final. A média
ponderada das três notas mencionadas obedece aos pesos a seguir: 
nota                        peso
trabalho de laboratório        2
avaliação semestral            3
exame final                    5

Faça uma função que recebe as três notas, calcula a média ponderada e exibe o conceito
obtido pelo aluno conforme a tabela abaixo.

média ponderada     conceito
[8.0 - 10.0]        A
[7.0 - 8.0[         B
[6.0 - 7.0[         C
[5.0 - 6.0[         D
[0.0 - 5.0[         E
-}

notaFinal :: Double -> Double -> Double -> String
notaFinal x y z = if (n >= 8.0 && n <= 10.0)
                  then "A"
                  else if (n >= 7.0 && n < 8.0)
                  then "B"
                  else if (n >= 6.0 && n < 7.0)
                  then "C"
                  else if (n >= 5.0 && n < 6.0)
                  then "D"
                  else if (n >= 0.0 && n < 5.0)
                  then "E"
                  else "Não foi possivel calcular a média ponderada das notas"
                  where n = (((x*2)+(y*3)+(z*5))/10) 
