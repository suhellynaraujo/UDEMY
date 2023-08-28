package application;

import java.util.Locale;
import java.util.Scanner;

public class Programa_Vetores_Alturas {

	public static void main(String[] args) {
		/*
		 * Fazer um programa para ler um conjunto de nomes de pessoas e suas respectivas
		 * idades. Os nomes devem ser armazenados em um vetor, e as idades em um outro
		 * vetor. Depois, mostrar na tela o nome da pessoa mais velha.
		 */

		Locale.setDefault(Locale.US);

		Scanner scan = new Scanner(System.in);

		// vetor para quantidade de pessoas
		System.out.print("Quantas pessoas voce vai digitar? ");
		int n = scan.nextInt();

		// tipos valor (tipos primmitivos), instancia de tipos
		String[] nomes = new String[n];
		int[] idades = new int[n];
		double[] alturas = new double[n];

		// interação para ler os dados para o vetor de quantidade de pessoas
		for (int i = 0; i < n; i++) {
			System.out.println("Dados da " + (i + 1) + "a pessoa : ");
			System.out.print("Nome: ");
			nomes[i] = scan.next();
			System.out.print("idade: ");
			idades[i] = scan.nextInt();
			System.out.print("Altura: ");
			alturas[i] = scan.nextDouble();
		}

		double soma = 0.0;

		// interação para calcular todas as alturas
		for (int i = 0; i < n; i++) {
			soma = soma + alturas[i];

		}

		// tirar a média das alturas
		double mediaAlturas = soma / n;
		System.out.println();
		System.out.printf("Altura média: %.2f%n", mediaAlturas);

		// quantidade de pessoas menores de 16 anos
		int contidade = 0;
		// interação para somar a quantidade de pessoas
		for (int i = 0; i < n; i++) {
			if (idades[i] < 16) {
				contidade = contidade + 1;
			}
		}

		// saber a porcentagem da quantidade de pessoas menores de 16 anos
		double porcentagem = contidade * 100.0 / n;

		//%.1f%%%n 1 casa decimal, mostrando  simbolo de porcentagem
		System.out.printf("Pessoas com menos de 16 anos: %.1f%%%n", porcentagem);

		// interação para mostrar os nomes das pessoas mennores de 16 anos
		for (int i = 0; i < n; i++) {
			if (idades[i] < 16) {
				System.out.println(nomes[i]);
			}
		}
		
		scan.close();
	}

}
