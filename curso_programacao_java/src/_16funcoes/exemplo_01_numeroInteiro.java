package _16funcoes;

import java.util.Scanner;

public class exemplo_01_numeroInteiro {

	public static void main(String[] args) {
		
		Scanner scan = new Scanner(System.in);	
		
		System.out.println("Enter three numbers: ");
		
		int a = scan.nextInt();
		int b = scan.nextInt();
		int c = scan.nextInt();
		
		if(a > b && a > c ) {
			System.out.println("Higher = " + a );
		}else if(b > c){
			System.out.println("Higher = " + b );
		}else {
			System.out.println("Higher = " + c );
		}
		scan.close();

	}

}
