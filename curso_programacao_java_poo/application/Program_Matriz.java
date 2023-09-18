package application;

import java.util.Scanner;

public class Program_Matriz {

	public static void main(String[] args) {

		/*
		 * Fazer um programa para ler um número inteiro N e uma matrizriz de ordem N (N linnhas e N colunas)
		 * contendo números inteiros. Em seguida, mostrar a diagonal principal e a
		 * quantidade de valores negativos da matrizriz
		 */
		
		Scanner scan = new Scanner(System.in);
		
		int n = scan.nextInt();
		
		int[][] matriz = new int[n][n];
		
		//percorrer as linhas e colunas
		//pecorre as linhas
		//matriz.length pecorre a quantidade de linhas
		//for(int linha = 0; linha < n; linha ++)
		for(int linha = 0; linha < matriz.length; linha ++) {
			//pecorre as colunas
			//matriz[linha].length é o tamanho do vetor correspondente a linha
			//for(int coluna = 0; coluna < n; coluna++)
			for(int coluna = 0; coluna < matriz[linha].length; coluna++) {
				matriz[linha][coluna] = scan.nextInt();
			}
		}
		
		//Main Diagonal:
		System.out.println("Main Diagonal: ");
		//matriz.length pecorre a quantidade de linhas
		//for(int i = 0; i < n; i++) 
		for(int i = 0; i < matriz.length; i++) {
			System.out.print(matriz[i][i] + " ");
		}
		
		System.out.println();
		
		int count = 0;
		
		//Negative numbers
		//matriz.length pecorre a quantidade de linhas
		//for(int linhas = 0; linhas < n; linhas++)
		for(int linhas = 0; linhas < matriz.length; linhas++) {
			//matriz[linha].length é o tamanho do vetor correspondente a linha
			//for(int colunas = 0; colunas < n; colunas++)
			for(int colunas = 0; colunas < matriz[linhas].length; colunas++) {
				if(matriz[linhas][colunas] < 0) {				
					count++;
				}
			}
		}
		
		System.out.println("Negative numbers = " + count);
		
		
		
		
		
		
		
		scan.close();
		
		
	}
}
