package application;

import java.util.InputMismatchException;
import java.util.Scanner;

public class Program_Exception_Try_Catch {

	public static void main(String[] args) {
		
		Scanner scan = new Scanner(System.in);
		
		try {
			String[] vetor = scan.nextLine().split("");		
			int posicao = scan.nextInt();
			System.out.println(vetor[posicao]);
			
		} catch (ArrayIndexOutOfBoundsException e) {
			System.out.println("Posição inválida!");
		}
		catch (InputMismatchException e) {
			System.out.println("Erro de input");
		}
		System.out.println("Fim do programa");
		
		scan.close();
		

	}

}
