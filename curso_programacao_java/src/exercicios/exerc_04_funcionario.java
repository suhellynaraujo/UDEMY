package exercicios;

import java.util.Locale;
import java.util.Scanner;

public class exerc_04_funcionario {

	public static void main(String[] args) {
		//Fazer um programa que leia o n�mero de um funcion�rio, 
		//seu n�mero de horas trabalhadas, o valor que recebe por 
		//hora e calcula o sal�rio desse funcion�rio. A seguir, 
		//mostre o n�mero e o sal�rio do funcion�rio, com duas casas decimais
		
		Locale.setDefault(Locale.US);
		Scanner scan = new Scanner(System.in);
		
		int numFuncionario, horasTrabalhadas;
		double  valorHora, salario;
		
		System.out.println("Qual o n�mero do Funcion�rio que deseja consulta: ");
		numFuncionario = scan.nextInt();
		System.out.println("Quantas horas esse funcion�rio trabalhou esse m�s? ");
		horasTrabalhadas = scan.nextInt();
		System.out.println("Qual � o valor que esse funcion�rio recebe por hora? ");
		valorHora = scan.nextDouble();
		
		salario = horasTrabalhadas * valorHora;
		
		System.out.println("Detalhes: ");
		System.out.println("N�mero = " + numFuncionario);
		System.out.printf("Sal�rio = R$ %.2f%n", salario);
		
		scan.close();
	}

}
