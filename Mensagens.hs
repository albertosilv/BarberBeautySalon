module Mensagens where
import Util
import Data.List
import System.IO

menuPrincipal :: IO ()
menuPrincipal = do
    putStrLn("\n           -----MENU PRINCIPAL-----")
    putStrLn("\nComo deseja prosseguir?")
    putStrLn("[1] Login")
    putStrLn("[2] Redefinir Senha")
    putStrLn("[3] Cadastro")
    putStrLn("[4] Sair\n")

menuCadastro :: IO ()
menuCadastro = do
    putStrLn("\n           -----MENU PRINCIPAL-----")
    putStrLn("\nComo deseja prosseguir?")
    putStrLn("[1] Cadastro de empresa")
    putStrLn("[2] Cadastro de usuária comum")
    putStrLn("[3] Sair\n")

opcaoInvalida :: IO()
opcaoInvalida = do
     putStrLn("\nError: OPÇÃO INVÁLIDA\n")

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
    putStr("\nCADASTRADO EFETUADO COM SUCESSO!")