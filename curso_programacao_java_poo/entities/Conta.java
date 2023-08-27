package entities;

public class Conta {

	private String nomeTitular;
	private int numeroConta;
	private double saldo;
		
	public Conta(int numeroConta, String nomeTitular) {	
		this.numeroConta = numeroConta;
		this.nomeTitular = nomeTitular;
	}

	public Conta(String nomeTitular, int numeroConta, double depositoInicial) {	
		this.nomeTitular = nomeTitular;
		this.numeroConta = numeroConta;
		// m�todo para encapsular, 
		//f�cil manuten��o, se a regra de neg�cio mudar � para alterar somente o m�todo deposito, n�o alterar aqui
		deposito(depositoInicial);
	}

	public String getNomeTitular() {
		return nomeTitular;
	}

	public void setNomeTitular(String nomeTitular) {
		this.nomeTitular = nomeTitular;
	}
	//o numeroConta s� pode ter o m�todo get, pois ele n�o pode ser alterado
	public int getNumeroConta() {
		return numeroConta;
	}

	//o saldo s� pode ter o m�todo get, pois ele n�o pode ser alterado aleatooriamente , somente por saque ou deposito
	public double getSaldo() {
		return saldo;
	}
	
	public void deposito(double quantia) {
		saldo += quantia;
	}
	
	public void retirada(double quantia) {
		saldo -= quantia + 5.0;
	}

	@Override
	public String toString() {
		return  "Account " + numeroConta + ", Holder: " + nomeTitular + ", Balance: $ "	+ String.format("%.2f", saldo);
		}
	}
	
	
 
	
	
	
	


