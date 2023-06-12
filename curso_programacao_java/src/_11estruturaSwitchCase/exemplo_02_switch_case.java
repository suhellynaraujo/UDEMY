package _11estruturaSwitchCase;

import java.util.Scanner;

public class exemplo_02_switch_case {
	
	/*
	 * Fazer um programa para ler um valor inteiro de 1 a 7 representando um dia de
	 * semana ( sendo 1 = domingo, 2 = segunda, e assim por diante). Escrever na
	 * tela o dia da semana correspondente, conforme exemplos
	 */

	public static void main(String[] args) {

		// inicio estrutura switch case
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
		
		switch (x) {
		case 1:
			dia = "Domingo";
			break;
		case 2:
			dia = "Segunda";
			break;
		case 3:
			dia = "Terça";
			break;
		case 4:
			dia = "Quarta";
			break;
		case 5:
			dia = "Quinta";
			break;
		case 6:
			dia = "Sexta";
			break;
		case 7:
			dia = "Sábado";
			break;			
		default: 
			dia = "valor inválido!";
			break;
		}

		System.out.println();
		System.out.println("Dia da semana: " + dia);
		sc.close();

		// fim estrutura switch case

}
}
