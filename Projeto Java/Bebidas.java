package projetoJava;

import java.text.NumberFormat;

public class Bebidas{

	// Atributos
	
	private String bebidas;
	private float valor;
	
	// Construtores
	
	public Bebidas() {
		
		this.bebidas = bebidas;
	}

	// Métodos
	public String getBebidas() {
		return bebidas;
	}


	public void setBebidas(String bebidas) {
		this.bebidas = bebidas;
	}
	
	
	public float getValor() {
		return valor;
	}


	public void setValor(float valor) {
		this.valor = valor;
	}

	// Método para os valores da bebida.
	public void bebidasAlcoolicas() {
		
		System.out.println("\n1 - Vinho, R$ 16.00");
		System.out.println("\n2 - Cerveja, R$ 9.00");
		System.out.println("\n3 - Azul, R$ 13.00");
		System.out.println("\n4 - Corote, R$ 3.00");
		System.out.println("\n5 - Caipirinha, R$ 22.00");
	}
	
	public void bebidasNaturais() {
		
		System.out.println("\n1 - Refrigerante, R$ 14.00");
		System.out.println("\n2 - Suco, R$ 9.00");
		System.out.println("\n3 - Água, R$ 6.00");
	}
	
	public void bebidasInfo() {
		
		System.out.println("\n1 - Alcoolicas");
		System.out.println("\n2 - Naturais");
		System.out.println("\n0 - Ir para o carrinho");
		
	}
	
	public String formatarMoeda() {
		
		NumberFormat nf = NumberFormat.getCurrencyInstance();
		nf.setMinimumFractionDigits(0);
		String formatarMoeda = nf.format(valor);
		return formatarMoeda;
	}
	
	public void imprimir() {
		
		System.out.println("\n"+this.formatarMoeda());
	}
}