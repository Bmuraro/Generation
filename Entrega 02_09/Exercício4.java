package Exercícios;

import java.io.IOException;
import java.util.Scanner;

public class Exercício4 {

	public static void main(String[] args) {

		Scanner leia = new Scanner(System.in);
		
		int est, gen, pessoa=1,idade,contMas=0,contFem=0,contCalIda=0,contNerIda=0, contOut=0, contCal=0, contNer=0, contAgr=0, contFemNer=0, contMasAgr=0, contOutCal=0;
		String genero="", estado="";
		
		while (pessoa<=150)
		{
			System.out.printf("\nIndivíduo %d, insira sua idade: ",pessoa);
			idade = leia.nextInt();
			
			while(idade<1 || idade>130)
			{
				System.out.printf("\nIndivíduo %d, insira uma idade válida: ",pessoa);
				idade = leia.nextInt();
			}
			System.out.printf("\nIndivíduo %d, com qual gênero se identifica?",pessoa);
			System.out.println("\n1-- feminino\n2-- masculino\n3-- outros");
			System.out.println("\nDigite a opção: ");
			gen = leia.nextInt();
			
			while(gen<1 || gen>3)
			{
				System.out.println("\n1-- feminino\n2-- masculino\n3-- outros");
				System.out.printf("\nIndivíduo %d, insira uma opção válida: ",pessoa);
				gen = leia.nextInt();
			}
			
			switch(gen)
			{
			case 1:
			genero = "feminino";
			contMas++;
			break;
			case 2:
			genero = "masculino";
			contFem++;
			break;
			case 3:
			genero = "outros";
			contOut++;
			break;
			}
			System.out.printf("\nIndivíduo %d, qual o seu estado mental?", pessoa);
			System.out.println("\n1-- calmo\n2-- nervoso\n3-- agressivo");
			System.out.println("\nDigite a opção: ");
			est = leia.nextInt();
			
			while(est<1 || est>3)
			{
				System.out.println("\n1-- calmo\n2-- nervoso\n3-- agressivo");
				System.out.printf("\nIndivíduo %d, insira uma opção válida: ",pessoa);
				est = leia.nextInt();
			}
			
			switch(est)
			{
			case 1:
			estado = "calmo";
			contCal++;
			break;
			case 2:
			estado = "nervoso";
			contNer++;
			break;
			case 3:
			estado = "agressivo";
			contAgr++;
			break;
			}
			System.out.println("O indvíduo "+pessoa+", se identifica no gênero "+genero+"  e está "+estado+".");
			
			if(est>1 && est<3)
			{
				if(gen<2)
				{
					contFemNer++;
				}
			}
			if(est>2)
			{
				if(gen>1 && gen<3)
				{
					contMasAgr++;
				}
			}
			if(est<2)
			{
				if(gen>2)
				{
					contOutCal++;
				}
			}
			if(est>1 && est<3)
			{
				if(idade>40)
				{
					contNerIda++;
				}
			}
			if(est<2)
			{
				if(idade<18)
				{
					contCalIda++;
				}
			}
			pessoa++;
		}
		System.out.printf("\nO número de pessoas calmas é de: %d", contCal);
		System.out.printf("\nO número de mulheres nervosas é de: %d", contFemNer);
		System.out.printf("\nO número de homens agressivos é de: %d", contMasAgr);
		System.out.printf("\nO número de outros calmos é de: %d", contOutCal);
		System.out.printf("\nO número de pessoas nervosas com mais de 40 anos é de: %d", contNerIda);
		System.out.printf("\nO número de pessoas calmas com menos de 18 anos é de: %d", contCalIda);
		
	}

}
