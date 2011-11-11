{-# LANGUAGE ForeignFunctionInterface #-}

-- module HROOT.Class.FFI where

module HROOT.Class.Deletable.FFI where


import Foreign.C            
import Foreign.Ptr

-- import HROOT.Class.Interface

-- #include ""

import HROOT.Class.Deletable.RawType


#include "HROOTDeletable.h"



