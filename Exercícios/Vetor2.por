programa
{
	
	funcao inicio()
	{
		real dado[10], maior=0.0, media=0.0, somaDado=0.0, contmaior=0.0
		inteiro x

		para(x=0;x<10;x++)
		{
			escreva("\nInsira o valor do dado: ")
			leia(dado[x])

			se(maior<dado[x])
			{
				maior=dado[x]
			}
			
			somaDado+=dado[x]
			
			media= somaDado/10
		}
		para(x=0;x<10;x++)
		{
			se(maior == dado[x])
			{
				contmaior++
			}
		}
		escreva("\nA frequencia de aparecimento do mairo valor nos lançamentos foi de: ",contmaior)
		escreva("\nA soma dos valores dos lançamentos equivale a: ", somaDado)
		escreva("\nA média dos valores em relação aos lançamentos foi de: ",media)
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 638; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */