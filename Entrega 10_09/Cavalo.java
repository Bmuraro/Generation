package Exercícios;

public class Cavalo extends Animal {
	
	private String correr;
	
	public Cavalo(String nome, int idade, String som, String correr)
	{
		super(nome, idade, som);
		this.correr=correr;
	}
	

	public String getCorrer() {
		return correr;
	}


	public void setCorrer(String correr) {
		this.correr = correr;
	}


	public void imprimirInfo()
	{
		System.out.println("\nNome do animal: "+getNome()+"\nIdade(anos): "+getIdade()+"\nEmite som? "
							+getSom()+"\nO animal corre? "+correr);
	}
	
	@Override
	public void sound(String sound)
	{
		System.out.println("O som do cavalo é: irrruuummm Brrr");
	}
	
}
