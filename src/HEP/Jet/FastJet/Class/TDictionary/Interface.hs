{-# LANGUAGE ForeignFunctionInterface, TypeFamilies, MultiParamTypeClasses, 
             FlexibleInstances, TypeSynonymInstances, 
             EmptyDataDecls, ExistentialQuantification, ScopedTypeVariables #-}

-- module HROOT.Class.Interface where

module HROOT.Class.TDictionary.Interface where


import Data.Word
import Foreign.ForeignPtr
import HROOT.TypeCast

import HROOT.Class.TDictionary.RawType

import HROOT.Class.TNamed.Interface


class (ITNamed a) => ITDictionary a where




