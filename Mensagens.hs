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

opcaoInvalida :: IO()
opcaoInvalida = do
     putStrLn("\nError: OPÇÃO INVÁLIDA\n")

emailParaLogin :: IO()
emailParaLogin = do
    putStr("\nInforme seu email para fazer o login: ")

senhaParaLogin :: IO()
senhaParaLogin = do
    putStr("\nInforme sua senha para fazer o login: ")

cadastradoEfetuado :: IO()
cadastradoEfetuado = do
    putStr("\nCADASTRADO EFETUADO COM SUCESSO!")