package application;

import entities.Account;
import entities.SavevingsAccount;

public class Program_Account2 {

	public static void main(String[] args) {
		
		Account acc = new Account(0001, "Ana", 1000.0);
		acc.withdraw(200.0);
		System.out.println(acc.getBalance());
		
		Account acc2 = new SavevingsAccount(0002, "Maria", 1000.0, 0.01);
		acc2.withdraw(200.0);
		System.out.println(acc2.getBalance());
	}

}
