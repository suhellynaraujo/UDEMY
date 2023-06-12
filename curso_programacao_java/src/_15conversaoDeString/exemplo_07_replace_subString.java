package _15conversaoDeString;

public class exemplo_07_replace_subString {
	public static void main(String[] args) {
		// troca a string de posição por seleção,
		// exemplo escolhi 'abc' minuscula ser trocada pelo 'xy'	
		// então todas as 'abc' minusculas vão ser trocadas

		String original = "abcd FGHIJ ABCD defg";

		String convertida = original.replace("abc", "xy");

		System.out.println("Original: " + original);
		System.out.println("replace: " + convertida);
	}

}
