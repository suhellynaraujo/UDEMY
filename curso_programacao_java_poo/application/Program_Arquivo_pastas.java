package application;

import java.io.File;
import java.util.Scanner;

public class Program_Arquivo_pastas {

	public static void main(String[] args) {

		Scanner scan = new Scanner(System.in);
		
		System.out.println("Entre com um caminho de pasta: \n");
		
		String strPath = scan.nextLine();
		
		File path = new File(strPath);
		
		//função como argumento de outra função
		//referencia a metodos
		// File::isDirectory isDirectory listar somente em pastas ou diretórios
		File[] folders = path.listFiles(File::isDirectory); //isDirectory listar somente em pastas ou diretórios
		
		System.out.println("\n Folders: \n");
		
		for(File folder: folders ) {
			System.out.println(folder);
		}
		
		// File::isFile listar somente arquivos
		File[] files = path.listFiles(File::isFile);
		
		System.out.println("\n Files: \n");
		
		for(File file : files) {
			System.out.println(file);
		}
		
		// criar uma subpasta a partir do caminho digitado e recebido pela variavel strPath
		boolean sucess = new File(strPath + "\\subdir").mkdir();
		
		System.out.println("\n Diretorio criado com sucesso! \n" + sucess);
		
		
		
		
		
		
		
		scan.close();
	}

}
