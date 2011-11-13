{-# LANGUAGE ForeignFunctionInterface, TypeFamilies, MultiParamTypeClasses, 
             FlexibleInstances, TypeSynonymInstances, 
             EmptyDataDecls, ExistentialQuantification, ScopedTypeVariables #-}

-- module HEP.Jet.FastJet.Class.Interface where

module HEP.Jet.FastJet.Class.Deletable.Interface where


import Data.Word
import Foreign.ForeignPtr
import HEP.Jet.FastJet.TypeCast

import HEP.Jet.FastJet.Class.Deletable.RawType




class IDeletable a where

    delete :: a -> IO () 




