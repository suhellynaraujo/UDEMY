package _01saidaDedados;

import java.util.Locale;

public class exemplo_03_double {

	public static void main(String[] args) {
		
		//Sa�da de dados

		// declarando uma vari�vel com ponto flutuante
		double x = 10.35784;
		System.out.println(x);

		// declarando uma vari�vel com ponto flutuante com quantidade de casas decimais 
		// %.2f%n � usado com a quantidade de n�meros que queira ap�s a v�rgula ou ponto.
		// podendo usar o %.2f\n e declarando com o printf
		// o printf pega por padr�o o formato do separador do sistema local
		
		double y = 10.35784;
		System.out.printf("%.2f%n",y);
		System.out.printf("%.3f%n",y);
		System.out.printf("%.4f%n",y);
		
		// para alterar o separador para ponto � preciso configurar com o locale
		// locale pega as configura��es do sistema que foi configurado
		// US tem como configura��o padr�o o ponto como separador
		
		Locale.setDefault(Locale.US);		
		double z = 10.35784;
		System.out.printf("%.2f%n",z);
		System.out.printf("%.3f%n",z);
		System.out.printf("%.4f%n",z);

		

	}

}
