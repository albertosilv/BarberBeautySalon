import Util
import Mensagens
import Login

main :: IO ()
main = do
	putStr("      === Bem-vindo ao BarberBeautySalon ===\n")
	Mensagens.menuPrincipal
	opcao <- Util.lerEntradaString
	escolheOpcao opcao

escolheOpcao :: String -> IO()
escolheOpcao opcao | opcao == "1" = Login.login main
				     | otherwise = do {Mensagens.opcaoInvalida; main}

