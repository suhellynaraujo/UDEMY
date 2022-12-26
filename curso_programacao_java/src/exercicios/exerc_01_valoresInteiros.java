package exercicios;

import java.util.Scanner;

public class exerc_01_valoresInteiros {

	public static void main(String[] args) {
		
		//Faça um programa para ler dois valores inteiros, 
		//e depois mostrar na tela a soma desses números com uma 
		//mensagem explicativa, conforme exemplos
		
		
		Scanner scan = new Scanner(System.in);
		
		int num1,num2, soma;
		
		System.out.println("Digite o primeiro número: ");
		num1 = scan.nextInt();
		
		System.out.println("Digite o segundo número: ");
		num2 = scan.nextInt();
		
		soma = num1 + num2;
		System.out.println("A soma dos dois números é = " + soma);
		
		scan.close();


	}

}
