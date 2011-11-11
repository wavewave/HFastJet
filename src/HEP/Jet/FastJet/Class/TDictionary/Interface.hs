{-# LANGUAGE ForeignFunctionInterface, TypeFamilies, MultiParamTypeClasses, 
             FlexibleInstances, TypeSynonymInstances, 
             EmptyDataDecls, ExistentialQuantification, ScopedTypeVariables #-}

-- module HEP.Jet.FastJet.Class.Interface where

module HEP.Jet.FastJet.Class.TDictionary.Interface where


import Data.Word
import Foreign.ForeignPtr
import HEP.Jet.FastJet.TypeCast

import HEP.Jet.FastJet.Class.TDictionary.RawType

import HEP.Jet.FastJet.Class.TNamed.Interface


class (ITNamed a) => ITDictionary a where




