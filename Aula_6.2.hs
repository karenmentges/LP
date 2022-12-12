-- Reescreva as listas anteriores utilizando apenas (:) e o construtor de lista vazia []

["hello", "ola"]
"hello" : "ola" : []
('h' : 'e' : 'l' : 'l' : 'o' : []) : ('o' : 'l' : 'a' : []) : []

[['a','b','c'],['d','e']]
('a' : 'b' : 'c' : []) : ('d' : 'e' : []) : []


-- Escreva uma expressão que verifica se uma lista está vazia, [], ou se o primeiro elemento é vazio, como [[],['a','b']]

if (null [] || null(head [[],['a','b']])) then "True" else "False"


-- Escreva uma expressão que verifica se uma lista tem somente um elemento. Ela deve retornar True para ['a'] e False para [] ou ['a','b']




-- Escreva uma expressão que concatena duas listas dadas dentro de outra lista. Por exemplo, ela deve retornar "abcde" para ["abc","de"]

head ["abc","de"] ++ head (reverse ["abc","de"])