package entities;

public class Conta {

	public String nomeTitular;
	public int numeroConta;
	public double deposito;
	protected double saldo;
	
	public Conta() {
	}

	public Conta(String nomeTitular, int numeroConta, double deposito, double saldo) {
		this.nomeTitular = nomeTitular;
		this.numeroConta = numeroConta;
		this.deposito = deposito;
	}

	public String getNomeTitular() {
		return nomeTitular;
	}

	public void setNomeTitular(String nomeTitular) {
		this.nomeTitular = nomeTitular;
	}

	public int getNumeroConta() {
		return numeroConta;
	}

	public void setNumeroConta(int numeroConta) {
		this.numeroConta = numeroConta;
	}

	public double getDeposito() {
		return deposito;
	}

	public void setDeposito(double deposito) {
		this.deposito = deposito;
	}

	public double getSaldo() {
		return saldo;
	}



	
	
	
	

}
