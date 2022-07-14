module Util where
import System.IO
import Data.List 

lerEntradaString :: IO String
lerEntradaString = do
    x <- getLine
    return x

