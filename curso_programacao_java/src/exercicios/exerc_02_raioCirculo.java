package exercicios;

import java.util.Locale;
import java.util.Scanner;

public class exerc_02_raioCirculo {

	public static void main(String[] args) {
	
		//Faça um programa para ler o valor do raio de um círculo, e 
		//depois mostrar o valor da área deste círculo com quatro 
		//casas decimais conforme exemplos.
		//Fórmula da área: area = π . raio²
		//Considere o valor de π = 3.14159
		
		Locale.setDefault(Locale.US);
		Scanner scan = new Scanner(System.in);
		
		double raio, area, pi = 3.14159;
		
		System.out.println("Digite um número: ");
		raio = scan.nextDouble();
		area = pi * (raio * raio) ;
		System.out.printf("Area = %.4f%n", area);
		
		scan.close();
		
		
		

	}

}
