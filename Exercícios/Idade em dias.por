programa
{
	funcao inicio()
	{
		inteiro dias, meses, anos, total

		escreva("\nSepare quantos anos, meses e dias você tem hoje!\n")
		escreva("\nDigite quantos anos possui: ")
		leia(anos)
		escreva("\nDigite quantos meses possui: ")
		leia(meses)
		escreva("\nDigite quantos dias possui: ")
		leia(dias)

		total = dias + (meses*30)+(anos*365)

		escreva("\nSua idade em dias é de: ",total)		
	}
	}
	
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 94; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */