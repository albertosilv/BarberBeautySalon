module Util where
import System.IO
import Data.List 

lerEntradaString :: IO String
lerEntradaString = do
    x <- getLine
    return x

--- Split = Gera uma lista de String ---
splitListaTxt     :: (Char -> Bool) -> String -> [String]
splitListaTxt p s =  case dropWhile p s of
                      "" -> []
                      s' -> w : splitListaTxt p s''
                            where (w, s'') = break p s' 

isCadastrado :: String -> [[String]] -> Bool
isCadastrado _ [] = False
isCadastrado c (x:xs) 
    | ((headCadastrado c x) == False) = isCadastrado c xs
    | otherwise = True

headCadastrado :: String -> [String] -> Bool
headCadastrado c (x:xs) = (c == x)

-- Verifica se o serviço já foi cadastrado --
servicoPresenteEmpresa :: String -> String -> [String] -> Bool
servicoPresenteEmpresa s e (x:xs) = (s == x) && (e == (last xs))

verificaServico :: String -> String -> [[String]] -> Bool
verificaServico s e [] = False
verificaServico s e (x:xs) 
    | ((servicoPresenteEmpresa s e x) == False) = verificaServico s e xs
    | otherwise = True

-- Verifica se a empresa/cliente já foi cadastrada --
presencaEmpresaCliente :: String -> String -> [String] -> Bool
presencaEmpresaCliente email senha (x1:x2:xs) = (email == x2) && (senha == (last xs))

verificaCadastro :: String -> String -> [[String]] -> Bool
verificaCadastro email senha  [] = False
verificaCadastro email senha (x:xs) 
    | ((presencaEmpresaCliente email senha x) == False) = verificaCadastro email senha xs
    | otherwise = True

-- Verifica se o membro já foi cadastrado --
verificaPresencaMembro :: String -> String -> [String] -> Bool
verificaPresencaMembro cpf emp (x:xs) = (cpf == x) && (emp == (last xs))

verificaCadastroMembro :: String -> String -> [[String]] -> Bool
verificaCadastroMembro cpf emp  [] = False
verificaCadastroMembro cpf emp (x:xs) 
    | ((verificaPresencaMembro cpf emp x) == False) = verificaCadastroMembro cpf emp xs
    | otherwise = True

-- Verifica a empresa que está na lista --
verificaDadoDaEmpresa :: String -> [String] -> Bool
verificaDadoDaEmpresa emp (x:xs) = (emp == (last xs))

retornaDadoEmpresa :: String -> [[String]] -> [[String]]
retornaDadoEmpresa emp (xs:[]) = [xs] 
retornaDadoEmpresa emp (x:xs)
    | ((verificaDadoDaEmpresa emp x) == False) = retornaDadoEmpresa emp xs
    | otherwise = x : retornaDadoEmpresa emp xs