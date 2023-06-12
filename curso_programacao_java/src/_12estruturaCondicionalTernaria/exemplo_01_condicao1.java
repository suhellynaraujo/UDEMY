package _12estruturaCondicionalTernaria;

public class exemplo_01_condicao1 {

	public static void main(String[] args) {
		/* Estrutura opcional ao if-else quando se deseja decidir um valor com base em uma condição*/
		
		// (condição) ? valor_se_verdadeiro : valor_se_falso
		
		//exemplo de if-else
		double preco = 34.5;
		double desconto;
		
		if (preco < 20.0) {
			desconto = preco * 0.1;
		} else {
			desconto = preco * 0.05;
		}
		
		System.out.println(desconto);
	}

}
