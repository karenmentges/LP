{
module Parser where 

import Lexer 
}

%name parser 
%tokentype { Token }
%error { parseError }

%token
    num         { TokenNum $$ }
    '+'         { TokenAdd }
    '-'         { TokenSub }
    '*'         { TokenMul }
    "&&"        { TokenAnd }
    "||"        { TokenOr }
    "!"         { TokenNot }
    "=="        { TokenEq }
    ">"         { TokenBg }
    ">="        { TokenBE }
    true        { TokenTrue }
    false       { TokenFalse }
    if          { TokenIf }
    then        { TokenThen }
    else        { TokenElse }
    var         { TokenVar $$ }
    '\\'        { TokenLam }
    ':'         { TokenColon }
    "->"        { TokenArrow }
    '('         { TokenLParen }
    ')'         { TokenRParen }
    Bool        { TokenBoolean }
    Number      { TokenNumber }
    let         { TokenLet }
    "="         { TokenAtr }
    in          { TokenIn }

%nonassoc if then else
%left '+' '-'
%left '*'
%left "||"
%left "&&"
%left "!"
%left "==" ">" ">="

%% 

Exp     : num                        { Num $1 }
        | var                        { Var $1 }
        | false                      { BFalse }
        | true                       { BTrue }
        | Exp '+' Exp                { Add $1 $3 }
        | Exp '-' Exp                { Sub $1 $3 }
        | Exp '*' Exp                { Mul $1 $3 }
        | Exp "&&" Exp               { And $1 $3 }
        | Exp "||" Exp               { Or $1 $3 }
        | "!" Exp                    { Not $2 }
        | if Exp then Exp else Exp   { If $2 $4 $6 }
        | '\\' var ':' Type "->" Exp { Lam $2 $4 $6 }
        | Exp Exp                    { App $1 $2 }
        | '(' Exp ')'                { Paren $2 }
        | Exp "==" Exp               { Eq $1 $3 }
        | Exp ">" Exp                { Bg $1 $3 }
        | Exp ">=" Exp               { BE $1 $3 }
        | let var "=" Exp in Exp     { Let $2 $4 $6 }

Type    : Bool                       { TBool }
        | Number                     { TNum }
        | '(' Type "->" Type ')'     { TFun $2 $4 }


{ 

parseError :: [Token] -> a 
parseError _ = error "Syntax error!"

}