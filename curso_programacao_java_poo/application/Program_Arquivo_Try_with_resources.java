package application;

import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;

public class Program_Arquivo_Try_with_resources {

	public static void main(String[] args) {

		String path = ("C:\\temp\\in.txt");
		
		try(BufferedReader br = new BufferedReader(new FileReader(path))) {

			// ler uma linha do arquivo
			// se o arquivo estiver no final ele vai retornar nulo
			String line = br.readLine();
			while (line != null) {
				System.out.println(line);
				line = br.readLine();

			}
		} catch (IOException e) {
			System.out.println("Error: " + e.getMessage());
		} 

	}

}
