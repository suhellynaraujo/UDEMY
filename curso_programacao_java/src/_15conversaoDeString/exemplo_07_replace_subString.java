package _15conversaoDeString;

public class exemplo_07_replace_subString {
	public static void main(String[] args) {
		// troca a string de posi��o por sele��o,
		// exemplo escolhi 'abc' minuscula ser trocada pelo 'xy'	
		// ent�o todas as 'abc' minusculas v�o ser trocadas

		String original = "abcd FGHIJ ABCD defg";

		String convertida = original.replace("abc", "xy");

		System.out.println("Original: " + original);
		System.out.println("replace: " + convertida);
	}

}
