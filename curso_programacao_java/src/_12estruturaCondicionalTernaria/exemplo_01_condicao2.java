package _12estruturaCondicionalTernaria;

public class exemplo_01_condicao2 {

	public static void main(String[] args) {
		/*
		  Estrutura opcional ao if-else quando se deseja decidir um valor com base em
		  uma condição
		 */

		// (condição) ? valor_se_verdadeiro : valor_se_falso

		// exemplo ternário
		
		double preco = 34.5;
		// desconto recebe , caso preço seja menor que 20 , (se sim) preço * 0.1, (se não) preço * 0.05
		double desconto = (preco < 20.0) ? preco * 0.1 : preco * 0.05;
		
				
		System.out.println(desconto);

	}

}
