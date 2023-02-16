package _13estruturaControleRepetitiva;

import java.util.Scanner;

public class exemplo_02_for {

	public static void main(String[] args) {
		// for = estrutura de controle que repete um bloco de código (comandos),
		// para um certo intervalo de valores. Usar quando se sabe a quantidade repetições ou o intervalo de valores
		
		/*Fazer um programa que lê um valor inteiro N e depois N numeros inteiros.
		 * Ao final mostrar a soma dos N numeros lidos*/
		
		// for (inicio; condição; incremento ){}
		
		// for (executa somente na primeira vez; executa e volta; executa toda vez depois de voltar)
		
		// ideal para fazer uma rrepetição baseada em contagem
		
		Scanner scan = new Scanner(System.in);
		
		System.out.println("Digite um número: ");
		
		int N = scan.nextInt();
		
		int soma = 0;
		
		for(int i = 0; i < N; i ++) {
			
			int x = scan.nextInt();
			
			soma = soma + x;
			
		}
		
		System.out.println(soma);
		
		scan.close();
		
	}

}
