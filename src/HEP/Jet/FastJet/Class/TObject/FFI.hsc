{-# LANGUAGE ForeignFunctionInterface #-}

-- module HEP.Jet.FastJet.Class.FFI where

module HEP.Jet.FastJet.Class.TObject.FFI where


import Foreign.C            
import Foreign.Ptr

-- import HEP.Jet.FastJet.Class.Interface

-- #include ""

import HEP.Jet.FastJet.Class.TObject.RawType
import HEP.Jet.FastJet.Class.TClass.RawType

#include "HROOTTObject.h"

foreign import ccall "HROOTTObject.h TObject_delete" c_tobject_delete 
  :: (Ptr RawTObject) -> IO ()
foreign import ccall "HROOTTObject.h TObject_newTObject" c_tobject_newtobject 
  :: IO (Ptr RawTObject)
foreign import ccall "HROOTTObject.h TObject_Draw" c_tobject_draw 
  :: (Ptr RawTObject) -> CString -> IO ()
foreign import ccall "HROOTTObject.h TObject_FindObject" c_tobject_findobject 
  :: (Ptr RawTObject) -> CString -> IO (Ptr RawTObject)
foreign import ccall "HROOTTObject.h TObject_GetName" c_tobject_getname 
  :: (Ptr RawTObject) -> IO CString
foreign import ccall "HROOTTObject.h TObject_IsA" c_tobject_isa 
  :: (Ptr RawTObject) -> IO (Ptr RawTClass)
foreign import ccall "HROOTTObject.h TObject_Paint" c_tobject_paint 
  :: (Ptr RawTObject) -> CString -> IO ()
foreign import ccall "HROOTTObject.h TObject_printObj" c_tobject_printobj 
  :: (Ptr RawTObject) -> CString -> IO ()
foreign import ccall "HROOTTObject.h TObject_SaveAs" c_tobject_saveas 
  :: (Ptr RawTObject) -> CString -> CString -> IO ()
foreign import ccall "HROOTTObject.h TObject_Write" c_tobject_write 
  :: (Ptr RawTObject) -> CString -> CInt -> CInt -> IO CInt

