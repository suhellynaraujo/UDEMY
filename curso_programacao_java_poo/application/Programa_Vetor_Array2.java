package application;

import java.util.Locale;
import java.util.Scanner;

import entities.Vetor_Array2;

public class Programa_Vetor_Array2 {

	public static void main(String[] args) {
		/*Fazer um programa para ler um numero inteiro N e os dados(nome epre�o) de produtos.
		 * Armazenar os N produtos em um vetor
		 * Em seguida, mostrar a pre�o m�dia dos produtos
		 * 
		 * 
		 * Objetos do tipo classe*/
		
		
		Locale.setDefault(Locale.US);
		
		Scanner scan = new Scanner(System.in);
		
		int N = scan.nextInt();
		
		//objeto do tipo referencia ( classe )
		Vetor_Array2[] vect = new Vetor_Array2[N];
		
		//.length � a quantidade de elementos do vetor
		for(int i=0; i<vect.length; i++) {
			scan.nextLine();
			String name = scan.nextLine();
			double preco = scan.nextDouble();
			vect[i] = new Vetor_Array2(name, preco);			
		}
		
		double soma = 0.0;
		
		for(int i = 0; i < vect.length; i++) {
			//pega os valores dos pre�os das posi��es
			 soma += vect[i].getPreco();			
		}
		double media = soma / vect.length;
		
		System.out.printf("Avarage price %.2f%n" , media);
		
			
			scan.close();
	}

}
