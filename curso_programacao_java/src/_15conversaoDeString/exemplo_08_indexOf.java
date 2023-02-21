package _15conversaoDeString;

public class exemplo_08_indexOf {

	public static void main(String[] args) {
	
		//primeira posição
		// nesse caso 'bc'
		// o 'b' é a primeira e sua posição é a 1, pos o 'a' é a 0

		String original = "abcd FGHIJ ABCD defg";

		int convertida = original.indexOf("bc");

		System.out.println("Original: " + original);
		System.out.println("replace: " + convertida);

	}

}
