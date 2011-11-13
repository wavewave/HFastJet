{-# LANGUAGE ForeignFunctionInterface #-}

-- module HEP.Jet.FastJet.Class.FFI where

module HEP.Jet.FastJet.Class.TClass.FFI where


import Foreign.C            
import Foreign.Ptr

-- import HEP.Jet.FastJet.Class.Interface

-- #include ""

import HEP.Jet.FastJet.Class.TClass.RawType
import HEP.Jet.FastJet.Class.TObject.RawType

#include "HROOTTClass.h"

foreign import ccall "HROOTTClass.h TClass_SetName" c_tclass_setname 
  :: (Ptr RawTClass) -> CString -> IO ()
foreign import ccall "HROOTTClass.h TClass_SetNameTitle" c_tclass_setnametitle 
  :: (Ptr RawTClass) -> CString -> CString -> IO ()
foreign import ccall "HROOTTClass.h TClass_SetTitle" c_tclass_settitle 
  :: (Ptr RawTClass) -> CString -> IO ()
foreign import ccall "HROOTTClass.h TClass_Draw" c_tclass_draw 
  :: (Ptr RawTClass) -> CString -> IO ()
foreign import ccall "HROOTTClass.h TClass_FindObject" c_tclass_findobject 
  :: (Ptr RawTClass) -> CString -> IO (Ptr RawTObject)
foreign import ccall "HROOTTClass.h TClass_GetName" c_tclass_getname 
  :: (Ptr RawTClass) -> IO CString
foreign import ccall "HROOTTClass.h TClass_IsA" c_tclass_isa 
  :: (Ptr RawTClass) -> IO (Ptr RawTClass)
foreign import ccall "HROOTTClass.h TClass_Paint" c_tclass_paint 
  :: (Ptr RawTClass) -> CString -> IO ()
foreign import ccall "HROOTTClass.h TClass_printObj" c_tclass_printobj 
  :: (Ptr RawTClass) -> CString -> IO ()
foreign import ccall "HROOTTClass.h TClass_SaveAs" c_tclass_saveas 
  :: (Ptr RawTClass) -> CString -> CString -> IO ()
foreign import ccall "HROOTTClass.h TClass_Write" c_tclass_write 
  :: (Ptr RawTClass) -> CString -> CInt -> CInt -> IO CInt
foreign import ccall "HROOTTClass.h TClass_delete" c_tclass_delete 
  :: (Ptr RawTClass) -> IO ()

