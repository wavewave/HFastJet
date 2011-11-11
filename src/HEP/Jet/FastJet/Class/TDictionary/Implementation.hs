{-# LANGUAGE ForeignFunctionInterface, TypeFamilies, MultiParamTypeClasses, 
             FlexibleInstances, TypeSynonymInstances, EmptyDataDecls, 
             OverlappingInstances, IncoherentInstances #-}

module HROOT.Class.TDictionary.Implementation where


import HROOT.TypeCast

import HROOT.Class.TDictionary.RawType
import HROOT.Class.TDictionary.FFI
import HROOT.Class.TDictionary.Interface
import HROOT.Class.TDictionary.Cast
import HROOT.Class.TClass.RawType
import HROOT.Class.TClass.Cast
import HROOT.Class.TClass.Interface
import HROOT.Class.TNamed.RawType
import HROOT.Class.TNamed.Cast
import HROOT.Class.TNamed.Interface
import HROOT.Class.TObject.RawType
import HROOT.Class.TObject.Cast
import HROOT.Class.TObject.Interface
import HROOT.Class.Deletable.RawType
import HROOT.Class.Deletable.Cast
import HROOT.Class.Deletable.Interface

import Data.Word
-- import Foreign.C            
-- import Foreign.Ptr
import Foreign.ForeignPtr

import System.IO.Unsafe














