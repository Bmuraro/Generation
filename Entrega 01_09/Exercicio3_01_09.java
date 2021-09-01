package Exemplo;

import java.util.Scanner;

public class Exercicio3_01_09 {

	public static void main(String[] args) {

		int idade;
		
		Scanner leia = new Scanner(System.in);
		
		System.out.println("\nInsira sua idade: ");
		idade = leia.nextInt();
		
		if(idade>=10 && idade<=14)
		{
			System.out.println("\nVocê faz parte da categoria: Infantil.");
		}
		else if(idade>=15 && idade<=17)
		{
			System.out.println("\nVocê faz parte da categoria: Juvenil.");
		}
		else if(idade>=18 && idade<=25)
		{
			System.out.println("\nVocê faz parte da categoria: Adulto.");
		}
		else
		{
			System.out.println("\nVocê não está em nenhuma categoria.");
		}
		
	}

}
