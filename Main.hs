import Util
import Mensagens
import Login
import ControllerEmpresa
import ControllerCliente

main :: IO ()
main = do
    putStr("\n      === Bem-vindo ao BarberBeautySalon ===\n")
    Mensagens.menuPrincipal
    opcao <- Util.lerEntradaString
    escolheOpcao opcao

escolheOpcao :: String -> IO()
escolheOpcao opcao 
    | opcao == "1" = ControllerEmpresa.verificaEmpresa main
    | opcao == "2" = ControllerCliente.verificaCliente main
    | opcao == "3" = Login.cadastro main
    | otherwise = do {Mensagens.opcaoInvalida; main}
