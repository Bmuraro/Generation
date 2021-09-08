package Exercícios;

public class TesteFuncionario {
	public static void main(String[] args) {
		
Funcionario[] lista = new Funcionario[3];
		
		lista[0]= new Funcionario("Santana",3325,3100);
		lista[1]= new Funcionario("Silva",3335,2900);
		lista[2]= new Funcionario("Andrade",3458,2785);
		
		for(Funcionario roda: lista)
		{
			roda.imprimir();
		}
	}
}
