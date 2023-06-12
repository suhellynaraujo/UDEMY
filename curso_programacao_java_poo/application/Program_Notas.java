package application;

import java.util.Locale;
import java.util.Scanner;

import entities.Notas;

public class Program_Notas {

	public static void main(String[] args) {
		
		Locale.setDefault(Locale.US);
		
		Scanner sc = new Scanner(System.in);
		
		Notas notas = new Notas();
		
		System.out.print("Nome do aluno: ");
		notas.nome = sc.nextLine();
		System.out.print("Nota do primeiro Trimestre: ");
		notas.primeiroTrimestre = sc.nextDouble();
		System.out.print("Nota do segundo Trimestre: ");
		notas.segundoTrimestre = sc.nextDouble();
		System.out.print("Nota do terceiro Trimestre: ");
		notas.terceiroTrimestre = sc.nextDouble();
		
		
		double media = notas.Media();
		
		double result = notas.Result();
		
		System.out.println( result + media);
		
		
		
		
		sc.close();
	
	}

}
