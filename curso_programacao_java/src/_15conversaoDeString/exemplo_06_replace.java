package _15conversaoDeString;

public class exemplo_06_replace {
	
	public static void main(String[] args) {
		// troca a string de posição por seleção, 
		// exemplo escolhi 'a' minuscula ser trocada pelo x
		// então todas as 'a' minusculas vão ser trocadas

		String original = "abcd FGHIJ ABCD defg";

		String convertida = original.replace('a', 'x');

		System.out.println("Original: " + original);
		System.out.println("replace: " + convertida);

	}

}
