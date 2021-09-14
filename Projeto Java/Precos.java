package projetoJava;

import java.text.DecimalFormat;
import java.text.DecimalFormatSymbols;
import java.text.NumberFormat;
import java.util.HashSet;
import java.util.Locale;
import java.util.Scanner;
import java.util.Set;

public class Precos extends Bebidas implements Adegaadm{
	
	public void bebidasPreco() {
			
		Scanner ler = new Scanner(System.in);
		Bebidas bebidas = new Bebidas();
		
		double somaTotal=0,Vinho=16.00, Breja=9.00, Azul=13.00, Ref=14.00, Suco=9.00, Agua=6.00, Corote=3.00, Caipirinha=22.00;
		double valorCarteira=100, visa=50, diners=1000, master=33;
		
		int num, bn, ba, fc, cc;
		String email, nome;
				
		System.out.println("\t\t******************");
		System.out.println("\n\t\tTela de cadastro");
		System.out.println("\n\t\t******************");
		System.out.println("\nCadastre o seu nome");
		nome = ler.nextLine();
		
		
		System.out.println("\nAdicione um e-mail e confirme ");
		String email1 = ler.nextLine();
		
		//Cadastro da senha
		Set <String> cadastroSenha = new HashSet <String>();
		ler.nextLine();
		
		System.out.println("\nAdicione uma senha ");
		String senha1 = ler.nextLine();
		cadastroSenha.add(senha1);
			
		
		System.out.println("\nCadastro feito com sucesso!");
		System.out.println("\n");
		
		System.out.println("\n\tBem Vinde "+ nome+ " à Adega Triunfo");
		System.out.println("\n");
		
			do {				
			System.out.println("\nEscolha uma das opções de bebidas abaixo");
			bebidas.bebidasInfo();
			num = ler.nextInt();
			
		switch(num) {
		
		case 1: 
			if(num == 1) {
				
				System.out.println("\nEscolha uma das opções");
				bebidas.bebidasAlcoolicas();
				ba = ler.nextInt();
				
			switch(ba) {
			case 1: 
				if(ba == 1) {
					somaTotal += Vinho;
				}break;
			case 2: 
				if(ba == 2) {
					somaTotal += Breja;
				}break;
			case 3: 
				if(ba == 3) {
					somaTotal += Azul;
				}
			case 4: 
				if(ba == 4) {
					somaTotal += Corote;
				}
			case 5:
				if(ba == 5) {
					somaTotal += Caipirinha;
				}
			}
		}
			
		case 2: 
			if(num == 2) {
				
				System.out.println("\nEscolha uma das opções");
				bebidas.bebidasNaturais();
				bn = ler.nextInt();
				
			switch(bn) {
			case 1:
				if(bn == 1) {
					somaTotal += Ref;
					}break;
			case 2:
				if(bn == 2) {
					somaTotal += Suco;
					}break;
			case 3:
				if(bn == 3) {
					somaTotal += Agua;
					  }break;
				  }
			  }
		  }
	   }while(num != 0);
		
		
		DecimalFormat formatoDois = new DecimalFormat("##,###,###,##0.00", new DecimalFormatSymbols (new Locale ("pt", "BR")));
        formatoDois.setMinimumFractionDigits(2); 
        formatoDois.setParseBigDecimal (true);
        
        System.out.println("\nCarrinho: R$"+formatoDois.format(somaTotal));
		
		
		do {	
			
			System.out.println("\nEscolha a forma de pagamento");
			System.out.println("\n1 - Pix");
			System.out.println("\n2 - Cartão");
			System.out.println("\n3 - Sair do carrinho");
			fc = ler.nextInt();
				
		switch(fc) {
		case 1: 
			if(fc == 1) {
				if(valorCarteira > somaTotal) {
					System.out.println("\nCompra aprovada!");					
					System.out.println("\nO extrato foi enviado para o e-mail cadastrado "+email1+" no valor de: R$"+formatoDois.format(somaTotal));
				}
			else {
				System.out.println("\nSaldo insuficiente!");
			  }
			}
			break;			
		case 2: 
			if(fc == 2) {
				
				System.out.println("\nSelecione a bandeira do seu cartão!");
				System.out.println("\n1 - Visa");
				System.out.println("\n2 - Master");
				System.out.println("\n3 - Diners Club");
				cc = ler.nextInt(); 
				
			switch(cc) {
			
			case 1: 			
				if(visa < somaTotal) {					
					System.out.println("\nSaldo insuficiente!");	
					System.out.println("\nColoque uma forma de pagamento valida!");
					
				}
				else if(visa > somaTotal) {
					System.out.println("\nCompra aprovada!");
					System.out.println("\nObrigado por comprar na: "+Adegaadm.nome);
					System.out.println("\nCaso queira visitar um de nossos locais: "+Adegaadm.endereco);					
				}
					break;
			case 2: 
				if(master < somaTotal) {
					System.out.println("\nSaldo insuficiente!");
					System.out.println("\nColoque uma forma de pagamento valida!");
				}
				else if(master > somaTotal) {
					System.out.println("\nCompra aprovada!");
					System.out.println("\nObrigado por comprar na: "+Adegaadm.nome);
					System.out.println("\nCaso queira visitar um de nossos locais: "+Adegaadm.endereco);	
				}
				break;
			case 3:		
				if(diners < somaTotal) {
					System.out.println("\nSaldo insuficiente!");	
					System.out.println("\nColoque uma forma de pagamento valida!");
				}
				else if(diners > somaTotal) {
					System.out.println("\nCompra aprovada!");
					System.out.println("\nObrigado por comprar na: "+Adegaadm.nome);
					System.out.println("\nCaso queira visitar um de nossos locais: "+Adegaadm.endereco);	
						}			
				break;
				}			
			}
			
			default:		
		   }
		}while(fc == 3 && fc != 2 && fc != 1);
	}
}