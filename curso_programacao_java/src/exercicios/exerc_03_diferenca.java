package exercicios;

import java.util.Scanner;

public class exerc_03_diferenca {

	public static void main(String[] args) {

		//Fazer um programa para ler quatro valores inteiros A, B, C e D. 
		//A seguir, calcule e mostre a diferença do produto 
		//de A e B pelo produto de C e D segundo a fórmula: DIFERENCA = (A * B - C * D).
		
		Scanner scan = new Scanner(System.in);
		
		int A, B, C, D, diferenca;
		
		System.out.println("Digite o primeiro valor: ");
		A = scan.nextInt();
		System.out.println("Digite o segundo valor: ");
		B = scan.nextInt();
		System.out.println("Digite o terceiro valor: ");
		C = scan.nextInt();
		System.out.println("Digite o quarto valor: ");
		D = scan.nextInt();
		
		diferenca = (A * B) - (C * D);
		System.out.println("A diferença dos valores digitados é de: " + diferenca);
		
		scan.close();


		
	}

}
