module Login where
import Util
import Mensagens
import Data.List
import System.IO


login :: (IO()) -> IO()
login menu = do

    Mensagens.emailParaLogin
    email <- Util.lerEntradaString

    Mensagens.senhaParaLogin
    senha <- Util.lerEntradaString

    

