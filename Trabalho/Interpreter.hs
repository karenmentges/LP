module Interpreter where

import Lexer


subst :: String -> Expr -> Expr -> Expr
subst x n b@(Var v) = if v == x then
                        n
                      else
                        b
subst x n (Lam v t b) = Lam v t (subst x n b)
subst x n (App e1 e2) = App (subst x n e1) (subst x n e2)
subst x n (Add e1 e2) = Add (subst x n e1) (subst x n e2)
subst x n (Sub e1 e2) = Sub (subst x n e1) (subst x n e2)
subst x n (Mul e1 e2) = Mul (subst x n e1) (subst x n e2)
subst x n (And e1 e2) = And (subst x n e1) (subst x n e2)
subst x n (Or e1 e2)  = Or (subst x n e1) (subst x n e2)
subst x n (Not e) = Not (subst x n e)
subst x n (If e e1 e2) = If (subst x n e) (subst x n e1) (subst x n e2)
subst x n (Paren e) = Paren (subst x n e)
subst x n (Eq e1 e2) = Eq (subst x n e1) (subst x n e2)
subst x n (Bg e1 e2) = Bg (subst x n e1) (subst x n e2)
subst x n (BE e1 e2) = BE (subst x n e1) (subst x n e2)
subst x n (Let y e1 e2) = Let y (subst x n e1) (subst x n e2)
subst x n (Pair e1 e2) = Pair (subst x n e1) (subst x n e2)
subst x n (Proj e v) = Proj (subst x n e) v
subst x n e = e 


isvalue :: Expr -> Bool
isvalue BTrue       = True
isvalue BFalse      = True
isvalue (Num _)     = True
isvalue (Lam _ _ _) = True
isvalue _           = False


step :: Expr -> Maybe Expr 
step (Add (Num n1) (Num n2)) = Just (Num (n1 + n2))
step (Add (Num n1) e2) = case step e2 of 
                           Just e2' -> Just (Add (Num n1) e2')
                           _        -> Nothing
step (Add e1 e2) = case step e1 of 
                     Just e1' -> Just (Add e1' e2)
                     _        -> Nothing 
step (Sub (Num n1) (Num n2)) = Just (Num (n1 - n2))
step (Sub (Num n1) e2) = case step e2 of 
                           Just e2' -> Just (Sub (Num n1) e2')
                           _        -> Nothing
step (Sub e1 e2) = case step e1 of 
                     Just e1' -> Just (Sub e1' e2)
                     _        -> Nothing  
step (Mul (Num n1) (Num n2)) = Just (Num (n1 * n2))
step (Mul (Num n1) e2) = case step e2 of 
                           Just e2' -> Just (Mul (Num n1) e2')
                           _        -> Nothing
step (Mul e1 e2) = case step e1 of 
                     Just e1' -> Just (Mul e1' e2)
                     _        -> Nothing                               
step (And BTrue e2) = Just e2 
step (And BFalse _) = Just BFalse 
step (And e1 e2) = case step e1 of 
                     Just e1' -> Just (And e1' e2)
                     _        -> Nothing
step (Or BFalse e2) = Just e2 
step (Or BTrue _) = Just BTrue 
step (Or e1 e2) = case step e1 of 
                     Just e1' -> Just (Or e1' e2)
                     _        -> Nothing  
step (Not BFalse) = Just BTrue 
step (Not BTrue) = Just BFalse                                        
step (If BTrue e1 _) = Just e1 
step (If BFalse _ e2) = Just e2 
step (If e e1 e2) = case step e of 
                      Just e' -> Just (If e' e1 e2)
                      _       -> Nothing
step (App e1@(Lam x t b) e2) | isvalue e2 = Just (subst x e2 b)
                             | otherwise = case step e2 of 
                                             Just e2' -> Just (App e1 e2')
                                             _        -> Nothing 
step (App e1 e2) = case step e1 of 
                     Just e1' -> Just (App e1' e2)
                     _        -> Nothing
step (Paren e) = Just e
step (Eq e1 e2) | isvalue e1 && isvalue e2 = if (e1 == e2) then
                                               Just BTrue 
                                             else 
                                               Just BFalse 
                | isvalue e1 = case step e2 of 
                                 Just e2' -> Just (Eq e1 e2')
                                 _        -> Nothing
                | otherwise = case step e1 of 
                                Just e1' -> Just (Eq e1' e2)
                                _        -> Nothing 
step (Bg (Num n1) (Num n2)) = if (n1 > n2) then
                                Just BTrue 
                              else 
                                Just BFalse 
step (Bg (Num n1) e2) = case step e2 of 
                           Just e2' -> Just (Bg (Num n1) e2')
                           _        -> Nothing
step (Bg e1 e2) = case step e1 of 
                     Just e1' -> Just (Bg e1' e2)
                     _        -> Nothing                                 
step (BE (Num n1) (Num n2)) = if (n1 >= n2) then
                                Just BTrue 
                              else 
                                Just BFalse 
step (BE (Num n1) e2) = case step e2 of 
                           Just e2' -> Just (BE (Num n1) e2')
                           _        -> Nothing
step (BE e1 e2) = case step e1 of 
                     Just e1' -> Just (BE e1' e2)
                     _        -> Nothing   
step (Let y e1 e2) | isvalue e1 = Just (subst y e1 e2)
                   | otherwise = case step e1 of 
                                    Just e1' -> Just (Let y e1' e2)
                                    _        -> Nothing                                     
step (Pair e1 e2) | isvalue e1 = case step e2 of 
                                 Just e2' -> Just (Pair e1 e2')
                                 _        -> Nothing
                  | otherwise = case step e1 of 
                                Just e1' -> Just (Pair e1' e2)
                                _        -> Nothing     
step (Proj (Pair e1 e2) v) | isvalue e1 && isvalue e2 = if v == 1 
                                                          then Just e1
                                                          else if v == 2
                                                            then Just e2
                                                            else error "Index error!"
                           | isvalue e1 = case step e2 of 
                                            Just e2' -> Just (Proj (Pair e1 e2') v)
                                            _        -> Nothing
                           | otherwise = case step e1 of 
                                            Just e1' -> Just (Proj (Pair e1' e2) v)
                                            _        -> Nothing                                                                
step e = Just e 


eval :: Expr -> Expr
eval e | isvalue e = e
       | otherwise = case step e of
                        Just e' -> eval e'
                        _       -> error "Interpreter error!"