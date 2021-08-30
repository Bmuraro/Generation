programa
{
	
	funcao inicio()
	{
		real num,totalSoma=0.0,media=0.0,quant=0.0

		escreva("\nDigite um número: ")
		leia(num)

		enquanto(num>=0)
		{
			totalSoma+=num
			quant++
			media=totalSoma/quant
			
			escreva("\nDigite um número: ")
			leia(num)
		}
			escreva("\nA soma dos valores digitados equivale a: ",totalSoma)
			escreva("\nA quantidade de valores digitados equivale a: ",quant)
			escreva("\nA média dos valores digitados equivale a: ",media)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 182; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */