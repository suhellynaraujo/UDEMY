package entities;

public class Funcionario {
	/*
	 * Fazer um programa para ler os dados de um funcion�rio (nome, sal�rio bruto e
	 * imposto). Em seguida, mostrar os dados do funcion�rio (nome e sal�rio
	 * l�quido). Em seguida, aumentar o sal�rio do funcion�rio com base em uma
	 * porcentagem dada (somente o sal�rio bruto � afetado pela porcentagem) e
	 * mostrar novamente os dados do funcion�rio. Use a classe projetada abaixo.
	 */
	
	public String name;
	public double grossSalary, tax;
	
	public double NextSalary() {
	
		return grossSalary - tax;
	}
	
	public void IncreaseSalary(double percentage) {
			
		grossSalary += grossSalary * percentage / 100.0;
	}

	@Override
	public String toString() {
		return "Employee: " 
				+ name 
				+ ", R$" 
				+ String.format("%.2f", NextSalary()); 
		
				
	}
	
	

}
