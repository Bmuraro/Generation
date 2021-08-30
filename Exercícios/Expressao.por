programa
{
	inclua biblioteca Matematica-->mat
	
	funcao inicio()
	{
		inteiro A, B, C
		real R, S, D

		escreva("\nInsira um número para A: ")
		leia(A)
		escreva("\nInsira um número para B: ")
		leia(B)
		escreva("\nInsira um número para C: ")
		leia(C)
		
		R=mat.potencia((A+B),2.0)
		S=mat.potencia((B+C),2.0)
		
		D=(R+S)/2.0

		escreva("\nO resultado é: ", D)
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 90; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */