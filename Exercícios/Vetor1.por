programa
{
	
	funcao inicio()
	{
		real pont[5],maior=0.0
		inteiro x

		para(x=0;x<5;x++)
		{
			escreva("\nInsira a pontuação de posição ",x+1,": ")
			leia(pont[x])
		
			se(maior<pont[x])
			{
				maior=pont[x]
			}	
		}
		escreva("\nA maior pontuação é de: ", maior, " pontos.")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 74; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {pont, 6, 7, 4}-{maior, 6, 15, 5}-{x, 7, 10, 1};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */