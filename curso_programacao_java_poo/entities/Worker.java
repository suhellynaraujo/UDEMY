package entities;

import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;

import entities.enums.WorkerLevel;

public class Worker {

	private String name;
	private Double baseSalary;
	private WorkerLevel level;

	// composição de objetos
	private Departament departament;
	// composiçõ "tem muitos"
	private List<HourContract> contracts = new ArrayList<>();

	public Worker() {
		super();
	}

	// gerar o construtor sem a list
	public Worker(String name, Double baseSalary, WorkerLevel level, Departament departament) {
		this.name = name;
		this.baseSalary = baseSalary;
		this.level = level;
		this.departament = departament;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Double getBaseSalary() {
		return baseSalary;
	}

	public void setBaseSalary(Double baseSalary) {
		this.baseSalary = baseSalary;
	}

	public WorkerLevel getLevel() {
		return level;
	}

	public void setLevel(WorkerLevel level) {
		this.level = level;
	}

	public Departament getDepartament() {
		return departament;
	}

	public void setDepartament(Departament departament) {
		this.departament = departament;
	}

	public List<HourContract> getContracts() {
		return contracts;
	}

	// método setContracts removido pois não pode ser trocada por outra lista, a
	// lista sera iniciada e tera dois métodos para fazer e desfazer a associação,
//	public void setContracts(List<HourContract> contracts) {
//		this.contracts = contracts;
//	}

	// metodo para fazer a associação entre o trabalhador e o contrato
	public void addContract(HourContract contract) {
		contracts.add(contract);
	}

	// metodo para desfazer a associação entre o trabalhador e o contrato
	public void removeContract(HourContract contract) {
		contracts.remove(contract);
	}

	//metodo para adicionar a soma dos contratos do traballhador
	//contrtos somente desse mes e desse ano
	public double income(int year, int month) {
		
		double sum = baseSalary ;
		
		Calendar calendario = Calendar.getInstance();
		
		// se o contrato for desse mes e desse ano ele entra na soma
		for(HourContract contrato : contracts) {
			
			//para cada  contrato ele seta  no calendario a data do contrato
			calendario.setTime(contrato.getDate());
			
			// variavel contrato_year para receber o ano do contrato
			int contrato_year = calendario.get(Calendar.YEAR);
			
			// variavel contrato_month para receber o mes do contrato
			int contrato_month = 1 + calendario.get(Calendar.MONTH);
			
			// se o year e month é igual as contrato_year e contrato_month
			if(year == contrato_year && month == contrato_month) {				
				sum += contrato.totalValue();
			}
			
			
		}
		return sum;
	}
}
