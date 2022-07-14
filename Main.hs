import Util
import Mensagens
import Login

main :: IO ()
main = do
	putStr("\n      === Bem-vindo ao BarberBeautySalon ===\n")
	Mensagens.menuPrincipal
	opcao <- Util.lerEntradaString
	escolheOpcao opcao

escolheOpcao :: String -> IO()
escolheOpcao opcao | opcao == "1" = Login.login main
              | opcao == "2" = Login.redefinirSenha main
              | opcao == "3" = Login.cadastro main
				     | otherwise = do {Mensagens.opcaoInvalida; main}

