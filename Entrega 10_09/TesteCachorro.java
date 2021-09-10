package Exercícios;

public class TesteCachorro {

	public static void main(String[] args) {

		Cachorro Brutus = new Cachorro("Brutus",2,"sim","sim");
		Cachorro Tita = new Cachorro("Tita",10,"sim","sim");
		
		Brutus.imprimirInfo();
		
		System.out.println("\n***************************************");
		
		Tita.imprimirInfo();
		
	}

}
