package Exemplo;

import java.util.Scanner;

public class Exercicio1_01_09 {

	public static void main(String[] args) {
		
		int a, b, c, maior = 0;
		
		Scanner leia = new Scanner(System.in);
		
		System.out.println("\nInsira o primeiro n�mero: ");
		a = leia.nextInt();
		System.out.println("\nInsira o segundo n�mero: ");
		b = leia.nextInt();
		System.out.println("\nInsira o terceiro n�mero: ");
		c = leia.nextInt();
		
		if(a>b && a>c)
		{
			maior=a;
		}
		else if(b>c)
		{
			maior=b;
		}
		else
		{
			maior=c;
		}
			System.out.println("\nO maior n�mero �: " + maior);
	}

}
