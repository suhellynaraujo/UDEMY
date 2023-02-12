package _12estruturaCondicionalTernaria;

public class exemplo_01_condicao2 {

	public static void main(String[] args) {
		/*
		  Estrutura opcional ao if-else quando se deseja decidir um valor com base em
		  uma condi��o
		 */

		// (condi��o) ? valor_se_verdadeiro : valor_se_falso

		// exemplo tern�rio
		
		double preco = 34.5;
		// desconto recebe , caso pre�o seja menor que 20 , (se sim) pre�o * 0.1, (se n�o) pre�o * 0.05
		double desconto = (preco < 20.0) ? preco * 0.1 : preco * 0.05;
		
				
		System.out.println(desconto);

	}

}
