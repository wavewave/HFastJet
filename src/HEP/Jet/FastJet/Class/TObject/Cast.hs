{-# LANGUAGE FlexibleInstances, FlexibleContexts, TypeFamilies, 
             MultiParamTypeClasses, OverlappingInstances, IncoherentInstances #-}

module HROOT.Class.TObject.Cast where


import Foreign.Ptr
import Foreign.ForeignPtr
import HROOT.TypeCast
import System.IO.Unsafe

import HROOT.Class.TObject.RawType
import HROOT.Class.TObject.Interface

instance (ITObject a, FPtr a) => Castable a (Ptr RawTObject) where
  cast = unsafeForeignPtrToPtr . castForeignPtr . get_fptr
  uncast = cast_fptr_to_obj . castForeignPtr . unsafePerformIO . newForeignPtr_ 

instance Castable TObject (Ptr RawTObject) where
  cast = unsafeForeignPtrToPtr . castForeignPtr . get_fptr
  uncast = cast_fptr_to_obj . castForeignPtr . unsafePerformIO . newForeignPtr_ 
