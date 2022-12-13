module Lexer where

import Data.Char

data Token = TokenNum Int
           | TokenPlus
           | TokenTimes
           | TokenLParen
           | TokenRParen
           deriving Show


lexer :: String -> [Token]
lexer [] = []
lexer (c:cs)
    | isSpace c = lexer cs
    | isDigit c = lexNum (c:cs)
lexer ('+':cs) = TokenPlus : lexer cs
lexer ('*':cs) = TokenTimes : lexer cs
lexer ('(':cs) = TokenLParen : lexer cs
lexer (')':cs) = TokenRParen : lexer cs
lexer _ = error "Lexical error: caracter inválido!"

lexNum cs = case span isDigit cs of 
                (num, rest) -> TokenNum (read num) : lexer rest