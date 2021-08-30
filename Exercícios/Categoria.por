programa
{
	
	funcao inicio()
	{
		inteiro idade
//Infantil A = 5 a 7 anos
//Infantil B = 8 a 11 anos
//Juvenil A = 12 a 13 anos
//Juvenil B = 14 a 17 anos
//Adultos = Maiores de 18 anos

		escreva("\nOs nadadores serão incluídos em categorias de acordo com sua idade.\n\nDigite sua idade:")
		leia(idade)
		
		se(idade < 5)
		{
			escreva("\nLamentamos, porém a idade mínima para entrar no grupo de natação é de 5 anos.")
			}
			senao se(idade >=5 e idade <= 7)
			{
				escreva("\nVocê está na categoria: Infantil A.")
				}
				senao se(idade >=8 e idade<=11)
				{
					escreva("\nVocê está na categoria: Infantil B.")
					}
					senao se(idade >=12 e idade <=13)
					{
						escreva("\nVocê está na categoria: Juvenil A.")
						}
						senao se(idade >=14 e idade <=17)
						{
							escreva("\nVocê está na categoria: Juvenil B.")
							}
							senao
							{
								escreva("\nVocê está na categoria: Adultos.")
								}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 919; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */