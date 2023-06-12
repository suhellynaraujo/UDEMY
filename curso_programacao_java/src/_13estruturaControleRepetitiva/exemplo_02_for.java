package _13estruturaControleRepetitiva;

import java.util.Scanner;

public class exemplo_02_for {

	public static void main(String[] args) {
		// for = estrutura de controle que repete um bloco de c�digo (comandos),
		// para um certo intervalo de valores. Usar quando se sabe a quantidade repeti��es ou o intervalo de valores
		
		/*Fazer um programa que l� um valor inteiro N e depois N numeros inteiros.
		 * Ao final mostrar a soma dos N numeros lidos*/
		
		// for (inicio; condi��o; incremento ){}
		
		// for (executa somente na primeira vez; executa e volta; executa toda vez depois de voltar)
		
		// ideal para fazer uma rrepeti��o baseada em contagem
		
		Scanner scan = new Scanner(System.in);
		
		System.out.println("Digite um n�mero: ");
		
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
