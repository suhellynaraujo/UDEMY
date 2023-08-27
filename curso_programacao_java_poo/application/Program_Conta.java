package application;

import java.util.Locale;
import java.util.Scanner;

import entities.Conta;

public class Program_Conta {

	public static void main(String[] args) {

		   // configurar o separador com casas decimais com o ponto
		   Locale.setDefault(Locale.US);
		
		   // recebe os dados doo usu�rio
			Scanner scan = new Scanner(System.in);
			
			Conta conta;
			
			System.out.print("Enter account number: ");
			int numeroConta = scan.nextInt();					
			
			System.out.print("Enter account holder: ");
			scan.nextLine();
			String nomeTitular = scan.nextLine();			
			
			System.out.print("Is There na initial deposit (y/n)? ");
			//  scan.next().charAt(0) ler os caracter
			char resposta = scan.next().charAt(0);
			
			if(resposta == 'y') {
				System.out.print("Enter initial deposit value: " );	
				double depositoInicial  = scan.nextDouble();
				//sobre carga
				conta = new Conta(nomeTitular, numeroConta, depositoInicial);
			} else {
				//sobre carga
				conta = new Conta(numeroConta, nomeTitular);
			}
			
			System.out.println();
			System.out.print("Account data: " );
			System.out.println(conta);
			
			System.out.println();
			System.out.print("Enter a deposit value: ");
			double valorDeposito = scan.nextDouble();			
			conta.deposito(valorDeposito);			
			System.out.print("Update account data: ");
			System.out.println(conta);
			
			System.out.println();
			System.out.print("Enter a withdraw value: ");
			double retiradaValor = scan.nextDouble();		
			conta.retirada(retiradaValor);
			System.out.print("Update account data: ");
			System.out.println(conta);
			
			scan.close();
		}

}
