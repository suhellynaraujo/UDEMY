package _03entradaDeDados;

import java.util.Scanner;

public class exemplo_04_scanner_char {

	public static void main(String[] args) {

		// Entrada de dados = leitura de dados
		// leitura de um char, que aceita somente um caracter
		// se digitar vários caracter, o char vai aceitar somente o primeiro.
		
		Scanner sc = new Scanner(System.in);
		
		char x;
		x = sc.next().charAt(0);
		System.out.println("Você digitou: " + x);		
		sc.close();

	}

}
