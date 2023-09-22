package application;

import entities.Account;
import entities.BussinessAccount;
import entities.SavingsAccount;

public class Program_Account2 {

	public static void main(String[] args) {
		
		Account acc = new Account(0001, "Ana", 1000.0);
		acc.withdraw(200.0);
		System.out.println(acc.getBalance());
		
		Account acc2 = new SavingsAccount(0002, "Maria", 1000.0, 0.01);
		acc2.withdraw(200.0);
		System.out.println(acc2.getBalance());
		
		Account acc3 = new BussinessAccount(0003, "Marcos", 1000.0, 500.0);
		acc3.withdraw(200.0);
		System.out.println(acc3.getBalance());
	}

}
