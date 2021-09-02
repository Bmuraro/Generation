package Exercícios;

import java.util.Scanner;

public class Exercício3 {

	public static void main(String[] args) {
		
		Scanner leia = new Scanner (System.in);
		int idade, contJunior=0, contSenior=0;
		
		System.out.println("\nInsira sua idade: ");
		idade = leia.nextInt();
		
		while (idade!=-99)
		{
			if(idade<21)
			{
				contJunior++;
			}
			else if (idade>50)
			{
				contSenior++;
			}
			System.out.println("\nInsira sua idade: ");
			idade = leia.nextInt();
		}
			System.out.printf("\nHá %d pessoas com menos de 21 anos.", contJunior);
			System.out.printf("\nHá %d pessoas com mais de 50 anos.", contSenior);
	}

}
