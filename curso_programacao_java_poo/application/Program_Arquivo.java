package application;

import java.io.File;
import java.io.IOException;
import java.util.Scanner;

public class Program_Arquivo {

	public static void main(String[] args) {
	
		// intanciar um objeto do tipo File
		//o objeto vai incapsular o processo de acessar o arquivo e tbm o caminho
		File file = new File("C:\\temp\\in.txt");
		
		//instanciar sc apartir do arquivo
		Scanner sc = null;
		try {
			//buscar o arquivo
			sc = new Scanner(file);
			//verificar se ainda existe uma nova linha no arquivo
			while(sc.hasNextLine()) {
				//ler a linnha do arquivo
				System.out.println(sc.nextLine());
			}
		} catch (IOException e) {
			System.out.println("Error: " + e.getMessage());
		}
		finally {
			if(sc != null) {
				sc.close();
						
			}
		}
		
		

	}

}
