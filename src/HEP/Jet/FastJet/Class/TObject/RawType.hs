{-# LANGUAGE ForeignFunctionInterface, TypeFamilies, MultiParamTypeClasses, 
             FlexibleInstances, TypeSynonymInstances, 
             EmptyDataDecls, ExistentialQuantification, ScopedTypeVariables #-}

module HROOT.Class.TObject.RawType where


-- import Foreign.Ptr
import Foreign.ForeignPtr
-- import Foreign.Marshal.Array

import HROOT.TypeCast  

data RawTObject
newtype TObject = TObject (ForeignPtr RawTObject) deriving (Eq, Ord, Show)
instance FPtr TObject where
   type Raw TObject = RawTObject
   get_fptr (TObject fptr) = fptr
   cast_fptr_to_obj = TObject
