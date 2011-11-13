{-# LANGUAGE FlexibleInstances, FlexibleContexts, TypeFamilies, 
             MultiParamTypeClasses, OverlappingInstances, IncoherentInstances #-}

module HEP.Jet.FastJet.Class.TClass.Cast where


import Foreign.Ptr
import Foreign.ForeignPtr
import HEP.Jet.FastJet.TypeCast
import System.IO.Unsafe

import HEP.Jet.FastJet.Class.TClass.RawType
import HEP.Jet.FastJet.Class.TClass.Interface

instance (ITClass a, FPtr a) => Castable a (Ptr RawTClass) where
  cast = unsafeForeignPtrToPtr . castForeignPtr . get_fptr
  uncast = cast_fptr_to_obj . castForeignPtr . unsafePerformIO . newForeignPtr_ 

instance Castable TClass (Ptr RawTClass) where
  cast = unsafeForeignPtrToPtr . castForeignPtr . get_fptr
  uncast = cast_fptr_to_obj . castForeignPtr . unsafePerformIO . newForeignPtr_ 
