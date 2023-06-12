package _15conversaoDeString;

public class exemplo_01_toLowerCase {

	public static void main(String[] args) {
		//converter tudo para minusculo
		
		String original = "abcd FGHIJ ABCD defg";
		
		String convertida = original.toLowerCase();
		
		System.out.println("Original: " + original);
		System.out.println("toLowerCase: " + convertida);

	}

}
