package application;

import java.util.Locale;
import java.util.Scanner;

import entities.Conta;

public class Program_Conta {
	public static void main(String[] args) {
		
		Locale.setDefault(Locale.US);
		
		Scanner scan = new Scanner(System.in);
		
		Conta conta = new Conta();
		
		String deposito = "n";
		String y = "";
		
				
		System.out.print("Enter account number: " );
		conta.numeroConta = scan.nextInt();
		System.out.print("Enter account holder: " );
		conta.nomeTitular = scan.next();
		System.out.print("Is There na initial deposit (y/n)? " );
		deposito = scan.next();
		if(deposito == y){
			System.out.print("Enter initial deposit value:");			
			conta.deposito = scan.nextDouble();
			
			System.out.print(conta.getSaldo());
		}else {
			System.out.print(conta.getSaldo());
		}
		
		
		
		
		
		
		
		
	}

}
