{-# LANGUAGE ForeignFunctionInterface, TypeFamilies, MultiParamTypeClasses, 
             FlexibleInstances, TypeSynonymInstances, 
             EmptyDataDecls, ExistentialQuantification, ScopedTypeVariables #-}

-- module HROOT.Class.Interface where

module HROOT.Class.Deletable.Interface where


import Data.Word
import Foreign.ForeignPtr
import HROOT.TypeCast

import HROOT.Class.Deletable.RawType




class IDeletable a where

    delete :: a -> IO () 




