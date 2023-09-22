package entities;

public class OutSourcedEmployee extends Employeer2 {
	
	private double additionalCharge;

	public OutSourcedEmployee() {
		super();
	}
	
	public OutSourcedEmployee(String name, Double valuePerHour, Integer hours, double additionalCharge) {
		super(name, valuePerHour, hours);
		this.additionalCharge = additionalCharge;
	}

	public double getAdditionalCharge() {
		return additionalCharge;
	}

	public void setAdditionalCharge(double additionalCharge) {
		this.additionalCharge = additionalCharge;
	}

	@Override
	public double paymennt() {
		return super.paymennt() + additionalCharge * 1.1 ;
	}
	

}
