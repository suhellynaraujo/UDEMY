package application;

import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

import entities.Account;
import entities.BussinessAccount;
import entities.SavingsAccount;

public class Program_Account4 {
	
	public static void main(String[] args) {
		
		Locale.setDefault(Locale.US);
		
		List<Account> list =  new ArrayList<>();
		
		list.add(new SavingsAccount(0001, "João", 500.0, 0.01));
		list.add( new BussinessAccount(0002, "Maria", 1000.0, 400.0));
		list.add(new SavingsAccount(0003, "Anna", 300.0, 0.01));
		list.add(new BussinessAccount(0004, "Marco", 500.0, 500.0));
		
		double sum = 0.0;
		for(Account acc : list) {
			sum += acc.getBalance();
		}
		System.out.println("TOTAL Balance: " + sum);
		
		for(Account acc : list) {
			acc.deposit(10.0);
		}
		for(Account acc: list) {
			System.out.printf("Update balance for account %d %.2f%n", acc.getNumber(), acc.getBalance());
		}
	}
}
