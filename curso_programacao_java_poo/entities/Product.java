package entities;

public class Product {
	
	/*
	 * Fazer um programa para ler os dados de um produto em estoque (nome, preços e quantidade no estoque)
	 * Mostrar os dados do produto (nome, preço, quantidade no estoque, valor total no estoque
	 * Realizar uma entrada no estoque e mostrar novamente os dados do produto
	 * Realizar uma saída no estoque e mostrar novamente os dados do produto*/

	private String name;
	private double price;
	private int quantity;
	
	public Product() {
		
	}

	public Product(String name, double price, int quantity) {
		this.name = name;
		this.price = price;
		this.quantity = quantity;
	}
	
	public Product(String name, double price) {
		this.name = name;
		this.price = price;
	}
	
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public double getPrice() {
		return price;
	}

	public void setPrice(double price) {
		this.price = price;
	}

	public int getQuantity() {
		return quantity;
	}

	public double TotalValueInStock() {
		return price * quantity;
	}
	
	public void AddProducts(int quantity) {		
		this.quantity += quantity;
		
	}
	
	public void RemoveProducts(int quantity) {
		this.quantity -= quantity;
		
	}

	@Override
	public String toString() {
		return name
				+ ", R$"
				+ String.format("%.2f", price)
				+ ", "
				+ quantity
				+ " units, Total: R$"
				+ String.format("%.2f",TotalValueInStock());
	}
	
	
}
