programa
{
	inclua biblioteca Matematica-->mat
	
	funcao inicio()
	{
		real A,B,C,D

		escreva("\nInsira um valor para A: ")
		leia(A)
		escreva("\nInsira um valor para B: ")
		leia(B)
		escreva("\nInsira valor para C: ")
		leia(C)
		escreva("\nInsira valor para D: ")
		leia(D)

		se (mat.potencia(C,2) >= 1000)
		{
			escreva("\nO quadrado de C é: ", mat.potencia(C,2.0))
			}
			senao
			{
				escreva("\nO quadrado de A(",A, ")é: ", mat.potencia(A,2.0))
				escreva("\nO quadrado de B(",B, ")é: ", mat.potencia(B,2.0))
				escreva("\nO quadrado de C(",C, ")é: ", mat.potencia(C,2.0))
				escreva("\nO quadrado de D(",D, ")é: ", mat.potencia(D,2.0))
				}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 626; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */