{-# LANGUAGE FlexibleInstances, FlexibleContexts, TypeFamilies, 
             MultiParamTypeClasses, OverlappingInstances, IncoherentInstances #-}

module HROOT.Class.TNamed.Cast where


import Foreign.Ptr
import Foreign.ForeignPtr
import HROOT.TypeCast
import System.IO.Unsafe

import HROOT.Class.TNamed.RawType
import HROOT.Class.TNamed.Interface

instance (ITNamed a, FPtr a) => Castable a (Ptr RawTNamed) where
  cast = unsafeForeignPtrToPtr . castForeignPtr . get_fptr
  uncast = cast_fptr_to_obj . castForeignPtr . unsafePerformIO . newForeignPtr_ 

instance Castable TNamed (Ptr RawTNamed) where
  cast = unsafeForeignPtrToPtr . castForeignPtr . get_fptr
  uncast = cast_fptr_to_obj . castForeignPtr . unsafePerformIO . newForeignPtr_ 
