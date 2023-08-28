package application;

import java.util.Locale;
import java.util.Scanner;

public class Programa_Vetores_Numeros_Negativos {

	public static void main(String[] args) {
		/*Fa�a um programa que leia um n�mero inteiro positivo N (m�ximo = 10) 
		 * e depois N n�meros inteiros 
		e armazene-os em um vetor. Em seguida, mostrar na tela todos os n�meros negativos lidos. 
*/
		
		Locale.setDefault(Locale.US);
		
		Scanner scan = new Scanner(System.in);
		
		System.out.print("Quantos n�meros voc� quer digitar? ");		
		int N = scan.nextInt();
		int[] vect = new int[N];
		for(int i = 0; i < vect.length; i++) {
			System.out.print("Digite um n�mero ");
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
