package Exerc�cios;

import java.util.Scanner;

public class exerc�cioArray3 
{

	public static void main(String[] args) 
	{

		final int linha=3,coluna=3;
		int numeros [][] =new int [linha][coluna];
		int contMais10=0, contMenos10=0;
		
		Scanner leia = new Scanner(System.in);
		
		for(int l=0;l<linha;l++)
		{
			for(int c=0;c<coluna;c++)
			{
				System.out.println("\nInsira um n�mero: ");
				numeros[l][c] = leia.nextInt();		
			}
		}
		for(int l=0;l<linha;l++)
		{
			for(int c=0;c<coluna;c++)
			{
				
				if(numeros[l][c]>10)
				{
				contMais10++;
				System.out.println("\n"+numeros[l][c]+" � maior que 10");
				}
				else
				{
				}
			}
		}
		System.out.println("\nTemos "+contMais10+" n�mero(s) maior que 10.");
 	}
}
		

