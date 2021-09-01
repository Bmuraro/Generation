package Exemplo;

import java.util.Scanner;

public class Exercicio4_01_09 {

	public static void main(String[] args) {

		Scanner leia = new Scanner(System.in);
		
		float x;
		
		System.out.println("\nInsira um número qualquer: ");
		x = leia.nextFloat();
				
				if(x%2==0)
				{
					System.out.println("\nO número " + x + " é par e sua raiz quadrada é igual a: " + Math.sqrt(x));
				}
				else
				{
					System.out.println("\nO número " + x + " é ímpar e ao elevarmos ao quadrado obtemos: " + Math.pow(x, 2));
				}		
	}

}
