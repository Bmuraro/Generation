package Exerc�cios;

import java.io.IOException;
import java.util.Scanner;

public class Exerc�cio4 {

	public static void main(String[] args) {

		Scanner leia = new Scanner(System.in);
		
		int est, gen, pessoa=1,idade,contMas=0,contFem=0,contCalIda=0,contNerIda=0, contOut=0, contCal=0, contNer=0, contAgr=0, contFemNer=0, contMasAgr=0, contOutCal=0;
		String genero="", estado="";
		
		while (pessoa<=150)
		{
			System.out.printf("\nIndiv�duo %d, insira sua idade: ",pessoa);
			idade = leia.nextInt();
			
			while(idade<1 || idade>130)
			{
				System.out.printf("\nIndiv�duo %d, insira uma idade v�lida: ",pessoa);
				idade = leia.nextInt();
			}
			System.out.printf("\nIndiv�duo %d, com qual g�nero se identifica?",pessoa);
			System.out.println("\n1-- feminino\n2-- masculino\n3-- outros");
			System.out.println("\nDigite a op��o: ");
			gen = leia.nextInt();
			
			while(gen<1 || gen>3)
			{
				System.out.println("\n1-- feminino\n2-- masculino\n3-- outros");
				System.out.printf("\nIndiv�duo %d, insira uma op��o v�lida: ",pessoa);
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
			System.out.printf("\nIndiv�duo %d, qual o seu estado mental?", pessoa);
			System.out.println("\n1-- calmo\n2-- nervoso\n3-- agressivo");
			System.out.println("\nDigite a op��o: ");
			est = leia.nextInt();
			
			while(est<1 || est>3)
			{
				System.out.println("\n1-- calmo\n2-- nervoso\n3-- agressivo");
				System.out.printf("\nIndiv�duo %d, insira uma op��o v�lida: ",pessoa);
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
			System.out.println("O indv�duo "+pessoa+", se identifica no g�nero "+genero+"  e est� "+estado+".");
			
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
		System.out.printf("\nO n�mero de pessoas calmas � de: %d", contCal);
		System.out.printf("\nO n�mero de mulheres nervosas � de: %d", contFemNer);
		System.out.printf("\nO n�mero de homens agressivos � de: %d", contMasAgr);
		System.out.printf("\nO n�mero de outros calmos � de: %d", contOutCal);
		System.out.printf("\nO n�mero de pessoas nervosas com mais de 40 anos � de: %d", contNerIda);
		System.out.printf("\nO n�mero de pessoas calmas com menos de 18 anos � de: %d", contCalIda);
		
	}

}
