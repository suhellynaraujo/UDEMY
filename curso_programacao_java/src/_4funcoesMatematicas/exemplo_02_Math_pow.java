package _4funcoesMatematicas;

public class exemplo_02_Math_pow {

	public static void main(String[] args) {
		
	// A varíavel recebe o resultado de x elevado a y
	// pow = potenciação
		
		double x = 3.0;
		double y = 4.0;
		double z = -5.0;
		double A, B, C;
		
		A = Math.pow(x,y);
		B = Math.pow(x,2.0);
		C = Math.pow(5.0,2.0);
		
		System.out.println(x + " elevado a " + y + " = " + A);
		System.out.println(x + " elevado ao quadrado = " + B);
		System.out.println("5 elevado ao quadrado = " + C);

	}

}
