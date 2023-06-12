package _15conversaoDeString;

public class exemplo_09_lastIndexOf {
	
	public static void main(String[] args) {
		
		//ultima posição / ultima ocorrencia
		// nesse caso 'bc'
		// o 'c' é a última, pois o 'a' é a posição 0

		String original = "abcd FGHIJ ABCD abc defg";

		int convertida = original.lastIndexOf("bc");

		System.out.println("Original: " + original);
		System.out.println("lastIndexOf: " + convertida);

	}

}
