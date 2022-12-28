package _08estruturaCondicionalComposta;

import java.util.Scanner;

public class exemplo_01_if_else {

	public static void main(String[] args) {
		
		// Verdadeira executa somente o bloco do if
		// Falso e executa somente o bloco do else
		
		Scanner scan = new Scanner(System.in);
		int hora;
		
		System.out.println("Quantas horas? ");
		hora = scan.nextInt();
		
		if(hora < 12) {
			System.out.println("Bom dia!");			
		}
		
		else {
			System.out.println("Boa tarde!");
		}
		
		scan.close();
		
		

	}

}
