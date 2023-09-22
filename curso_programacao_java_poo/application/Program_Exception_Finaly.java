package application;

import java.io.File;
import java.io.IOException;
import java.util.Scanner;

public class Program_Exception_Finaly {
	
	public static void main(String[] args) {
		//caminho do arquivo
		File file = new File("C:\\temp\\in.txt");
		Scanner sc = null;
		try {
			//busca o arquivo 
			sc = new Scanner(file);
			//percorre cada linha do arquivo 
			while (sc.hasNextLine()) {
				//imprime as linhas do arquivo
				System.out.println(sc.nextLine());
			}
		} 
		catch (IOException e) {
			System.out.println("Error opening file: " + e.getMessage());
			
		} 
		// executa independente se der exceção ou não
		finally {
			if (sc != null) {
				sc.close();
			}
			System.out.println("Finally block executed");
		}
	}
}
