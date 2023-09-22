package entities;

import entities.enums.Abstract_Color;

public class Abstract_Rectangle extends Abstract_Shape{

	public double width, height;
	
	
	public Abstract_Rectangle() {
		super();
	}


	public Abstract_Rectangle(Abstract_Color color, double width, double height) {
		super(color);
		this.width = width;
		this.height = height;
	}



	public double getWidth() {
		return width;
	}


	public void setWidth(double width) {
		this.width = width;
	}


	public double getHeight() {
		return height;
	}


	public void setHeight(double height) {
		this.height = height;
	}


	@Override
		public double area() {
		return width * height;
		}

	

}
