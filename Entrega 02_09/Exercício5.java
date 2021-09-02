package Exercícios;

import java.util.Scanner;

public class Exercício5 {

	public static void main(String[] args) {

		Scanner leia = new Scanner(System.in);
		
		int num, somaNum=0;
		
		do
		{
			System.out.println("\nInsira um número: ");
			num = leia.nextInt();
		
			somaNum+=num;			
		}
		while(num!=0);
		
		System.out.printf("\n A somatória dos números equivale a: %d", somaNum);
	}

}
