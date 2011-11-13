{-# LANGUAGE ForeignFunctionInterface, TypeFamilies, MultiParamTypeClasses, 
             FlexibleInstances, TypeSynonymInstances, EmptyDataDecls, 
             OverlappingInstances, IncoherentInstances #-}

module HEP.Jet.FastJet.Class.TDictionary.Implementation where


import HEP.Jet.FastJet.TypeCast

import HEP.Jet.FastJet.Class.TDictionary.RawType
import HEP.Jet.FastJet.Class.TDictionary.FFI
import HEP.Jet.FastJet.Class.TDictionary.Interface
import HEP.Jet.FastJet.Class.TDictionary.Cast
import HEP.Jet.FastJet.Class.TClass.RawType
import HEP.Jet.FastJet.Class.TClass.Cast
import HEP.Jet.FastJet.Class.TClass.Interface
import HEP.Jet.FastJet.Class.TNamed.RawType
import HEP.Jet.FastJet.Class.TNamed.Cast
import HEP.Jet.FastJet.Class.TNamed.Interface
import HEP.Jet.FastJet.Class.TObject.RawType
import HEP.Jet.FastJet.Class.TObject.Cast
import HEP.Jet.FastJet.Class.TObject.Interface
import HEP.Jet.FastJet.Class.Deletable.RawType
import HEP.Jet.FastJet.Class.Deletable.Cast
import HEP.Jet.FastJet.Class.Deletable.Interface

import Data.Word
-- import Foreign.C            
-- import Foreign.Ptr
import Foreign.ForeignPtr

import System.IO.Unsafe














