{-# LANGUAGE FlexibleInstances, FlexibleContexts, TypeFamilies, 
             MultiParamTypeClasses, OverlappingInstances, IncoherentInstances #-}

module HEP.Jet.FastJet.Class.TNamed.Cast where


import Foreign.Ptr
import Foreign.ForeignPtr
import HEP.Jet.FastJet.TypeCast
import System.IO.Unsafe

import HEP.Jet.FastJet.Class.TNamed.RawType
import HEP.Jet.FastJet.Class.TNamed.Interface

instance (ITNamed a, FPtr a) => Castable a (Ptr RawTNamed) where
  cast = unsafeForeignPtrToPtr . castForeignPtr . get_fptr
  uncast = cast_fptr_to_obj . castForeignPtr . unsafePerformIO . newForeignPtr_ 

instance Castable TNamed (Ptr RawTNamed) where
  cast = unsafeForeignPtrToPtr . castForeignPtr . get_fptr
  uncast = cast_fptr_to_obj . castForeignPtr . unsafePerformIO . newForeignPtr_ 
