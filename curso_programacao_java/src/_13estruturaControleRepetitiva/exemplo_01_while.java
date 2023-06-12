package _13estruturaControleRepetitiva;

import java.util.Scanner;

public class exemplo_01_while {

	public static void main(String[] args) {
		// while = estrutura de controle que executa um bloco de código (comandos),
		// enquanto uma condição for verdadeira. Usar quando não se sabe previamente a
		// quantidade de repetições a serem executadas.
		
		/*Fazer um programa que lê números inteiros até que um  zero seja lido.
		  Ao final mostrar a soma dos números lidos*/
		
		//Enquanto a condiç~çao for verdadeira executa, quando for falsa para.
		
		Scanner scan = new Scanner(System.in);
		
		System.out.println("Digite um número");	
		
		int numero = scan.nextInt();
		
		int soma = 0;
		
		while(numero != 0) {
			
			soma = soma + numero;
			
			numero = scan.nextInt();	
						
		}
		
		System.out.println(soma);
		
		scan.close();

}
}