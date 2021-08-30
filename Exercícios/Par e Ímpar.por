programa
{
	
	funcao inicio()
	{
		inteiro X

		escreva("\nInsira um número: ")
		leia(X)

		se( X % 2 == 0)
		{
			escreva("\nO número ", X, " é par!")
			}
			senao
			{
				escreva("\nO número ", X," é ímpar!")
				}
				se (X > 0)
				{
					escreva("\nO número ", X, " é positivo!")
					}
					senao se(X < 0)
					{
						escreva("\nO número ", X, " é negativo!")
						}
						senao
						{
							escreva("\nO número ", X, " é neutro!")
							}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 395; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */