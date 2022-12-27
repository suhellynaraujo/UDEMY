package exercicios;

import java.util.Locale;
import java.util.Scanner;

public class exerc_04_funcionario {

	public static void main(String[] args) {
		//Fazer um programa que leia o número de um funcionário, 
		//seu número de horas trabalhadas, o valor que recebe por 
		//hora e calcula o salário desse funcionário. A seguir, 
		//mostre o número e o salário do funcionário, com duas casas decimais
		
		Locale.setDefault(Locale.US);
		Scanner scan = new Scanner(System.in);
		
		int numFuncionario, horasTrabalhadas;
		double  valorHora, salario;
		
		System.out.println("Qual o número do Funcionário que deseja consulta: ");
		numFuncionario = scan.nextInt();
		System.out.println("Quantas horas esse funcionário trabalhou esse mês? ");
		horasTrabalhadas = scan.nextInt();
		System.out.println("Qual é o valor que esse funcionário recebe por hora? ");
		valorHora = scan.nextDouble();
		
		salario = horasTrabalhadas * valorHora;
		
		System.out.println("Detalhes: ");
		System.out.println("Número = " + numFuncionario);
		System.out.printf("Salário = R$ %.2f%n", salario);
		
		scan.close();
	}

}
