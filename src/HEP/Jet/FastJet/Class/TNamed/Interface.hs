{-# LANGUAGE ForeignFunctionInterface, TypeFamilies, MultiParamTypeClasses, 
             FlexibleInstances, TypeSynonymInstances, 
             EmptyDataDecls, ExistentialQuantification, ScopedTypeVariables #-}

-- module HROOT.Class.Interface where

module HROOT.Class.TNamed.Interface where


import Data.Word
import Foreign.ForeignPtr
import HROOT.TypeCast

import HROOT.Class.TNamed.RawType

import HROOT.Class.TObject.Interface

-- | 
--   Class TNamed
--   reference : http://root.cern.ch

class (ITObject a) => ITNamed a where

    setName :: a -> String -> IO () 

    setNameTitle :: a -> String -> String -> IO () 
    -- | SetTitle method
    --   
    --   > SetTitle( char* name, char* title ) 
    --   

    setTitle :: a -> String -> IO () 

instance Existable TNamed where
  data Exist TNamed = forall a. (FPtr a, ITNamed a) => ETNamed a

upcastTNamed :: (FPtr a, ITNamed a) => a -> TNamed
upcastTNamed h = let fh = get_fptr h
                     fh2 :: ForeignPtr RawTNamed = castForeignPtr fh
                 in cast_fptr_to_obj fh2
