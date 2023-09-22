package application;

import java.util.InputMismatchException;
import java.util.Scanner;

public class Program_Exception_Pilha {

	public static void main(String[] args) {
		method1();

	}
	public static void method1() {
		System.out.println("****Method 1 Start****");
		method2();
		System.out.println("****Method 1 End****");

	}

	public static void method2() {
		System.out.println("****Method 2 Start****");
		Scanner scan = new Scanner(System.in);

		try {
			String[] vetor = scan.nextLine().split("");
			int posicao = scan.nextInt();
			System.out.println(vetor[posicao]);

		} catch (ArrayIndexOutOfBoundsException e) {
			System.out.println("Posição inválida!");
			e.printStackTrace();
			scan.next();
		} catch (InputMismatchException e) {
			System.out.println("Erro de input");
		}
		System.out.println("Fim do programa");

		scan.close();
		System.out.println("****Method 2 End****");

	}
}
