package application;

public class Program_Boxing_Unboxing {

	public static void main(String[] args) {
		
		int x = 20;
		
		// variavel tipo referencia
		Object obj = x;
		
		System.out.println(obj);
		
		// variavel tipo valor, necessário o casting(tipo da variavel) pois os tipos das variaveis são diferentes
		int y = (int) obj;
		
		System.out.println(y);

	}

}
