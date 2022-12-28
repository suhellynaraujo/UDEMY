package _01saidaDedados;

import java.util.Locale;

public class exemplo_03_double {

	public static void main(String[] args) {
		
		//Saída de dados

		// declarando uma variável com ponto flutuante
		double x = 10.35784;
		System.out.println(x);

		// declarando uma variável com ponto flutuante com quantidade de casas decimais 
		// %.2f%n é usado com a quantidade de números que queira após a vírgula ou ponto.
		// podendo usar o %.2f\n e declarando com o printf
		// o printf pega por padrão o formato do separador do sistema local
		
		double y = 10.35784;
		System.out.printf("%.2f%n",y);
		System.out.printf("%.3f%n",y);
		System.out.printf("%.4f%n",y);
		
		// para alterar o separador para ponto é preciso configurar com o locale
		// locale pega as configurações do sistema que foi configurado
		// US tem como configuração padrão o ponto como separador
		
		Locale.setDefault(Locale.US);		
		double z = 10.35784;
		System.out.printf("%.2f%n",z);
		System.out.printf("%.3f%n",z);
		System.out.printf("%.4f%n",z);

		

	}

}
