package Application_Poo;

import java.util.Locale;
import java.util.Scanner;

import entities.Triangle;

public class Program {

	public static void main(String[] args) {
		/*
		 Fazer um programa para ler as  medidas dos lados de dois triangulos X e Y (suponha medidas válidas). 
		 Em seguida, mostrar o valor das áreas dos dois triangulos e dizer qual dos dois triangulos possui a maior área 
		 A formula para calcular a área de um triangulo a partir das medidas de seus lados a, b, e c é a seguinte (fórmula de Heron
		 area = raiz aqudrada de p(p-a)(p-b)(p-c) onde p = a+b+c/2*/
		
		//Programa sem POO
		
		Locale.setDefault(Locale.US);
		
		Scanner scan = new Scanner(System.in);
		
		//objeto
		Triangle x, y;
		
		x = new Triangle();
		y = new Triangle();
		
		System.out.println("Enter the measures of triangle X:");
		
		x.a = scan.nextDouble();
		x.b = scan.nextDouble();
		x.c = scan.nextDouble();
		
		System.out.println("Enter the measures of triangle Y:");
		
		y.a = scan.nextDouble();
		y.b = scan.nextDouble();
		y.c = scan.nextDouble();
		
		double areaX = x.area();
			
		double areaY = y.area();
		
		System.out.printf("Triangle X area: %.4f%n"  , areaX);
		
		System.out.printf("Triangle Y area: %.4f%n"  , areaY);
		
		if(areaX > areaY) {
			System.out.println("Large area : X");
		}else{
			System.out.println("Large area : Y");
		}
		
		scan.close();
	}

}
