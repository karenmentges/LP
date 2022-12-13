module Interpreter where


data Expr = BTrue
          | BFalse
          | Num Int
          | Add Expr Expr
          | And Expr Expr
          | If Expr Expr Expr
          deriving Show


step :: Expr -> Maybe Expr
step (Add (Num n1) (Num n2)) = Just (Num (n1 + n2))
step (Add (Num n1) e2) = case step e2 of
                            Just e2' -> Just (Add (Num n1) e2')
                            _        -> Nothing
step (Add e1 e2) = case step e1 of
                        Just e1' -> Just (Add e1' e2)
                        _        -> Nothing
step (And BTrue e2) = Just e2
step (And BFalse _) = Just BFalse
step (And e1 e2) = case step e1 of
                        Just e1' -> Just (And e1' e2)
                        _        -> Nothing
step (If BTrue e1 _) = Just e1
step (If BFalse _ e2) = Just e2
step (If e e1 e2) = case step e of
                        Just e' -> Just (If e' e1 e2)
                        _       -> Nothing
step e = Just e


data T = TBool
       | TNum
       deriving Show

typeof :: Expr -> Maybe Ty
typeof BTrue = Just TBool
typeof BFalse = Just TBool
typeof (Num _) = Just TNum
typeof (Add e1 e2) = case (typeof e1) of
                        Just TNum -> case (typeof e2) of
                                        Just TNum -> Just TNum
                                        _         -> Nothing
                        _         -> Nothing
typeof (And e1 e2) = case (typeof e1, typeof e2) of
                        (Just TBool, Just TBool) -> Just TBool
                        _                        -> Nothing




