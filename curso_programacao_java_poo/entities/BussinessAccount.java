package entities;

public class BussinessAccount extends Account {

	
		private Double loanLimite;

		//o super � usado para reutilizar do metodo padao da classe m�e
		public BussinessAccount() {
			super();
		}

		//condtrutor com argumento da classe account, sem repetir as atribui��es dos parametros da classe m�e
		public BussinessAccount(Integer number, String holder, Double balance, Double loanLimite) {
			//o super � da classe m�e reaproveitando os argumentos
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
