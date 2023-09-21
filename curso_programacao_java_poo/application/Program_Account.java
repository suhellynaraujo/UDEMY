package application;

import entities.Account;
import entities.BussinessAccount;
import entities.SavevingsAccount;

public class Program_Account {

	public static void main(String[] args) {
		
		Account acc = new Account(1002, "Ana", 0.0);
		
		BussinessAccount bacc = new BussinessAccount(1003, "Maria", 0.0, 500.0);

		//Upcasting pegar um objeto da subclasse e atribuir para uma variavel da superclasse, ou seja uma variavel recebe o valor do objeto
		Account acc1 = bacc;
		Account acc2 = new BussinessAccount(1004, "João", 0.0, 200.0);
		Account acc3 = new SavevingsAccount(1005, "Luiz", 0.0, 0.01);
		
		//Downcasting converter um objeto da superclasse para a subclasse,
		//fazer o casting manual da subclasse	
		
		BussinessAccount acc4 = (BussinessAccount) acc2;
		acc4.loan(100.0);
		
		// nem sempre dá certo ao fazer o Downcasting, pois o compilador não sabe quando uma subclasse é uma superclasse
		// nesse caso o Downcasting so dá certo com uma subclasse herdada da superclasse em questão
		//BussinessAccount acc5 = (BussinessAccount) acc3;

		// para que dar certo, fazer uma condição
		// se o que estiver no objeto(variavel) for uma instancia da subclasse, dai fazer o casting
		if(acc3 instanceof BussinessAccount) {
			
			BussinessAccount acc5 = (BussinessAccount) acc3;
			acc5.loan(200.0);
			System.out.println("Loan");
		}
		
		if(acc3 instanceof SavevingsAccount) {
			SavevingsAccount acc5 = (SavevingsAccount)acc3;
			acc5.updateBalance();
			System.out.println("Update");
			
		}
 	}

}
