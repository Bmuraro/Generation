package Exercícios;

import java.text.NumberFormat;

public class Funcionario {

	private String sobrenome;
	private double salario;
	private int ID;
	
	public Funcionario(String sobrenome, int ID, double salario)
	{
		this.sobrenome=sobrenome;
		this.ID=ID;
		this.salario=salario;
	}
	public void imprimirInfo()
	{
		System.out.println("\nA funcionária"+sobrenome+" da ID nº: "+ID+" recebe um salário de: "+salario);
	}
	public String getSobrenome() {
		return sobrenome;
	}
	public void setSobrenome(String sobrenome) {
		this.sobrenome = sobrenome;
	}
	public double getSalario() {
		return salario;
	}
	public void setSalario(double salario) {
		this.salario = salario;
	}
	public int getID() {
		return ID;
	}
	public void setID(int iD) {
		ID = iD;
	}
	public String formatarMoeda()
	{
		NumberFormat nf= NumberFormat.getCurrencyInstance(); 
		nf.setMinimumFractionDigits(2); 
		String formatoMoeda = nf.format(salario); 
		return formatoMoeda;
	}
	public void imprimir()
	{
		System.out.println("\nO(a) funcionário(a) "+sobrenome+" da ID nº: "+ID+" recebe um salário de: "+this.formatarMoeda());
	}
	
}
