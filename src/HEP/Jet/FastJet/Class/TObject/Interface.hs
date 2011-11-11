{-# LANGUAGE ForeignFunctionInterface, TypeFamilies, MultiParamTypeClasses, 
             FlexibleInstances, TypeSynonymInstances, 
             EmptyDataDecls, ExistentialQuantification, ScopedTypeVariables #-}

-- module HROOT.Class.Interface where

module HROOT.Class.TObject.Interface where


import Data.Word
import Foreign.ForeignPtr
import HROOT.TypeCast

import HROOT.Class.TObject.RawType
import HROOT.Class.TClass.RawType
import HROOT.Class.Deletable.Interface


class (IDeletable a) => ITObject a where
    -- | 
    --   > void TObject::Draw( char* option )
    --   

    draw :: a -> String -> IO () 
    -- | 
    --   > TObject* TObject::FindObject( char* name )
    --   

    findObject :: a -> String -> IO TObject 
    -- | 
    --   > char* TObject::GetName()
    --   

    getName :: a -> IO String 

    isA :: a -> IO TClass 

    paint :: a -> String -> IO () 

    printObj :: a -> String -> IO () 

    saveAs :: a -> String -> String -> IO () 

    write :: a -> String -> Int -> Int -> IO Int 

instance Existable TObject where
  data Exist TObject = forall a. (FPtr a, ITObject a) => ETObject a

upcastTObject :: (FPtr a, ITObject a) => a -> TObject
upcastTObject h = let fh = get_fptr h
                      fh2 :: ForeignPtr RawTObject = castForeignPtr fh
                  in cast_fptr_to_obj fh2
