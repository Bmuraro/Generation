programa
{
	
	funcao inicio()
	{
		real n1, n2,n3,media,mediaGeral,somaMedia=0.0
		inteiro x

		para(x=1;x<=4;x++)
		{
			escreva("\nEntre com a primeira nota: ")
			leia(n1)
			escreva("\nEntre com a segunda nota: ")
			leia(n2)
			escreva("\nEntre com a terceira nota: ")
			leia(n3)

			media = (n1+n2+n3)/3
			escreva("\nMédia alune ", x, " :", media)
			se(media>=7 e media<=10)
			{
				escreva("\nAlune Aprovade")
				}
				senao se(media>=5 e media<7)
				{
					escreva("\nAlune de Exame")	
					}
					senao
					{
						escreva("\nAlune Reprovade")
						}
						somaMedia = somaMedia + media //somaMedia += media
			}
			mediaGeral = somaMedia / 4
			escreva("\nMédia Geral: ", mediaGeral)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 85; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */