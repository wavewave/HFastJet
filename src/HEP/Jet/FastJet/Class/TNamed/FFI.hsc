{-# LANGUAGE ForeignFunctionInterface #-}

-- module HROOT.Class.FFI where

module HROOT.Class.TNamed.FFI where


import Foreign.C            
import Foreign.Ptr

-- import HROOT.Class.Interface

-- #include ""

import HROOT.Class.TNamed.RawType
import HROOT.Class.TObject.RawType
import HROOT.Class.TClass.RawType

#include "HROOTTNamed.h"

foreign import ccall "HROOTTNamed.h TNamed_Draw" c_tnamed_draw 
  :: (Ptr RawTNamed) -> CString -> IO ()
foreign import ccall "HROOTTNamed.h TNamed_FindObject" c_tnamed_findobject 
  :: (Ptr RawTNamed) -> CString -> IO (Ptr RawTObject)
foreign import ccall "HROOTTNamed.h TNamed_GetName" c_tnamed_getname 
  :: (Ptr RawTNamed) -> IO CString
foreign import ccall "HROOTTNamed.h TNamed_IsA" c_tnamed_isa 
  :: (Ptr RawTNamed) -> IO (Ptr RawTClass)
foreign import ccall "HROOTTNamed.h TNamed_Paint" c_tnamed_paint 
  :: (Ptr RawTNamed) -> CString -> IO ()
foreign import ccall "HROOTTNamed.h TNamed_printObj" c_tnamed_printobj 
  :: (Ptr RawTNamed) -> CString -> IO ()
foreign import ccall "HROOTTNamed.h TNamed_SaveAs" c_tnamed_saveas 
  :: (Ptr RawTNamed) -> CString -> CString -> IO ()
foreign import ccall "HROOTTNamed.h TNamed_Write" c_tnamed_write 
  :: (Ptr RawTNamed) -> CString -> CInt -> CInt -> IO CInt
foreign import ccall "HROOTTNamed.h TNamed_delete" c_tnamed_delete 
  :: (Ptr RawTNamed) -> IO ()
foreign import ccall "HROOTTNamed.h TNamed_newTNamed" c_tnamed_newtnamed 
  :: CString -> CString -> IO (Ptr RawTNamed)
foreign import ccall "HROOTTNamed.h TNamed_SetName" c_tnamed_setname 
  :: (Ptr RawTNamed) -> CString -> IO ()
foreign import ccall "HROOTTNamed.h TNamed_SetNameTitle" c_tnamed_setnametitle 
  :: (Ptr RawTNamed) -> CString -> CString -> IO ()
foreign import ccall "HROOTTNamed.h TNamed_SetTitle" c_tnamed_settitle 
  :: (Ptr RawTNamed) -> CString -> IO ()

