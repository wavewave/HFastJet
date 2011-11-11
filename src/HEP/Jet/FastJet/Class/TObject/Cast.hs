{-# LANGUAGE FlexibleInstances, FlexibleContexts, TypeFamilies, 
             MultiParamTypeClasses, OverlappingInstances, IncoherentInstances #-}

module HEP.Jet.FastJet.Class.TObject.Cast where


import Foreign.Ptr
import Foreign.ForeignPtr
import HEP.Jet.FastJet.TypeCast
import System.IO.Unsafe

import HEP.Jet.FastJet.Class.TObject.RawType
import HEP.Jet.FastJet.Class.TObject.Interface

instance (ITObject a, FPtr a) => Castable a (Ptr RawTObject) where
  cast = unsafeForeignPtrToPtr . castForeignPtr . get_fptr
  uncast = cast_fptr_to_obj . castForeignPtr . unsafePerformIO . newForeignPtr_ 

instance Castable TObject (Ptr RawTObject) where
  cast = unsafeForeignPtrToPtr . castForeignPtr . get_fptr
  uncast = cast_fptr_to_obj . castForeignPtr . unsafePerformIO . newForeignPtr_ 
