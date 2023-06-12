package _15conversaoDeString;

public class exemplo_03_trim {
	public static void main(String[] args) {
		// mantem a original removendo os espaços do final

		String original = "abcd FGHIJ ABCD defg";

		String convertida = original.trim();

		System.out.println("Original: " + original);
		System.out.println("trim: " + convertida);

	}

}
