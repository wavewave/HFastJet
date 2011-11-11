{-# LANGUAGE ForeignFunctionInterface, TypeFamilies, MultiParamTypeClasses, 
             FlexibleInstances, TypeSynonymInstances, 
             EmptyDataDecls, ExistentialQuantification, ScopedTypeVariables #-}

-- module HROOT.Class.Interface where

module HROOT.Class.TClass.Interface where


import Data.Word
import Foreign.ForeignPtr
import HROOT.TypeCast

import HROOT.Class.TClass.RawType

import HROOT.Class.TDictionary.Interface


class (ITDictionary a) => ITClass a where

instance Existable TClass where
  data Exist TClass = forall a. (FPtr a, ITClass a) => ETClass a

upcastTClass :: (FPtr a, ITClass a) => a -> TClass
upcastTClass h = let fh = get_fptr h
                     fh2 :: ForeignPtr RawTClass = castForeignPtr fh
                 in cast_fptr_to_obj fh2
