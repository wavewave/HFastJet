{-# LANGUAGE ForeignFunctionInterface, TypeFamilies, MultiParamTypeClasses, 
             FlexibleInstances, TypeSynonymInstances, EmptyDataDecls, 
             OverlappingInstances, IncoherentInstances #-}

module HROOT.Class.TObject.Implementation where


import HROOT.TypeCast

import HROOT.Class.TObject.RawType
import HROOT.Class.TObject.FFI
import HROOT.Class.TObject.Interface
import HROOT.Class.TObject.Cast
import HROOT.Class.TClass.RawType
import HROOT.Class.TClass.Cast
import HROOT.Class.TClass.Interface
import HROOT.Class.Deletable.RawType
import HROOT.Class.Deletable.Cast
import HROOT.Class.Deletable.Interface

import Data.Word
-- import Foreign.C            
-- import Foreign.Ptr
import Foreign.ForeignPtr

import System.IO.Unsafe


instance ITObject TObject where
  draw = xform1 c_tobject_draw
  findObject = xform1 c_tobject_findobject
  getName = xform0 c_tobject_getname
  isA = xform0 c_tobject_isa
  paint = xform1 c_tobject_paint
  printObj = xform1 c_tobject_printobj
  saveAs = xform2 c_tobject_saveas
  write = xform3 c_tobject_write
instance IDeletable TObject where
  delete = xform0 c_tobject_delete

instance ITObject (Exist TObject) where
  draw (ETObject x) = draw x
  findObject (ETObject x) = findObject x
  getName (ETObject x) = getName x
  isA (ETObject x) = isA x
  paint (ETObject x) = paint x
  printObj (ETObject x) = printObj x
  saveAs (ETObject x) = saveAs x
  write (ETObject x) = write x
instance IDeletable (Exist TObject) where
  delete (ETObject x) = delete x


newTObject :: IO TObject
newTObject = xformnull c_tobject_newtobject



instance FPtr (Exist TObject) where
  type Raw (Exist TObject) = RawTObject
  get_fptr (ETObject obj) = castForeignPtr (get_fptr obj)
  cast_fptr_to_obj fptr = ETObject (cast_fptr_to_obj (fptr :: ForeignPtr RawTObject) :: TObject)
