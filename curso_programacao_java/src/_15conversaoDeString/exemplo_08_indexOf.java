package _15conversaoDeString;

public class exemplo_08_indexOf {

	public static void main(String[] args) {
	
		//primeira posi��o
		// nesse caso 'bc'
		// o 'b' � a primeira e sua posi��o � a 1, pos o 'a' � a 0

		String original = "abcd FGHIJ ABCD defg";

		int convertida = original.indexOf("bc");

		System.out.println("Original: " + original);
		System.out.println("replace: " + convertida);

	}

}
