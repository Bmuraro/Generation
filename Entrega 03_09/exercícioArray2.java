package Exerc�cios;

import java.util.Scanner;

public class exerc�cioArray2 {

	public static void main(String[] args) {

		Scanner leia = new Scanner(System.in);
		
		int[] vet = new int [6];
		int somaPar=0, contImpar=0;
		
		for(int x=0;x<6;x++)
		{
			System.out.println("\nInsira um n�mero: ");
			vet[x]= leia.nextInt();
		}
		
		for(int x=0;x<6;x++)
		{
			
			if(vet[x]%2==0)
			{
				somaPar+=vet[x];
				System.out.println("\nO n�mero par inserido foi: "+vet[x]);
			}
			else
			{
				contImpar++;
				System.out.println("\nO n�mero �mpar inserido foi: "+vet[x]);
			}
			
		}
		System.out.printf("\nA somat�ria dos pares equivale a: %d", somaPar);
		System.out.printf("\nA contagem dos �mpares equivale a: %d", contImpar);
	}

}
