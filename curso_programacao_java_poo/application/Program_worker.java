package application;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.format.DateTimeFormatter;
import java.util.Date;
import java.util.Locale;
import java.util.Scanner;

import entities.Departament;
import entities.HourContract;
import entities.Worker;
import entities.enums.WorkerLevel;

public class Program_worker {

	public static void main(String[] args) throws ParseException {
		
		Locale.setDefault(Locale.US);
		
		Scanner scann = new Scanner(System.in);
		
		System.out.print("Enter department's name:");
		String departamentName = scann.nextLine();
		
		System.out.println("Enter worker data: ");
		System.out.print("Name: ");
		String workerName = scann.nextLine();
		System.out.print("Level: ");		
		String workerLevel = scann.nextLine();
		System.out.print("Base Salary: ");
		double baseSalary = scann.nextDouble();
		
		//instancia da classe trabalhador, pegando os dados digitados pelo usuáario
		//enum WorkerLevel pegando o valor que for digitado pelo usuário com workerLevel
		// novo objeto departamente pega o valor digitado pelo usuário  departamentName
		Worker worker = new Worker(workerName, baseSalary, WorkerLevel.valueOf( workerLevel), new Departament(departamentName));
		
		System.out.print("How many contracts to this worker?");		
		int number = scann.nextInt();
		
		SimpleDateFormat date = new SimpleDateFormat("dd/MM/yyyy");
		
		for(int i = 1; i <= number; i++) {
			System.out.println("Enter contract #" + i + " data: ");
			System.out.print("Date (DD/MM/YYYY): ");
			Date contractDate = date.parse(scann.next());
			System.out.print("Value per hour: ");
			double valueHour = scann.nextDouble();
			System.out.print("Duration (hours): ");
			int hours = scann.nextInt();
			//instancia da classe contraato, pegando os dados digitados pelo usuáario e associar a classe trabalhador
			HourContract contract = new HourContract(contractDate, valueHour, hours);
		}
		
		System.out.println("Enter month and year to calculate income (MM/YYYY): ");
		String monthAndYear = scann.next();
		//Converter a substring para int , pega a variavel monthAndYear e desmonta/recorta a substring, começando com posição 0(M) e parando na posição 2 (/)
		int month = Integer.parseInt(monthAndYear.substring(0, 2));
		//Converter a substring para int , pega a variavel monthAndYear e desmonta/recorta a substring, da posição 3(Y) em diante
		int year = Integer.parseInt(monthAndYear.substring(3));
		System.out.println("Name: " + worker.getName());
		System.out.println("Departament: " + worker.getDepartament().getName());
		System.out.println("Income for " + monthAndYear + ": " + String.format( "%.2f",worker.income(year, month)));	
		
		
		scann.close();
		

	}

}
