package _15conversaoDeString;

public class exemplo_09_lastIndexOf {
	
	public static void main(String[] args) {
		
		//ultima posi��o / ultima ocorrencia
		// nesse caso 'bc'
		// o 'c' � a �ltima, pois o 'a' � a posi��o 0

		String original = "abcd FGHIJ ABCD abc defg";

		int convertida = original.lastIndexOf("bc");

		System.out.println("Original: " + original);
		System.out.println("lastIndexOf: " + convertida);

	}

}
