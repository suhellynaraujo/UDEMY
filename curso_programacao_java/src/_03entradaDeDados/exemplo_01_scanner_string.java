package _03entradaDeDados;

import java.util.Scanner;

public class exemplo_01_scanner_string {

	public static void main(String[] args) {
		
		// Entrada de dados = leitura de dados
		
		// ler uma String
		
		Scanner sc = new Scanner(System.in);
		
		String x;
		// sc.next() comando para entrada de dados
		x = sc.next();
		System.out.println("Você digitou " + x);		
		sc.close();
		
	}

}
