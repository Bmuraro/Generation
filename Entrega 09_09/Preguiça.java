package Exercícios;

public class Preguiça extends Animal {
	
	private String escalar;
	
	public Preguiça(String nome, int idade, String som, String escalar)
	{
		super(nome, idade, som);
		this.escalar=escalar;
	}
	
	
	public String getEscalar() {
		return escalar;
	}


	public void setEscalar(String escalar) {
		this.escalar = escalar;
	}


	public void imprimirInfo()
	{
		System.out.println("\nNome do animal: "+getNome()+"\nIdade(anos): "+getIdade()+"\nEmite som? "
							+getSom()+"\nO animal sobe em árvores? "+escalar);
	}
	
}