package application;

import java.util.Locale;
import java.util.Scanner;

import entities.Funcionario;

public class Programa_funcionario {

	public static void main(String[] args) {
		
		
		Locale.setDefault(Locale.US);
		
		Scanner sc = new Scanner(System.in);
		
		Funcionario funcionario = new Funcionario();
		
		System.out.print("Name: ");
		funcionario.name = sc.nextLine();
		
		System.out.print("Gross Salary: ");
		funcionario.grossSalary = sc.nextDouble();
		
		System.out.print("Tax: ");
		funcionario.tax = sc.nextDouble();		
		
		System.out.println(funcionario);
		
		System.out.println();
		System.out.print("Which percentage to increase salary? ");
		double porcentagem = sc.nextDouble();
		funcionario.IncreaseSalary(porcentagem);
		
		System.out.println();
		System.out.println("Update data: " + funcionario);
		
		sc.close();

	}

}
