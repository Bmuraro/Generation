package Exercícios;

import java.util.Scanner;

public class exercícioArray4 {

	public static void main(String[] args) {

		Scanner leia = new Scanner(System.in);
		
		int l,c,x;
		float mat1[][] = new float [2][2];
		float mat2[][] = new float [2][2];
		float mat3[][] = new float [2][2];
		float constante;
		
		
		for(l=0;l<2;l++)
		{
			for(c=0;c<2;c++)
			{
				System.out.println("\nInsira um número para formar a primeira matriz: ");
				mat1[l][c] = leia.nextFloat();
			}
			
		}
		for(l=0;l<2;l++)
		{
			for(c=0;c<2;c++)
			{
				System.out.println("\nInsira um número para formar a segunda matriz: ");
				mat2[l][c] = leia.nextFloat();
			}
			
		}
		System.out.println("\nEscolha o que deseja fazer: ");
		System.out.println("\n1-- Somar as matrizes\n2-- Subtrair a primeira pela segunda\n3-- Adicionar uma constante em ambas\n4-- Mostrar matrizes");
		System.out.println("\nDigite a opção: ");
		x = leia.nextInt();
		while(x<1 || x>4)
		{
			System.out.println("\n1-- Somar as matrizes\n2-- Subtrair a primeira pela segunda\n3-- Adicionar uma constante em ambas\n4-- Mostrar matrizes");
			System.out.println("\nInsira uma opção válida: ");
			x = leia.nextInt();
		}
		
		switch(x)
		{
		case 1:
			for(l=0;l<2;l++)
			{
				for(c=0;c<2;c++)
				{
					mat3[l][c] = mat1[l][c] +mat2[l][c];
					System.out.println("\nSoma das matrizes equivale a: "+ mat3[l][c]);
				}
				
			}
		break;
		case 2:
			for(l=0;l<2;l++)
			{
				for(c=0;c<2;c++)
				{
					mat3[l][c] = mat2[l][c] -mat1[l][c];
					System.out.println("\nSubtração das matrizes equivale a: "+ mat3[l][c]);
				}
				
			}
		break;
		case 3:
		System.out.println("\nEntre com uma constante: ");
		constante = leia.nextFloat();
		for(l=0;l<2;l++)
		{
			for(c=0;c<2;c++)
			{
				mat1[l][c]+=constante;
				mat2[l][c]+=constante;
				
				System.out.println("\nMatriz 1: "+ mat1[l][c]);
				System.out.println("\nMatriz 2: "+ mat2[l][c]);
			}
			
		}
		break;
		case 4:
			for(l=0;l<2;l++)
			{
				for(c=0;c<2;c++)
				{
					System.out.println("\nMatriz 1: "+ mat1[l][c]);
				}
				
			}
			for(l=0;l<2;l++)
			{
				for(c=0;c<2;c++)
				{
					System.out.println("\nMatriz 2: "+ mat2[l][c]);
				}
				
			}
		break;
		default:
			System.out.println("\nOpção Inválida");
		}
		
	}

}
