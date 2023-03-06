package entities;

public class Product {
	
	/*
	 * Fazer um programa para ler os dados de um produto em estoque (nome, pre�os e quantidade no estoque)
	 * Mostrar os dados do produto (nome, pre�o, quantidade no estoque, valor total no estoque
	 * Realizar uma entrada no estoque e mostrar novamente os dados do produto
	 * Realizar uma sa�da no estoque e mostrar novamente os dados do produto*/

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
