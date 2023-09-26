package application;

import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;

public class Program_Arquivo_FileReader_BufferedReader {

	public static void main(String[] args) {

		String path = ("C:\\temp\\in.txt");
		FileReader fr = null;
		BufferedReader br = null;

		try {

			fr = new FileReader(path);
			// BufferedReader é instanciado a partir do FileReader , deixando a
			// leitura/flexivel mais rápida
			br = new BufferedReader(fr);

			// ler uma linha do arquivo
			// se o arquivo estiver no final ele vai retornar nulo
			String line = br.readLine();
			while (line != null) {
				System.out.println(line);
				line = br.readLine();

			}
		} catch (IOException e) {
			System.out.println("Error: " + e.getMessage());
		} finally {

			try {
				if (br != null) {
					br.close();

				}
				if (fr != null) {
					fr.close();

				}
			} catch (IOException e) {
				e.printStackTrace();
			}
		}

	}

}
