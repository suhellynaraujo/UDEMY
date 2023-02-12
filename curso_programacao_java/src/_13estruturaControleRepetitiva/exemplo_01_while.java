package _13estruturaControleRepetitiva;

import java.util.Scanner;

public class exemplo_01_while {

	public static void main(String[] args) {
		// while = estrutura de controle que executa um bloco de c�digo (comandos),
		// enquanto uma condi��o for verdadeira. Usar quando n�o se sabe previamente a
		// quantidade de repeti��es a serem executadas.
		
		/*Fazer um programa que l� n�meros inteiros at� que um  zero seja lido.
		  Ao final mostrar a soma dos n�meros lidos*/
		
		//Enquanto a condi�~�ao for verdadeira executa, quando for falsa para.
		
		Scanner scan = new Scanner(System.in);
		
		System.out.println("Digite um n�mero");	
		
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