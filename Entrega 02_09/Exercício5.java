package Exerc�cios;

import java.util.Scanner;

public class Exerc�cio5 {

	public static void main(String[] args) {

		Scanner leia = new Scanner(System.in);
		
		int num, somaNum=0;
		
		do
		{
			System.out.println("\nInsira um n�mero: ");
			num = leia.nextInt();
		
			somaNum+=num;			
		}
		while(num!=0);
		
		System.out.printf("\n A somat�ria dos n�meros equivale a: %d", somaNum);
	}

}
