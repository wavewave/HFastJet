{-# LANGUAGE ForeignFunctionInterface #-}

-- module HEP.Jet.FastJet.Class.FFI where

module HEP.Jet.FastJet.Class.Deletable.FFI where


import Foreign.C            
import Foreign.Ptr

-- import HEP.Jet.FastJet.Class.Interface

-- #include ""

import HEP.Jet.FastJet.Class.Deletable.RawType


#include "HROOTDeletable.h"



