package application;

import java.util.Locale;

import java.util.Scanner;

import entities.Product;

public class Program2 {
	
	public static void main(String[] args) {
		
		Locale.setDefault(Locale.US);	
		
		Scanner sc = new Scanner(System.in);
		
		Product produto = new Product();
		
		System.out.println("Enter product data: ");
		System.out.print("Name: ");
		produto.name = sc.nextLine();
		
		System.out.print("Price: ");
		produto.price = sc.nextDouble();
		
		System.out.print("Quantity in stock: ");
		produto.quantity = sc.nextInt();
		
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
