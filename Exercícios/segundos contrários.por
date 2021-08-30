programa
{
	
	funcao inicio()
	{
		inteiro segundos, minutos, horas, duracao

		escreva("\nDigite a duração do evento em segundos: ")
		leia(duracao)
		
		horas = duracao / 3600
		minutos = (duracao % 3600)/60
		segundos = ((duracao % 3600)%60)

		escreva("\nO tempo de duração do evento é de: ",horas, "h ", minutos, "min e ",segundos, "s." )		
	}
	}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 356; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */