package Exemplo;

import java.util.ArrayList;
import java.util.Scanner;

public class EstoqueCollection {

	public static void main(String[] args) {

		int x;
		Scanner leia = new Scanner(System.in);
		ArrayList <String> estoque = new ArrayList();
		
		do
		{
			System.out.println("\n\t\tFun��es do Estoque");
			System.out.println("\n1 - Deseja adicionar produtos ao estoque?");
			System.out.println("\n2 - Deseja remover produtos do estoque?");
			System.out.println("\n3 - Deseja atualizar produtos do estoque?");
			System.out.println("\n4 - Deseja mostrar todos os produtos do estoque?");
			System.out.println("\n0 - Deseja encerrar o programa?");
			System.out.println("\nSelecione a fun��o que deseja:");
			x=leia.nextInt();
			
			if(x<0 && x>4)
			{
			 System.out.println("\nOp��o Inv�lida");
			}
			
		switch(x)
		{
		case 1:
			leia.nextLine();
			System.out.println("\nDigite o produto para adicionar ao estoque: ");
			String produto =leia.nextLine();
			estoque.add(produto);
			break;
		case 2:
			leia.nextLine();
			System.out.println("\nDigite o produto que queira remover do estoque: ");
			String produtor =leia.nextLine();
			if(estoque.contains(produtor))
			{
				estoque.remove(produtor);
			}
			else
			{
				System.out.println("\nProduto n�o encontrado!");
			}
			System.out.println(estoque);
			break;
		case 3:
			leia.nextLine();
			System.out.println("\nDigite o produto que deseja atualizar no estoque: ");
			String antigo = leia.nextLine();
			System.out.println("\nDigite o nome do produto que entrar� no lugar do produto "+antigo+": ");
			String novo = leia.nextLine();
			
			if (estoque.contains(antigo))
			{
				estoque.remove(antigo);
				estoque.add(novo);
			}
			else
			{
				System.out.println("\nProduto n�o encontrado!");
			}
			System.out.println(estoque);
			break;
		case 4:
			System.out.println("\nOs produtos do estoque s�o: ");
			System.out.println(estoque);
			break;
		case 0:
			System.out.println("\nEncerrando o programa...");
			break;
		default:
			System.out.println("\nOp��o Inv�lida");
		}	
	}
	while(x!=0);
		
	}

}
