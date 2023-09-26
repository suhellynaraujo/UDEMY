package application;

import java.io.BufferedWriter;
import java.io.FileWriter;
import java.io.IOException;

public class Program_Arquivo_FileWriter_BufferedWriter {

	public static void main(String[] args) {

		
		String[] linhas = new String[] {"Good morning", "Good afternoon", "Good night"};
		
		String path  = "C:\\temp\\out.txt";
		
		//try(BufferedWriter bw = new BufferedWriter(new FileWriter(path)))   recria 
		try(BufferedWriter bw = new BufferedWriter(new FileWriter(path, true))){ // cria no final do arquivo
			
			for(String line : linhas) {
				//para cada line contido na minha lista linhas, escreva no arquivo
				bw.write(line);
				//quebrar linhas
				bw.newLine();
			}
			
		}catch (IOException e) {
			e.printStackTrace();
		} 
	}

}
