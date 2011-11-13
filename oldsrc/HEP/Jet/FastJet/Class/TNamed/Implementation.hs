{-# LANGUAGE ForeignFunctionInterface, TypeFamilies, MultiParamTypeClasses, 
             FlexibleInstances, TypeSynonymInstances, EmptyDataDecls, 
             OverlappingInstances, IncoherentInstances #-}

module HEP.Jet.FastJet.Class.TNamed.Implementation where


import HEP.Jet.FastJet.TypeCast

import HEP.Jet.FastJet.Class.TNamed.RawType
import HEP.Jet.FastJet.Class.TNamed.FFI
import HEP.Jet.FastJet.Class.TNamed.Interface
import HEP.Jet.FastJet.Class.TNamed.Cast
import HEP.Jet.FastJet.Class.TClass.RawType
import HEP.Jet.FastJet.Class.TClass.Cast
import HEP.Jet.FastJet.Class.TClass.Interface
import HEP.Jet.FastJet.Class.TObject.RawType
import HEP.Jet.FastJet.Class.TObject.Cast
import HEP.Jet.FastJet.Class.TObject.Interface
import HEP.Jet.FastJet.Class.Deletable.RawType
import HEP.Jet.FastJet.Class.Deletable.Cast
import HEP.Jet.FastJet.Class.Deletable.Interface

import Data.Word
-- import Foreign.C            
-- import Foreign.Ptr
import Foreign.ForeignPtr

import System.IO.Unsafe


instance ITNamed TNamed where
  setName = xform1 c_tnamed_setname
  setNameTitle = xform2 c_tnamed_setnametitle
  setTitle = xform1 c_tnamed_settitle
instance ITObject TNamed where
  draw = xform1 c_tnamed_draw
  findObject = xform1 c_tnamed_findobject
  getName = xform0 c_tnamed_getname
  isA = xform0 c_tnamed_isa
  paint = xform1 c_tnamed_paint
  printObj = xform1 c_tnamed_printobj
  saveAs = xform2 c_tnamed_saveas
  write = xform3 c_tnamed_write
instance IDeletable TNamed where
  delete = xform0 c_tnamed_delete

instance ITNamed (Exist TNamed) where
  setName (ETNamed x) = setName x
  setNameTitle (ETNamed x) = setNameTitle x
  setTitle (ETNamed x) = setTitle x
instance ITObject (Exist TNamed) where
  draw (ETNamed x) = draw x
  findObject (ETNamed x) = findObject x
  getName (ETNamed x) = getName x
  isA (ETNamed x) = isA x
  paint (ETNamed x) = paint x
  printObj (ETNamed x) = printObj x
  saveAs (ETNamed x) = saveAs x
  write (ETNamed x) = write x
instance IDeletable (Exist TNamed) where
  delete (ETNamed x) = delete x

-- | constructor : 
--   
--   > TNamed( char* name, char* title) 
--   

newTNamed :: String -> String -> IO TNamed
newTNamed = xform1 c_tnamed_newtnamed



instance FPtr (Exist TNamed) where
  type Raw (Exist TNamed) = RawTNamed
  get_fptr (ETNamed obj) = castForeignPtr (get_fptr obj)
  cast_fptr_to_obj fptr = ETNamed (cast_fptr_to_obj (fptr :: ForeignPtr RawTNamed) :: TNamed)
