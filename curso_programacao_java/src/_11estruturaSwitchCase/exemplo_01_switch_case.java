package _11estruturaSwitchCase;

import java.util.Scanner;

public class exemplo_01_switch_case {

	/*
	 * Fazer um programa para ler um valor inteiro de 1 a 7 representando um dia de
	 * semana ( sendo 1 = domingo, 2 = segunda, e assim por diante). Escrever na
	 * tela o dia da semana correspondente, conforme exemplos
	 */

	public static void main(String[] args) {

		// inicio estrutura encadeada de if-else
		Scanner sc = new Scanner(System.in);

		System.out.println("Digite a sua escolha para o dia da semana:");
		System.out.println();
		System.out.println("1 - Domingo");
		System.out.println("2 - Segunda");
		System.out.println("3 - Terça");
		System.out.println("4 - Quarta");
		System.out.println("5 - Quinta");
		System.out.println("6 - Sexta");
		System.out.println("7 - Sábado");
		System.out.println();

		int x = sc.nextInt();
		String dia = null;

		if (x == 1) {
			dia = "Domingo";
		} else if (x == 2) {
			dia = "Segunda";
		} else if (x == 3) {
			dia = "Terça";
		} else if (x == 4) {
			dia = "Quarta";
		} else if (x == 5) {
			dia = "Quinta";
		} else if (x == 6) {
			dia = "Sexta";
		} else if (x == 7) {
			dia = "Sábado";
		} else {
			dia = "valor inválido!";
		}
		System.out.println();
		System.out.println("Dia da semana: " + dia);
		sc.close();

		// fim estrutura encadeada de if-else

		

	}

}
