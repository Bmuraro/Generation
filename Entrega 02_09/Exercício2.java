package Exerc�cios;

import java.util.Scanner;

public class Exerc�cio2 {

	public static void main(String[] args) {

		Scanner leia = new Scanner(System.in);
		
		int num,x, contPar=0, contImpar=0;
		
		for(x=1;x<=10;x++)
		{
			System.out.println("\nInsira um n�mero: ");
			num =leia.nextInt();
			
			if(num%2==0)
			{
				contPar++;
			}
			else
			{
				contImpar++;
			}
		}
		System.out.printf("\nTemos um total de %d n�meros pares",contPar);
		System.out.printf("\nTemos um total de %d n�meros �mpares",contImpar);
	}

}
