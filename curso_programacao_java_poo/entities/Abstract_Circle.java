package entities;

import entities.enums.Abstract_Color;

public class Abstract_Circle extends Abstract_Shape{
	
	private double radius;
	
	
	public Abstract_Circle() {
		super();
	}

	public Abstract_Circle(Abstract_Color color, double radius) {
		super(color);
		this.radius = radius;
		
	}

	public double getRadius() {
		return radius;
	}

	public void setRadius(double radius) {
		this.radius = radius;
	}

	@Override
	public double area() {
		
		return Math.PI * radius * radius;
	}

}
