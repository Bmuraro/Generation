programa
{
	
	funcao inicio()
	{
		real num1, num2, res=0.0
		inteiro op

		escreva("\nEntre com o primeiro número: ")
		leia(num1)
		escreva("\nEntre com o segundo número: ")
		leia(num2)

		escreva("\n\t\tCalculadora Família 32 -- É NOIS")
		escreva("\n1-- Soma\n2-- Diferença\n3-- Multiplicação\n4-- Divisão")
		escreva("\nDigite sua opção: ")
		leia(op)

		escolha(op)
		{
			caso 1:
			res = num1 + num2
			pare
			caso 2:
			res = num1 - num2
			pare
			caso 3:
			res = num1 * num2
			pare
			caso 4:
			
			se(num2==0)
			{
				escreva("\nNão é possível fazer divisão por zero!")
				}
				senao
				{
			res = num1 / num2
				}
			pare
			caso contrario:
			escreva("\nOpção Inválida!!!")
			
			}
			escreva("\nResultado: ", res)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 641; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */