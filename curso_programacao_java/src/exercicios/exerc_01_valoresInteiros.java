package exercicios;

import java.util.Scanner;

public class exerc_01_valoresInteiros {

	public static void main(String[] args) {
		
		//Fa�a um programa para ler dois valores inteiros, 
		//e depois mostrar na tela a soma desses n�meros com uma 
		//mensagem explicativa, conforme exemplos
		
		
		Scanner scan = new Scanner(System.in);
		
		int num1,num2, soma;
		
		System.out.println("Digite o primeiro n�mero: ");
		num1 = scan.nextInt();
		
		System.out.println("Digite o segundo n�mero: ");
		num2 = scan.nextInt();
		
		soma = num1 + num2;
		System.out.println("A soma dos dois n�meros � = " + soma);
		
		scan.close();


	}

}
