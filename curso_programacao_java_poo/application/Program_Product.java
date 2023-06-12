package application;

import java.util.Locale;

import java.util.Scanner;

import entities.Product;

public class Program_Product {
	
	public static void main(String[] args) {
		
		Locale.setDefault(Locale.US);	
		
		Scanner sc = new Scanner(System.in);
		
		
		System.out.println("Enter product data: ");
		System.out.print("Name: ");
		String name = sc.nextLine();
		
		System.out.print("Price: ");
		double price = sc.nextDouble();
		Product produto = new Product(name, price);
		
		produto.setName("computer");
		System.out.println("Updated name: " + produto.getName());
		
		/*System.out.print("Quantity in stock: ");
		produto.quantity = sc.nextInt();*/
		
		System.out.println();
		System.out.println("Product data: " + produto);
		
		System.out.println();
		System.out.print("Enter the number of product to be added in stock : ");
		int quantity = sc.nextInt();
		produto.AddProducts(quantity);
		
		System.out.println();
		System.out.println("Update data: " + produto);
		
		System.out.println();
		System.out.print("Enter the number of product to be removed in stock : ");
		quantity = sc.nextInt();
		produto.RemoveProducts(quantity);
		
		System.out.println();
		System.out.println("Update data: " + produto);
		
		sc.close();
	}

}
