package application;

import entities.Account;
import entities.SavingsAccount;

public class Program_Account3 {

	public static void main(String[] args) {

		Account x = new Account(0001, "Anna", 1000.0);
		Account y = new SavingsAccount(0002, "Lucas", 1000.0, 0.01);
		//variaveis do mesmo tipo(Account)
		x.withdraw(50.0);
		y.withdraw(50.0);
		System.out.println(x.getBalance());
		System.out.println(y.getBalance());
	}

}
