package entities;

public class Employeer2 {
	
	private String name;
	private Double valuePerHour;
	private Integer hours;
	
	
	public Employeer2() {
		super();
	}


	public Employeer2(String name, Double valuePerHour, Integer hours) {
		super();
		this.name = name;
		this.valuePerHour = valuePerHour;
		this.hours = hours;
	}


	public String getName() {
		return name;
	}


	public void setName(String name) {
		this.name = name;
	}


	public Double getValuePerHour() {
		return valuePerHour;
	}


	public void setValuePerHour(Double valuePerHour) {
		this.valuePerHour = valuePerHour;
	}


	public Integer getHours() {
		return hours;
	}


	public void setHours(Integer hours) {
		this.hours = hours;
	}
	
	public double paymennt() {
		return hours * valuePerHour ;
	}
	
	

}
