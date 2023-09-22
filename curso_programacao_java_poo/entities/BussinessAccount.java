package entities;

public class BussinessAccount extends Account {

	
		private Double loanLimite;

		//o super é usado para reutilizar do metodo padao da classe mãe
		public BussinessAccount() {
			super();
		}

		//condtrutor com argumento da classe account, sem repetir as atribuições dos parametros da classe mãe
		public BussinessAccount(Integer number, String holder, Double balance, Double loanLimite) {
			//o super é da classe mãe reaproveitando os argumentos
			super(number, holder, balance);
			this.loanLimite = loanLimite;
		}

		public Double getLoanLimite() {
			return loanLimite;
		}

		public void setLoanLimite(Double loanLimite) {
			this.loanLimite = loanLimite;
		}
		
		public void loan(double amount) {
			if(amount <= loanLimite) {
				//deposit(amount);		
				balance += amount - 10.0;
 			}
		}
		
		@Override
		public void withdraw(double amount) {
			super.withdraw(amount);
			balance -= 2.0 ;
		}

}
