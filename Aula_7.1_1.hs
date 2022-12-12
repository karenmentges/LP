-- calcula o dobro de um número
dobro x = x + x

-- calcula o quádruplo de um número
quadruplo x = dobro(dobro x)

-- calcula a área de um circulo
areaCirculo r = pi * r^2

-- calcula a área de um triângulo
areaTriangulo1 a b c = let s = (a + b + c) / 2
                       in sqrt (s * (s-a) * (s-b) * (s-c))

areaTriangulo2 a b c = sqrt (s * (s-a) * (s-b) * (s-c))
                       where s = (a + b + c) / 2

-- função
minhaFuncao x = 3 + f x + f a + f b
                where 
                    f x = x + 7*c
                    a = 3*c
                    b = f 2
                    c = 10

-- Dada uma lista de strings, a função deve retornar a primeira string da lista ou a palavra “vazia”, caso a lista não tenha elementos.
firstOrEmpty :: [[Char]] -> [Char]
firstOrEmpty lst = if not (null lst)
                   then head lst
                   else "empty"