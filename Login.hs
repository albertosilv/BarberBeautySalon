module Login where
import Util
import Mensagens
import ControllerEmpresa
import ControllerCliente
import Data.List
import System.IO

cadastro :: (IO()) -> IO()
cadastro menu = do
    Mensagens.menuCadastro
    opcao <- Util.lerEntradaString
    escolheCadastro menu opcao

escolheCadastro :: (IO()) -> String -> IO()
escolheCadastro menu opcao 
    | opcao == "1" = do {ControllerEmpresa.cadastrarEmpresa menu; menu}
    | opcao == "2" = do {ControllerCliente.cadastrarCliente menu; menu}
    | opcao == "3" = menu 
    | otherwise = do {Mensagens.opcaoInvalida; cadastro menu}

redefinirSenha :: (IO()) -> IO()
redefinirSenha menu = do
    Mensagens.emailParaRedefinirSenha
    email <- Util.lerEntradaString
    Mensagens.novaSenha
    senha <- Util.lerEntradaString
    Mensagens.senhaRedefinida
    do {  Mensagens.senhaRedefinida; menu}