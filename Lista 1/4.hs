{- 
O estúdio fotográfico Boa Imagem cobra de seus clientes por retratos antigos baseando-se
no número de indivíduos incluídos no retrato. As tarifas constam da tabela seguinte.

Indivíduos no retrato       Preço base
1                           R$100,00
2                           R$130,00
3                           R$150,00
4                           R$165,00
5                           R$175,00
6                           R$180,00
7 ou mais                   R$185,00

Retratos antigos tirados aos sábados ou aos domingos custam 20% a mais do que o preço
base. Defina uma função precoRetrato do tipo Integer -> String -> Double que recebe como
argumentos o número de pessoas no retrato e o dia da semana agendado, e calcula o custo do
retrato. Exemplos:

precoRetrato 4 "quinta"  -> 165,00
precoRetrato 9 "sexta"   -> 185,00
precoRetrato 9 "sábado"  -> 222,00
precoRetrato 2 "domingo" -> 156,00
-}

precoRetrato :: Integer -> String -> Double
precoRetrato n d = if (d == "sábado" || d == "domingo")
                   then
                        case n of
                            1 -> 120
                            2 -> 156
                            3 -> 180
                            4 -> 198
                            5 -> 210
                            6 -> 216
                            _ -> 222
                    else
                        case n of
                            1 -> 100
                            2 -> 130
                            3 -> 150
                            4 -> 165
                            5 -> 175
                            6 -> 180
                            _ -> 185