{-# LANGUAGE ForeignFunctionInterface #-}

-- module HEP.Jet.FastJet.Class.FFI where

module HEP.Jet.FastJet.Class.TDictionary.FFI where


import Foreign.C            
import Foreign.Ptr

-- import HEP.Jet.FastJet.Class.Interface

-- #include ""

import HEP.Jet.FastJet.Class.TDictionary.RawType
import HEP.Jet.FastJet.Class.TObject.RawType
import HEP.Jet.FastJet.Class.TClass.RawType

#include "HROOTTDictionary.h"














