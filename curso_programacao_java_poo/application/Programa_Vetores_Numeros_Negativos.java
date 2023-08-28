package application;

import java.util.Locale;
import java.util.Scanner;

public class Programa_Vetores_Numeros_Negativos {

	public static void main(String[] args) {
		/*Faça um programa que leia um número inteiro positivo N (máximo = 10) 
		 * e depois N números inteiros 
		e armazene-os em um vetor. Em seguida, mostrar na tela todos os números negativos lidos. 
*/
		
		Locale.setDefault(Locale.US);
		
		Scanner scan = new Scanner(System.in);
		
		System.out.print("Quantos números você quer digitar? ");		
		int N = scan.nextInt();
		int[] vect = new int[N];
		for(int i = 0; i < vect.length; i++) {
			System.out.print("Digite um número ");
			vect[i] = scan.nextInt();
			
		}
		System.out.println("Numeros negativos : ");
		for(int i = 0; i < vect.length; i++) {
			if(vect[i] < 0) {
				System.out.println(vect[i]);
				
			}
		}
		scan.close();
	}
}
