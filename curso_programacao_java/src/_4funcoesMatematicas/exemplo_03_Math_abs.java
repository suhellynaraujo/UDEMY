package _4funcoesMatematicas;

public class exemplo_03_Math_abs {

	public static void main(String[] args) {
		
		// A varíavel recebe o valor absoluto, tirar o sinal negativo caso exista
		//exemplo -1, entoa vai pegar o 1
		// abs = absoluto
			
			double x = 3.0;
			double y = 4.0;
			double z = -5.0;
			double A, B;
			
			A = Math.abs(x);
			B = Math.abs(z);
		
			System.out.println("Valor absoluto de " + y +" = " + A);
			System.out.println("Valor absoluto de " + y +" = " + B);
		

	}

}
