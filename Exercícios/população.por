programa
{
	inclua biblioteca Matematica-->mat
	
	funcao inicio()
	{
		real salario,maior=0.0,somaSal=0.0,somaFi=0.0,mediaSal=0.0,mediaFi=0.0,per100=0.0, pertot=0.0
		inteiro h,filhos

		para(h=1;h<=20;h++)
		{
		escreva("\nDigite o valor do seu salário: ")
		leia(salario)
		escreva("\nDigite quantos filhos possui: ")
		leia(filhos)

		somaSal += salario
		mediaSal = somaSal/20
		somaFi+= filhos
		mediaFi = somaFi/20

		se(salario>maior)
		{ 
		 maior=salario
			}
		se(salario<=100)
		{
		 per100++
		 pertot=(per100*100)/20
				}
		}
			escreva("\nA média salarial da população é de: ", mat.arredondar(mediaSal, 2), " reais.")
			escreva("\nA média de filhos da população é de: ", mat.arredondar(mediaFi, 2), " filhos.")
			escreva("\nO maior salário é no valor de: ", maior, " reais.")
			escreva("\nO percentual de pessoas com o salário até 100 é de ",pertot, "%")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 533; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */