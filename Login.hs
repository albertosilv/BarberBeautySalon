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
    Mensagens.senhaParaLogin


cadastro :: (IO()) -> IO()
cadastro menu = do
    Mensagens.menuCadastro
    opcao <- Util.lerEntradaString
    escolheCadastro menu opcao

escolheCadastro :: (IO()) -> String -> IO()
escolheCadastro menu opcao | opcao == "1" = cadastroComum menu | opcao == "2" = cadastroEmpresa menu | opcao == "3" = menu | otherwise = do {Mensagens.opcaoInvalida; cadastro menu}

cadastroComum :: (IO()) -> IO()
cadastroComum menu = do
        Mensagens.senhaParaLogin


cadastroEmpresa :: (IO()) -> IO()
cadastroEmpresa menu = do
        Mensagens.senhaParaLogin

redefinirSenha :: (IO()) -> IO()
redefinirSenha menu = do
  Mensagens.emailParaRedefinirSenha
  email <- Util.lerEntradaString
  Mensagens.novaSenha
  senha <- Util.lerEntradaString
  Mensagens.senhaRedefinida
  do {  Mensagens.senhaRedefinida; menu}



    

