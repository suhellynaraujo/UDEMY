package _3entradaDeDados;

import java.util.Scanner;

public class exemplo_05_scanner_varios {

	public static void main(String[] args) {
		
		// Entrada de dados = leitura de dados
		// leitura de v�rios dados na mesma linha
		
		Scanner sc = new Scanner(System.in);
		
		String x;
		int y;
		double z;
		
		x = sc.next();
		y = sc.nextInt();
		z = sc.nextDouble(); // pega o separador como a v�rgula, e retorna como sa�da o separador como um ponto 
		
		System.out.println("Dados digitados: ");
		System.out.println(x);
		System.out.println(y);
		System.out.println(z);
		

	}

}
