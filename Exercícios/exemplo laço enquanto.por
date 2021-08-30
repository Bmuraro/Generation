programa
{
	
	funcao inicio()
	{
		inteiro num,somaPar=0,contImpar=0

		escreva("\nDigite um número inteiro: ")
		leia(num)

		enquanto(num !=0)
		{
			se(num % 2 == 0)
			{
				somaPar += num
				}
				senao
				{
					contImpar ++ //contImpar = contImpar + 1
					}
					escreva("\nDigite um número inteiro: ") //pedir novo número para não ficar em loop infinito
					leia(num)
			}
			escreva("\n Somatória dos Pares: ", somaPar)
			escreva("\n Quantidade de Ímpares: ", contImpar)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 178; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */