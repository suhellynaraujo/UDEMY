package entities;

public class Product {
	
	/*
	 * Fazer um programa para ler os dados de um produto em estoque (nome, preços e quantidade no estoque)
	 * Mostrar os dados do produto (nome, preço, quantidade no estoque, valor total no estoque
	 * Realizar uma entrada no estoque e mostrar novamente os dados do produto
	 * Realizar uma saída no estoque e mostrar novamente os dados do produto*/

	public String name;
	public double price;
	public int quantity;
	
	public double TotalValueInStock() {
		return price * quantity;
	}
	
	public void AddProducts(int quantity) {		
		this.quantity += quantity;
		
	}
	
	public void RemoveProducts(int quantity) {
		this.quantity -= quantity;
		
	}
}
