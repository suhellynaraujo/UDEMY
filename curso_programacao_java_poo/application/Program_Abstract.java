package application;

import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import java.util.Scanner;

import entities.Abstract_Circle;
import entities.Abstract_Rectangle;
import entities.Abstract_Shape;
import entities.enums.Abstract_Color;

public class Program_Abstract {

	public static void main(String[] args) {

		Locale.setDefault(Locale.US);

		Scanner scan = new Scanner(System.in);

		List<Abstract_Shape> list = new ArrayList<>();

		System.out.print("Enter the number of shapes: ");
		
		int numeroShapes = scan.nextInt();

		for (int i = 1; i <= numeroShapes; i++) {
			System.out.println("Shape #" + i + " data:");
			System.out.print("Rectangle or Circle (r/c)? ");
			char opcao = scan.next().charAt(0);
			System.out.print("Color (BLACK/BLUE/RED): ");
			Abstract_Color color = Abstract_Color.valueOf(scan.next());			
			if (opcao == 'r') {
				System.out.print("Width: ");
				double width = scan.nextDouble();
				System.out.print("Heigth: ");
				double heigth = scan.nextDouble();
				list.add(new Abstract_Rectangle(color, width, heigth));
			} else {
				System.out.print("Radius: ");
				double radius = scan.nextDouble();
				list.add(new Abstract_Circle(color, radius));
			}

		}
		
		System.out.println();
		System.out.println("SHAPE AREAS: ");	
		
		for(Abstract_Shape shape : list) {
			System.out.println(String.format("%.2f",  shape.area()));			
		}
				
		scan.close();

	}
}
