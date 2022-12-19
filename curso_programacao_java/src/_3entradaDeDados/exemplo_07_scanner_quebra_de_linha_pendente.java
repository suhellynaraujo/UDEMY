package _3entradaDeDados;

import java.util.Scanner;

public class exemplo_07_scanner_quebra_de_linha_pendente {

	public static void main(String[] args) {
	
		// Entrada de dados = leitura de dados
		// leitura de texto ou linha inteira até a quebra de linha(comando enter) usando o nextLine()
		// o next() ler somente uma palavra 
		
		Scanner sc = new Scanner(System.in);
		
		int x;
		String s1, s2, s3;
		
		// Ao dar enter para ser inserido dados no nexInt para o próximo nexLine(), 
		//ele automaticamente preenche a string s1 passando para o próximo nextLine, causando uma inserção vazia
		//para não causar ausencia de dados é imporante inserir um sc.nextLine() vazio após o nextInt()
		// isso é causado quando é usado um next() diferente antes do nextLine()
		x = sc.nextInt();
		sc.nextLine();
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
