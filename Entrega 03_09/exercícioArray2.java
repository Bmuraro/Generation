package Exercícios;

import java.util.Scanner;

public class exercícioArray2 {

	public static void main(String[] args) {

		Scanner leia = new Scanner(System.in);
		
		int[] vet = new int [6];
		int somaPar=0, contImpar=0;
		
		for(int x=0;x<6;x++)
		{
			System.out.println("\nInsira um número: ");
			vet[x]= leia.nextInt();
		}
		
		for(int x=0;x<6;x++)
		{
			
			if(vet[x]%2==0)
			{
				somaPar+=vet[x];
				System.out.println("\nO número par inserido foi: "+vet[x]);
			}
			else
			{
				contImpar++;
				System.out.println("\nO número ímpar inserido foi: "+vet[x]);
			}
			
		}
		System.out.printf("\nA somatória dos pares equivale a: %d", somaPar);
		System.out.printf("\nA contagem dos ímpares equivale a: %d", contImpar);
	}

}
