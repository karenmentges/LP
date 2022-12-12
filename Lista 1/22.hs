{- 
Usando casamento de padrão, defina uma função que, dada uma lista de números, retorna:
a. a soma dos dois primeiros elementos, se a lista tiver pelo menos dois elementos;
b. a cabeça da lista, se ela contiver apenas um elemento;
c. zero, caso contrário.
-}

func :: [Integer] -> Integer
func [a] = a
func [] = 0
func list = head(list) + head(tail(list))