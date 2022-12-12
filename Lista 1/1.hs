{- 
Defina uma função que recebe o salário base de um funcionário e resulta no salário líquido a
receber, sabendo-se que o funcionário tem gratificação de 10% sobre o salário base e paga
imposto de 7% sobre o salário base. Exemplos:

salario 1000 -> 1030.0
salario 850 -> 875.5
-}

salario :: Double -> Double
salario x = x - (x * 0.07) + (x * 0.10)