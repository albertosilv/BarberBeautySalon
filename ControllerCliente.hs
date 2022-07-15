module ControllerCliente where
import Util
import Mensagens
import Data.List
import System.IO

cadastrarCliente :: (IO()) -> IO()
cadastrarCliente menu = do
    Mensagens.informeNome
    nome <- Util.lerEntradaString

    Mensagens.informeEmail
    email <- Util.lerEntradaString

    Mensagens.informeTelefone
    telefone <- Util.lerEntradaString
    
    Mensagens.informeSenha
    senha <- Util.lerEntradaString

    arq <- readFile "files/clientes.txt"
    let lista = ((Data.List.map (Util.splitListaTxt(==',')) (lines arq)))

    if (Util.verificaCadastro email senha lista)
        then do Mensagens.clienteCadastrado
    else do
        let clienteStr = nome ++ "," ++ email ++ "," ++ telefone ++ "," ++ senha ++ "\n"
        appendFile "files/clientes.txt" (clienteStr)
        Mensagens.cadastradoEfetuado

verificaCliente :: (IO()) -> IO()
verificaCliente menu = do
    Mensagens.emailParaLogin
    email <- Util.lerEntradaString

    Mensagens.senhaParaLogin
    senha <- Util.lerEntradaString
    
    arq <- readFile "files/clientes.txt"
    let lista = ((Data.List.map (Util.splitListaTxt(==',') ) (lines arq)))

    if (Util.verificaCadastro email senha lista)
        then do {loginCliente menu}
    else do
        {Mensagens.usuarioInvalido; menu}

loginCliente :: (IO()) -> IO()
loginCliente menu = do
    Mensagens.menuCliente
    putStr("Opção: ")  