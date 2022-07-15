module Mensagens where
import Util
import Data.List
import System.IO

menuPrincipal :: IO ()
menuPrincipal = do
    putStrLn("\n           -----MENU PRINCIPAL-----")
    putStrLn("\nComo deseja prosseguir?")
    putStrLn("[1] Login Empresa")
    putStrLn("[2] Login Cliente")
    putStrLn("[3] Cadastro")
    putStrLn("[4] Sair\n")

menuCadastro :: IO ()
menuCadastro = do
    putStrLn("\n           -----MENU PRINCIPAL-----")
    putStrLn("\nComo deseja prosseguir?")
    putStrLn("[1] Cadastro de empresa")
    putStrLn("[2] Cadastro de usuário comum")
    putStrLn("[3] Sair\n")

menuEmpresa :: IO()
menuEmpresa = do
    putStrLn("\n    ---- EMPRESA ----")
    putStrLn("\nOlá, como deseja prosseguir?")
    putStrLn("[1] Membros")
    putStrLn("[2] Serviços")
    putStrLn("[3] Agendamentos")
    putStrLn("[4] Promoções")
    putStrLn("[5] Balanço")
    putStrLn("[6] Configurações")
    putStrLn("[7] Voltar ao menu principal\n")

menuMembros :: IO()
menuMembros = do
    putStrLn("\n Membros")
    putStrLn("[1] Cadastrar membro na empresa")
    putStrLn("[2] Listar membros da empresa")
    putStrLn("[3] Atualizar membro da empresa")
    putStrLn("[4] Remover membro da empresa")

menuServicos :: IO()
menuServicos = do
    putStrLn("\n Serviços")
    putStrLn("[1] Cadastrar serviço da empresa")
    putStrLn("[2] Listar serviços da empresa")
    putStrLn("[3] Atualizar serviço da empresa")
    putStrLn("[4] Remover serviço da empresa")

menuAgendamentos :: IO()
menuAgendamentos = do
    putStrLn("\n Agendamentos")
    putStrLn("[1] Visualizar agendamentos")
    putStrLn("[2] Remover agendamento")
    putStrLn("[3] Modificar status do agendamento")

menuCliente :: IO()
menuCliente = do
    putStrLn("\n    ---- CLIENTE ----")
    putStrLn("\nOlá, como deseja prosseguir?")
    putStrLn("[1] Agendamentos")
    putStrLn("[2] Empresas")
    putStrLn("[3] Promoções")
    putStrLn("[4] Configurações")
    putStrLn("[5] Retornar para o menu principal")

cadastrarNomeEmpresa :: IO()
cadastrarNomeEmpresa = do
    putStrLn ("\n   ---- CADASTRO DE EMPRESA ----")
    putStr("\nInforme o nome:")

informeNome :: IO()
informeNome = do
    putStr("\nInforme o nome:")

informeSenha :: IO()
informeSenha = do
    putStr("Informe a senha:")

informeEmail :: IO()
informeEmail = do
    putStr("Informe o email:")

informeTelefone :: IO()
informeTelefone = do
    putStr("Informe o telefone:")

informeCPF :: IO()
informeCPF = do
    putStr("Informe o CPF:")

informeEmpresa :: IO()
informeEmpresa = do
    putStr("Informe a empresa:")

cadastrarDescricao :: IO()
cadastrarDescricao = do
    putStr("Informe do que se trata o serviço:")

empresaCadastrada :: IO()
empresaCadastrada = do
    putStrLn("\n Empresa já cadastrada!")

membroCadastrado :: IO()
membroCadastrado = do
    putStrLn("\n Membro já cadastrado!")

servicoCadastrado :: IO()
servicoCadastrado = do
    putStrLn("\n Serviço já cadastrado!")

clienteCadastrado :: IO()
clienteCadastrado = do
    putStrLn("\n Cliente já cadastrado!")

opcaoInvalida :: IO()
opcaoInvalida = do
     putStrLn("\nError: OPÇÃO INVÁLIDA\n")

usuarioInvalido :: IO()
usuarioInvalido = do
    putStrLn("\nUsuário Inválido!")

emailParaLogin :: IO()
emailParaLogin = do
    putStr("\nInforme seu email para fazer o login: ")

senhaParaLogin :: IO()
senhaParaLogin = do
    putStr("\nInforme sua senha para fazer o login: ")

emailParaRedefinirSenha :: IO()
emailParaRedefinirSenha = do
    putStr("\nInforme seu email para redefinir Senha: ")

novaSenha :: IO()
novaSenha = do
      putStr("\nInforme sua nova senha: ")

senhaRedefinida :: IO()
senhaRedefinida = do
      putStr("\n SENHA REDEFINIDA COM SUCESSO !! ")

cadastradoEfetuado :: IO()
cadastradoEfetuado = do
    putStr("\nCADASTRADO EFETUADO COM SUCESSO!\n")