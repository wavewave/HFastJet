{-# LANGUAGE ForeignFunctionInterface, TypeFamilies, MultiParamTypeClasses, 
             FlexibleInstances, TypeSynonymInstances, 
             EmptyDataDecls, ExistentialQuantification, ScopedTypeVariables #-}

module HROOT.Class.TClass.RawType where


-- import Foreign.Ptr
import Foreign.ForeignPtr
-- import Foreign.Marshal.Array

import HROOT.TypeCast  

data RawTClass
newtype TClass = TClass (ForeignPtr RawTClass) deriving (Eq, Ord, Show)
instance FPtr TClass where
   type Raw TClass = RawTClass
   get_fptr (TClass fptr) = fptr
   cast_fptr_to_obj = TClass
