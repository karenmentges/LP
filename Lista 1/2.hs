{- 
Os lados de qualquer triângulo respeitam a seguinte restrição:
* A soma dos comprimentos de quaisquer dois lados de um triângulo é superior ao
comprimento do terceiro lado.
Escreva uma função que receba o comprimento de três segmentos de reta e resulte em um
valor lógico indicando se satisfazem esta restrição. 
-}

triangulo :: Integer -> Integer -> Integer -> Bool
triangulo x y z = if (x + y > z) 
                  then True
                  else False 