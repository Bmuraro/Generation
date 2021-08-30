programa
{
	
	funcao inicio()
	{
		inteiro numeros[3][3], contPar=0, contImpar=0, linha, coluna

		para(linha=0;linha<3;linha++)
		{
			para(coluna=0;coluna<3;coluna++)
			{
				escreva("\nEntre com um número inteiro: ")
				leia(numeros[linha][coluna])

				se(numeros[linha][coluna] % 2 == 0)
				{
					contPar++
					}
					senao
					{
						contImpar++
						}
				}
			}
			para(linha=0;linha<3;linha++)
			{
				para(coluna=0;coluna<3;coluna++)
				{
					se(linha==coluna)
					{
						escreva("\nDiagonal Principal: ",numeros[linha][coluna])
						}
					}
				}
				escreva("\nQuantidade de números pares: ", contPar)
				escreva("\nQuantidade de números ímpares: ", contImpar)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 542; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {numeros, 6, 10, 7}-{contPar, 6, 25, 7}-{contImpar, 6, 36, 9}-{linha, 6, 49, 5}-{coluna, 6, 56, 6};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */