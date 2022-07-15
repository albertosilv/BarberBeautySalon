module ControllerEmpresa where
import Util
import Mensagens
import Data.List
import System.IO

cadastrarEmpresa :: (IO()) -> IO()
cadastrarEmpresa menu = do
    Mensagens.cadastrarNomeEmpresa
    nome <- Util.lerEntradaString

    Mensagens.informeEmail
    email <- Util.lerEntradaString

    Mensagens.informeTelefone
    telefone <- Util.lerEntradaString
    
    Mensagens.informeSenha
    senha <- Util.lerEntradaString

    arq <- readFile "files/empresas.txt"
    let lista = Data.List.map (Util.splitListaTxt(==',')) (lines arq)

    if (Util.verificaCadastro email senha lista)
        then do Mensagens.empresaCadastrada
    else do
        let empresaStr = nome ++ "," ++ email ++ "," ++ telefone ++ "," ++ senha ++ "\n"
        appendFile "files/empresas.txt" (empresaStr)
        Mensagens.cadastradoEfetuado

verificaEmpresa :: (IO()) -> IO()
verificaEmpresa menu = do
    Mensagens.emailParaLogin
    email <- Util.lerEntradaString

    Mensagens.senhaParaLogin
    senha <- Util.lerEntradaString
    
    arq <- readFile "files/empresas.txt"
    let lista = ((Data.List.map (Util.splitListaTxt(==',')) (lines arq)))

    if (Util.verificaCadastro email senha lista)
        then do {loginEmpresa menu}
    else do
        {Mensagens.usuarioInvalido; menu}

loginEmpresa :: (IO()) -> IO()
loginEmpresa menu = do
    Mensagens.menuEmpresa
    putStr("Opção: ")    
    opcao <- Util.lerEntradaString
    if opcao == "1"
        then do menuDeMembros menu
    else if opcao == "2"
        then do menuDeServicos menu
    else do
        {Mensagens.opcaoInvalida; loginEmpresa menu}

menuDeMembros :: (IO()) -> IO()
menuDeMembros menu = do
    Mensagens.menuMembros
    opcao <- Util.lerEntradaString

    if opcao == "1"
        then do {cadastrarMembro menu; menuDeMembros menu}
    else if opcao == "2"
        then do {listarMembros menu; menuDeMembros menu}
    {-- else if opcao == "4"
        then do {removerMembro menu; menuDeMembros menu} --}
    else do
        {Mensagens.opcaoInvalida; menuDeMembros menu}

cadastrarMembro :: (IO()) -> IO()
cadastrarMembro menu = do
    Mensagens.informeCPF
    cpf <- Util.lerEntradaString    

    Mensagens.informeNome
    nome <- Util.lerEntradaString

    Mensagens.informeEmpresa
    empresa <- Util.lerEntradaString

    arq <- readFile "files/membrosEmpresas.txt"
    let lista = ((Data.List.map (Util.splitListaTxt(==',')) (lines arq)))

    if (Util.verificaCadastroMembro cpf empresa lista)
        then do Mensagens.membroCadastrado
    else do
        let membroStr = cpf ++ "," ++ nome ++ "," ++ empresa ++ "\n"
        appendFile "files/membrosEmpresas.txt" (membroStr)

listarMembros :: (IO()) -> IO()
listarMembros menu = do
    arq <- readFile "files/membrosEmpresas.txt"
    let lista = ((Data.List.map (Util.splitListaTxt(==',')) (lines arq)))

    putStr("\nInforme o nome da empresa: ")
    empresa <- Util.lerEntradaString

    let lista2 = Util.retornaDadoEmpresa empresa lista
    print(lista2)   

{--
removerMembro :: (IO()) -> IO()
removerMembro menu = do
--}    

menuDeServicos :: (IO()) -> IO()
menuDeServicos menu = do
    Mensagens.menuServicos
    opcao <- Util.lerEntradaString

    if opcao == "1"
        then do {cadastrarServico menu; menuDeServicos menu}
    else if opcao == "2"
        then do {listarServicos menu; menuDeServicos menu}
    else do
        {Mensagens.opcaoInvalida; menuDeServicos menu}

cadastrarServico :: (IO()) -> IO()
cadastrarServico menu = do
    Mensagens.informeNome
    nomeServico <- Util.lerEntradaString

    Mensagens.cadastrarDescricao
    descricaoServico <- Util.lerEntradaString

    Mensagens.informeEmpresa
    empresa <- Util.lerEntradaString

    arq <- readFile "files/servicosEmpresas.txt"
    let lista = ((Data.List.map (Util.splitListaTxt(==',')) (lines arq)))

    if (Util.verificaServico nomeServico empresa lista)
        then do Mensagens.servicoCadastrado
    else do
        let servicoStr = nomeServico ++ "," ++ descricaoServico ++ "," ++ empresa ++ "\n"
        appendFile "files/servicosEmpresas.txt" (servicoStr)

listarServicos :: (IO()) -> IO()
listarServicos menu = do
    arq <- readFile "files/servicosEmpresas.txt"
    let lista = ((Data.List.map (Util.splitListaTxt(==',') ) (lines arq)))

    putStr("\nInforme o nome da empresa: ")
    empresa <- Util.lerEntradaString

    let lista2 = Util.retornaDadoEmpresa empresa lista
    print(lista2)