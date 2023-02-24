package Application_Poo;

import java.util.Locale;
import java.util.Scanner;

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
		
		double xA, xB, xC, yA, yB, yC;
		
		System.out.println("Enter the measures of triangle X:");
		
		xA = scan.nextDouble();
		xB = scan.nextDouble();
		xC = scan.nextDouble();
		
		System.out.println("Enter the measures of triangle Y:");
		
		yA = scan.nextDouble();
		yB = scan.nextDouble();
		yC = scan.nextDouble();
		
		double p = (xA + xB + xC) / 2.0;		
		double areaX = Math.sqrt(p * (p - xA) *(p - xB) * (p - xC) );
		
		p = (yA + yB + yC) / 2.0;		
		double areaY = Math.sqrt(p * (p - yA) *(p - yB) * (p - yC) );
		
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
