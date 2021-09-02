package Exercícios;

import java.util.Scanner;

public class Exercício6 {

	public static void main(String[] args) {

		Scanner leia = new Scanner(System.in);
		
		int num, mediaNum, somaNum=0, contNum=0;
		
		do
		{
			System.out.println("\nInsira um número: ");
			num = leia.nextInt();
			
			if(num%3==0)
			{
				contNum++;
				somaNum+=num;
			}
			
		}
		while (num!=0);
		
		mediaNum=somaNum/contNum;
		System.out.printf("\nA média dos múltiplos de 3 é igual a: %d", mediaNum);
	}
	

}
