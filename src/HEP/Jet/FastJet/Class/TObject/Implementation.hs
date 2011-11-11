{-# LANGUAGE ForeignFunctionInterface, TypeFamilies, MultiParamTypeClasses, 
             FlexibleInstances, TypeSynonymInstances, EmptyDataDecls, 
             OverlappingInstances, IncoherentInstances #-}

module HEP.Jet.FastJet.Class.TObject.Implementation where


import HEP.Jet.FastJet.TypeCast

import HEP.Jet.FastJet.Class.TObject.RawType
import HEP.Jet.FastJet.Class.TObject.FFI
import HEP.Jet.FastJet.Class.TObject.Interface
import HEP.Jet.FastJet.Class.TObject.Cast
import HEP.Jet.FastJet.Class.TClass.RawType
import HEP.Jet.FastJet.Class.TClass.Cast
import HEP.Jet.FastJet.Class.TClass.Interface
import HEP.Jet.FastJet.Class.Deletable.RawType
import HEP.Jet.FastJet.Class.Deletable.Cast
import HEP.Jet.FastJet.Class.Deletable.Interface

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
