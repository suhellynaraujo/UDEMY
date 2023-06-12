package exercicios;

import java.util.Locale;
import java.util.Scanner;

public class exerc_05_temperatura {

	public static void main(String[] args) {
		// Fazer um programa para ler uma temperatura em celsius e mostrar o equivalente
		// e Fahrenheit
		// Perguntar se o usuário deseja repetir (s/n)
		// Caso o usuário digite s repetir o progama
		
		/* FORMULA
		 * F = 9C + 32
		 *      5
		 *      
		  */
		
		// 30.0 - 21.0 - -10.5

		Locale.setDefault(Locale.US);
		Scanner scan = new Scanner(System.in);
		
		char reposta;
		
		do {
			
			System.out.print("Digite a temperatura em Celsius: ");
			double C = scan.nextDouble();
			
			double F = 9.0 * C / 5.0 + 32.0;
			
			System.out.printf("Equivalente em Fahrenheit: %.1f%n", F);
			
			System.out.print("Deseja repetir? (s/n)");
			reposta = scan.next().charAt(0);
			
		}while(reposta != 'n');
		

		scan.close();
	}

}
