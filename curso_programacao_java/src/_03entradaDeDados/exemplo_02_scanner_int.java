package _03entradaDeDados;

import java.util.Scanner;

public class exemplo_02_scanner_int {

	public static void main(String[] args) {
		

		// Entrada de dados = leitura de dados
		// leitura de um inteiro
		
		Scanner sc = new Scanner(System.in);
		int x;
		x = sc.nextInt();
		System.out.println("Você digitou: " + x);		
		sc.close();
	}

}
