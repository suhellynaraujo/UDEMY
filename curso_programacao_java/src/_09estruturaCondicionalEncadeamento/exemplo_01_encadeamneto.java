package _09estruturaCondicionalEncadeamento;

import java.util.Scanner;

public class exemplo_01_encadeamneto {

	public static void main(String[] args) {

		// Verdadeira executa somente o bloco do if
		// Falso e executa somente o bloco do else

		Scanner scan = new Scanner(System.in);
		int hora;

		System.out.println("Quantas horas? ");
		hora = scan.nextInt();

		if (hora < 12) {
			System.out.println("Bom dia!");
		}

		else if (hora < 18) {
			System.out.println("Boa tarde!");
		} else {
			System.out.println("Boa noite!");
		}

		scan.close();

	}

}
