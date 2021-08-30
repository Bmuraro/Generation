programa
{
	
	funcao inicio()
	{
		real N, H, E, S
//N para horas trabalhadas;
//H para horas excedentes;
//S para salário total;
//E para salário excedente;

		escreva("\nIndique a quantidade de horas trabalhadas: ")
		leia(N)

		se(N<=50)
	{
		E=0.0
		S=N*10
		escreva("\nSalário total: ", S," reais.\nSalário excedente: ",E," reais.")
		}
		senao
		{
			E=(N-50)*20
			S=N*10 + E

			escreva("\nSalário total: ",S," reais.\nSalário excedente: ",E," reais.")
			}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 432; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */