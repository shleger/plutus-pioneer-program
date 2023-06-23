{-# LANGUAGE DataKinds           #-}
{-# LANGUAGE NoImplicitPrelude   #-}

module TestMy where

import           PlutusTx.Prelude     (Bool (..), (==), (&&))

{-# INLINABLE mkValidator2 #-}
-- This should validate if and only if the two Booleans in the redeemer are True!
mkValidator2 :: () -> (Bool, Bool) -> Bool
mkValidator2 _ (x,y) = x == y && True


