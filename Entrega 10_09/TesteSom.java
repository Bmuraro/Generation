package Exercícios;

import java.util.Scanner;

public class TesteSom {

	public static void main(String[] args) {

		Scanner leia = new Scanner(System.in);
		
		Cavalo cavalo = new Cavalo("Jack",5,"sim","sim");
		Cachorro cachorro = new Cachorro("Brutus",2,"sim","sim");
		Preguiça preguiça = new Preguiça("Sid",12,"sim","sim");	
		Animal animal = null;
		
        int n;
        System.out.println("\nSelecione um animal: ");
        System.out.println("\n0 -- preguiça\t\n1 -- cavalo\t\n2 -- cachorro");
        n=leia.nextInt();
		System.out.println("\nO animal escolhido foi: "+n);
		
		switch(n)
		{
		case 0: 
			animal =preguiça;
			preguiça.imprimirInfo();
			animal.sound("zzzz");
			
		break;
		case 1: 
			animal =cavalo;
			cavalo.imprimirInfo();
			animal.sound("irrruuummm Brrr");
		break;
		case 2: 
			animal =cachorro;
			cachorro.imprimirInfo();
			animal.sound("au au");
			break;
		default: System.out.println("\nErro inesperado");
		}
		
	}

}
