package _2processamentoDeDados;

public class exemplo_01_atribuicao {

	public static void main(String[] args) {

		// Prcessameto de dados = comandos de atribui��o

		// express�o � armazenado na vari�vel

		int x, y;
		x = 5;
		y = 2 * x;

		System.out.println(x);
		System.out.println(y);

		// multiplicando n�meros int e double, converte para double, contendo casas
		// decimais
		int w;
		double z;
		w = 5;
		z = 2 * w;

		System.out.println(w);
		System.out.println(z);

		// sempre indicar o tipo do n�mero na vari�vel
		// para double indicar na vari�vel o n�nemro, o ponto e um zero. Mesmo que n�o haja casas decimais		
		double b, B, h, area;

		b = 6.0;
		B = 8.0;
		h = 5.0;

		area = (b + B) / 2.0 * h;

		System.out.println(area);
		
		// para float indicar na vari�vcel o n�mero e um f
		float b1, B1, h1, area1;

		b1 = 6f;
		B1 = 8f;
		h1 = 5f;

		area1 = (b1 + B1) / 2f * h1;

		System.out.println(area1);
		
		//quando a express�o � de tipos int, mas querendo o resuldao doule
		// o compilador entende que o resultado ser� inteiro, por achar que seu tipo das vari�veis � int, arredondando(trucando) as casas decimais
		int c, d;
		double resultado;
		c = 5;
		d = 2;
		
		resultado = c / d;
		System.out.println(resultado);
		
		// Casting covers�o explicita para convers�o de dados 	
		
		// para o compilador entender que � para ter resultado com casas decimais temos que configurar com o casting
		// para isso � s� colocar o tipo entre parenteses
		
		int e, f;
		double resul;
		e = 5;
		f = 2;
		
		resul = (double) e / f;
		System.out.println(resul);
		
		// quando atribuir um valor de uma vari�vel double para int 
		// o compilador n�o aceita, ent�o se deve usar o casting
		// n�o se importando com as casas decimais, pois ele tira.
		double g;
		int i;
		g = 5.0;
		i = ( int) g;
		System.out.println(i);

	}

}
