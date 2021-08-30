programa
{
	
	funcao inicio()
	{
		inteiro mat[3][3], linha, coluna, somaTotal=0, somaDi=0

		para(linha=0;linha<3;linha++)
		{
			para(coluna=0;coluna<3;coluna++)
			{
				escreva("\nInsira um número inteiro: ")
				leia(mat[linha][coluna])

				somaTotal+=mat[linha][coluna]

				
			}
		}
		para(linha=0;linha<3;linha++)
		{
			para(coluna=0;coluna<3;coluna++)
			{
				se(linha==coluna)
				{
					somaDi+=mat[linha][coluna]
				}
			}
		}
		escreva("\nA soma dos valores da matriz é igual a: ", somaTotal)
		escreva("\nA soma dos valores da diagonal é igual a: ", somaDi)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 93; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {mat, 6, 10, 3}-{linha, 6, 21, 5}-{coluna, 6, 28, 6}-{somaTotal, 6, 36, 9}-{somaDi, 6, 49, 6};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */