package application;

import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import java.util.Scanner;

import entities.Employeer2;
import entities.OutSourcedEmployee;

public class Program_Employee2 {

	public static void main(String[] args) {
		
		Locale.setDefault(Locale.US);
		
		Scanner scann = new Scanner(System.in);
		
		List<Employeer2> list = new ArrayList<>();
		System.out.print("Enter the number of employees: ");
		int numeroEmployee = scann.nextInt();
		
		for(int i = 1; i <= numeroEmployee; i++) {
			System.out.println("Enter contract #" + i + " data: ");
			System.out.print("Outsourced (y/n)? ");
			char opcao = scann.next().charAt(0);
			System.out.print("Name: ");
			scann.nextLine();
			String name = scann.nextLine();
			System.out.println("Hours: ");
			int hours = scann.nextInt();
			System.out.print("Value per hour: ");
			double valuePerHour = scann.nextDouble();
			
			if(opcao == 'y') {
				System.out.println("Additional charge: ");
				double additionalCharge = scann.nextDouble();
			
				list.add(new OutSourcedEmployee(name, valuePerHour, hours, additionalCharge));
				
			}else {
				
			  list.add(new Employeer2(name, valuePerHour, hours)); 
			}

		}
		System.out.println();
		System.out.println("PAYMENTS");
		for(Employeer2 emp : list) {
			System.out.println(emp.getName() + " - $" + emp.paymennt() + String.format("%.2f", emp.paymennt()));
		}

		
		scann.close();
	}

}
