package Exemplo;

import java.util.Scanner;

public class Exercicio4_01_09 {

	public static void main(String[] args) {

		Scanner leia = new Scanner(System.in);
		
		float x;
		
		System.out.println("\nInsira um n�mero qualquer: ");
		x = leia.nextFloat();
				
				if(x%2==0)
				{
					System.out.println("\nO n�mero " + x + " � par e sua raiz quadrada � igual a: " + Math.sqrt(x));
				}
				else
				{
					System.out.println("\nO n�mero " + x + " � �mpar e ao elevarmos ao quadrado obtemos: " + Math.pow(x, 2));
				}		
	}

}
