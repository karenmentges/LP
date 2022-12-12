data Nat = Zero | Suc Nat
           deriving Show

representacao1a4 = do putStrLn "1 - Suc Zero" 
                      putStrLn "2 - Suc (Suc Zero)"
                      putStrLn "3 - Suc (Suc (Suc Zero))"
                      putStrLn "4 - Suc (Suc (Suc (Suc Zero)))"

nat2integer :: Nat -> Integer
nat2integer Zero = 0
nat2integer (Suc nat) = 1 + nat2integer nat
    
integer2nat :: Integer -> Nat
integer2nat 0 = Zero
integer2nat int = Suc (integer2nat (int - 1))

natAdd :: Nat -> Nat -> Nat
natAdd nat Zero = nat
natAdd nat1 (Suc nat2) = Suc (natAdd nat1 nat2)

natSub :: Nat -> Nat -> Nat
natSub nat Zero = nat
natSub (Suc nat1) (Suc nat2) = natSub nat1 nat2

natMul:: Nat -> Nat -> Nat
natMul nat1 Zero = Zero
natMul Zero nat2 = Zero
natMul nat1 (Suc nat2) = natAdd nat1 (natMul nat1 nat2)