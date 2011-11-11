{-# LANGUAGE ForeignFunctionInterface, TypeFamilies, MultiParamTypeClasses, 
             FlexibleInstances, TypeSynonymInstances, EmptyDataDecls, 
             OverlappingInstances, IncoherentInstances #-}

module HROOT.Class.TClass.Implementation where


import HROOT.TypeCast

import HROOT.Class.TClass.RawType
import HROOT.Class.TClass.FFI
import HROOT.Class.TClass.Interface
import HROOT.Class.TClass.Cast

import HROOT.Class.TDictionary.RawType
import HROOT.Class.TDictionary.Cast
import HROOT.Class.TDictionary.Interface
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


instance ITClass TClass where
instance ITDictionary TClass where
instance ITNamed TClass where
  setName = xform1 c_tclass_setname
  setNameTitle = xform2 c_tclass_setnametitle
  setTitle = xform1 c_tclass_settitle
instance ITObject TClass where
  draw = xform1 c_tclass_draw
  findObject = xform1 c_tclass_findobject
  getName = xform0 c_tclass_getname
  isA = xform0 c_tclass_isa
  paint = xform1 c_tclass_paint
  printObj = xform1 c_tclass_printobj
  saveAs = xform2 c_tclass_saveas
  write = xform3 c_tclass_write
instance IDeletable TClass where
  delete = xform0 c_tclass_delete

instance ITClass (Exist TClass) where

instance ITDictionary (Exist TClass) where

instance ITNamed (Exist TClass) where
  setName (ETClass x) = setName x
  setNameTitle (ETClass x) = setNameTitle x
  setTitle (ETClass x) = setTitle x
instance ITObject (Exist TClass) where
  draw (ETClass x) = draw x
  findObject (ETClass x) = findObject x
  getName (ETClass x) = getName x
  isA (ETClass x) = isA x
  paint (ETClass x) = paint x
  printObj (ETClass x) = printObj x
  saveAs (ETClass x) = saveAs x
  write (ETClass x) = write x
instance IDeletable (Exist TClass) where
  delete (ETClass x) = delete x





instance FPtr (Exist TClass) where
  type Raw (Exist TClass) = RawTClass
  get_fptr (ETClass obj) = castForeignPtr (get_fptr obj)
  cast_fptr_to_obj fptr = ETClass (cast_fptr_to_obj (fptr :: ForeignPtr RawTClass) :: TClass)
