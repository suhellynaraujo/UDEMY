package entities;

import entities.enums.Abstract_Color;

public abstract class Abstract_Shape {
	
	private Abstract_Color color;

	public Abstract_Shape() {
		
	}
	
	public Abstract_Shape(Abstract_Color color) {
		
		this.color = color;
	}

	public Abstract_Color getColor() {
		return color;
	}

	public void setColor(Abstract_Color color) {
		this.color = color;
	}

	public abstract double area();
	

}
