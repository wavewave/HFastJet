{-# LANGUAGE ForeignFunctionInterface #-}

-- module HROOT.Class.FFI where

module HROOT.Class.TDictionary.FFI where


import Foreign.C            
import Foreign.Ptr

-- import HROOT.Class.Interface

-- #include ""

import HROOT.Class.TDictionary.RawType
import HROOT.Class.TObject.RawType
import HROOT.Class.TClass.RawType

#include "HROOTTDictionary.h"














