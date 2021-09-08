package Exercícios;

public class TestePaciente {

	public static void main(String[] args) {

Paciente[] internacao = new Paciente[3];
		
internacao[0]= new Paciente("Geovana Silva",1402);
internacao[1]= new Paciente("Gabriel Martins",1407);
internacao[2]= new Paciente("Bruno Muraro",1408);
		
		for(Paciente roda: internacao)
		{
			roda.imprimirInfo();
		}
		
	}

}
