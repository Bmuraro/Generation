package Exemplo;

import java.util.Scanner;

public class Exercicio1_01_09 {

	public static void main(String[] args) {
		
		int a, b, c, maior = 0;
		
		Scanner leia = new Scanner(System.in);
		
		System.out.println("\nInsira o primeiro número: ");
		a = leia.nextInt();
		System.out.println("\nInsira o segundo número: ");
		b = leia.nextInt();
		System.out.println("\nInsira o terceiro número: ");
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
			System.out.println("\nO maior número é: " + maior);
	}

}
