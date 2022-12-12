-- Defina uma função para calcular o quadrado do dobro do seu argumento.
dobro x = x + x
quadradoDoDobro x = (dobro x)^2

-- Defina uma função para calcular o dobro do quadrado do seu argumento.
quadrado x = x^2
dobroDoQuadrado x = dobro(quadrado x)

-- Faça uma função que receba três notas de um aluno e calcule a média aritmética das notas.
calculaNotas x y z = (x + y + z) / 3

-- Sabe-se que o valor do quilowatt de energia elétrica custa um quinto
-- do salário mínimo. Defina uma função que receba o valor do salário
-- mínimo e a quantidade de quilowatts consumida por uma residência,
-- e resulta no valor a ser pago com desconto de 15%.
calculaConta salario kw = (salario / 5) * kw * 0.85