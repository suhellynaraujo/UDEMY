package _3entradaDeDados;

import java.util.Locale;
import java.util.Scanner;

public class exemplo_03_scanner_double {

	public static void main(String[] args) {

		// Entrada de dados = leitura de dados
		// leitura de um double
		
		//para considerar o separador como um ponto, usar as configura��es do locale
		Locale.setDefault(Locale.US);
		Scanner sc = new Scanner(System.in);
		
		//println pega a localidade do sistema, como o separador a v�rguta
		//usar o printf para declarar as configura��es de decimais
		
		double x;
		x = sc.nextDouble();
		System.out.println("Voc� digitou: " + x);		
		System.out.printf("Voc� digitou: %.2f%n" , x);
		sc.close();
		
		
		
	

	}

}
