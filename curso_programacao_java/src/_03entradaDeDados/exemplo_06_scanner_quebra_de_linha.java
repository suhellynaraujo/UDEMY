package _03entradaDeDados;

import java.util.Scanner;

public class exemplo_06_scanner_quebra_de_linha {

	public static void main(String[] args) {

		// Entrada de dados = leitura de dados
		// leitura de texto ou linha inteira até a quebra de linha(comando enter) usando o nextLine()
		// o next() ler somente uma palavra 
		
		Scanner sc = new Scanner(System.in);
		
		String s1, s2, s3;
		
		s1 = sc.nextLine();
		s2 = sc.nextLine();
		s3 = sc.nextLine();
		
		System.out.println("Dados digitados: " );
		System.out.println(s1);
		System.out.println(s2);
		System.out.println(s3);
		
		sc.close();

	}

}
