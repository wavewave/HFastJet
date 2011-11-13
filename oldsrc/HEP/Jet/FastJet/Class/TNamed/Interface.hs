{-# LANGUAGE ForeignFunctionInterface, TypeFamilies, MultiParamTypeClasses, 
             FlexibleInstances, TypeSynonymInstances, 
             EmptyDataDecls, ExistentialQuantification, ScopedTypeVariables #-}

-- module HEP.Jet.FastJet.Class.Interface where

module HEP.Jet.FastJet.Class.TNamed.Interface where


import Data.Word
import Foreign.ForeignPtr
import HEP.Jet.FastJet.TypeCast

import HEP.Jet.FastJet.Class.TNamed.RawType

import HEP.Jet.FastJet.Class.TObject.Interface

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
