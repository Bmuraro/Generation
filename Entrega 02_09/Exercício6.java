package Exerc�cios;

import java.util.Scanner;

public class Exerc�cio6 {

	public static void main(String[] args) {

		Scanner leia = new Scanner(System.in);
		
		int num, mediaNum, somaNum=0, contNum=0;
		
		do
		{
			System.out.println("\nInsira um n�mero: ");
			num = leia.nextInt();
			
			if(num%3==0)
			{
				contNum++;
				somaNum+=num;
			}
			
		}
		while (num!=0);
		
		mediaNum=somaNum/contNum;
		System.out.printf("\nA m�dia dos m�ltiplos de 3 � igual a: %d", mediaNum);
	}
	

}
