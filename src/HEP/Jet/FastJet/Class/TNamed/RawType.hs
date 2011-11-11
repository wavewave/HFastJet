{-# LANGUAGE ForeignFunctionInterface, TypeFamilies, MultiParamTypeClasses, 
             FlexibleInstances, TypeSynonymInstances, 
             EmptyDataDecls, ExistentialQuantification, ScopedTypeVariables #-}

module HEP.Jet.FastJet.Class.TNamed.RawType where


-- import Foreign.Ptr
import Foreign.ForeignPtr
-- import Foreign.Marshal.Array

import HEP.Jet.FastJet.TypeCast  

data RawTNamed
newtype TNamed = TNamed (ForeignPtr RawTNamed) deriving (Eq, Ord, Show)
instance FPtr TNamed where
   type Raw TNamed = RawTNamed
   get_fptr (TNamed fptr) = fptr
   cast_fptr_to_obj = TNamed
