package _15conversaoDeString;

public class exemplo_04_subString {

	public static void main(String[] args) {
		// pegar somente da posição declarada e montar uma nova string, nesse exemplo a posição 2

		String original = "abcd FGHIJ ABCD defg";

		String convertida = original.substring(2);

		System.out.println("Original: " + original);
		System.out.println("subString: " + convertida);

	}

}
