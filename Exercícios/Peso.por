programa
{
	
	funcao inicio()
	{
		real P, E, M

//P para peso;
//E para excesso;
//M para multa;
		
		escreva("\nIndique o peso da carga de tomates em Kg: ")
		leia(P)

		se (P<=50)
		{
			escreva("\nO peso está dentro do regulamento do estado de São Paulo.\nPeso excedido: 0.0Kg.\nValor da multa: 0.0 reais.")
			}
		senao{
		E = P - 50
		escreva("\nO peso da carga excedeu em: ", E, "Kg.")

		se(E > 0)
		{
			M=E*4
			escreva("\nO valor da multa é de ", M, " reais pela carga excedida.")
			}
		senao
		{
			escreva("\nA multa não é aplicável.")
			}
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 357; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */