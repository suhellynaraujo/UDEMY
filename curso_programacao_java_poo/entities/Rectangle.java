package entities;

public class Rectangle {

	/*
	 * Fazer um programa para ler os valores da largura e altura de um retângulo. Em
	 * seguida, mostrar na tela o valor de sua área, perímetro e diagonal. Usar uma
	 * classe como mostrado no projeto ao lado
	 */

	public double width, height;

	public double Area() {

		return width * height;

	}

	public double Perimeter() {
		return (width + height) * 2;
	}

	public double Diagonal() {
		return Area() - width - height;
	}

	@Override
	public String toString() {
		return "Área: "
				+ String.format("%.2f",  Area())
				+ ", "
				+ "Perímetro: "
				+ String.format("%.2f",  Perimeter())
				+ ", "
				+ "Diagonal: "
				+ String.format("%.2f",  Diagonal());
	}

}
