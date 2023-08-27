package application;

import java.util.Locale;
import java.util.Scanner;

public class Programa_Vetor_Array1 {

	public static void main(String[] args) {
		/*Fazer um programa para ler um numero inteiro N e a altura de N pessoas.
		 * Armazenar as N alturas em um vetor
		 * Em seguida, mostrar a altura média das pessoas*/
		
		Locale.setDefault(Locale.US);
		Scanner scan = new Scanner(System.in);
		
		//Ler o valor da variavel n
		int N = scan.nextInt();
		
		// cria um vetor, iniciar/apontar para as posições 
		double[] vect = new double[N];
		
		// digitar os números e guardar dentro do vetor em cada posição
		// variável i começando com 0, variavel i menor que N (enquanto for menor que N), e incrementa o valor da variavel i
		for(int i=0 ; i<N ; i++ ) {		
			vect[i] = scan.nextDouble();	
			// a cada informação passada pelo usuário, será adicionado o valor nas variaveis2qa a cada posição, nesse caso posição 0 , 1 , 2 ....
		}
		
		double soma = 0.0;
		//pecorrer o vetor para obter a soma de todas na variavel soma
		for(int i=0 ; i<N; i++) {
			soma += vect[i];
		}
		// qualqular a media, soma dividido por N
		double media = soma / N;
		
		//imprimi o resultado da média
		System.out.printf("Avarage height %.2f%n" , media);
		
		//printf para limitar as casas decimais, %.2f%n
		
		scan.close();

	}

}
