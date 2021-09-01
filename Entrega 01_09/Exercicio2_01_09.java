package Exemplo;

import java.util.Scanner;

public class Exercicio2_01_09 {

	public static void main(String[] args) {

float a, b, c;
		
		Scanner leia = new Scanner(System.in);
		
		System.out.println("\nInsira o primeiro número: ");
		a = leia.nextFloat();
		System.out.println("\nInsira o segundo número: ");
		b = leia.nextFloat();
		System.out.println("\nInsira o terceiro número: ");
		c = leia.nextFloat();
		
		if(a>=b && b>=c)
		{
			System.out.println("\nAqui estão os valores em ordem crescente: " + c + " , "+b+" , "+a);
		}
		else if(a>=c && c>=b)
		{
			System.out.println("\nAqui estão os valores em ordem crescente: " + b + " , "+c+" , "+a);
		}
		else if(b>=a && a>=c)
		{
			System.out.println("\nAqui estão os valores em ordem crescente: " + c + " , "+a+" , "+b);
		}
		else if(b>=c && c>=a)
		{
			System.out.println("\nAqui estão os valores em ordem crescente: " + a + " , "+c+" , "+b);
		}
		else if(c>=b && b>=a)
		{
			System.out.println("\nAqui estão os valores em ordem crescente: " + a + " , "+b+" , "+c);
		}
		else if(c>a && a>b)
		{
			System.out.println("\nAqui estão os valores em ordem crescente: " + b + " , "+a+" , "+c);
		}
	}

}
