package Exercícios;

public class Paciente {

	private String nomePaciente;
	private int quarto;
	
	public Paciente(String nome, int q)
	{
		this.nomePaciente=nome;
		this.quarto=q;
	}
	public void imprimirInfo()
	{
		System.out.println("\nO(a) paciente "+nomePaciente+" encontra-se no quarto: "+quarto);
	}

	public String getNomePaciente() {
		return nomePaciente;
	}

	public void setNomePaciente(String nomePaciente) {
		this.nomePaciente = nomePaciente;
	}

	public int getQuarto() {
		return quarto;
	}

	public void setQuarto(int quarto) {
		this.quarto = quarto;
	}
}
