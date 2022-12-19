package _2processamentoDeDados;

public class exemplo_01_atribuicao {

	public static void main(String[] args) {

		// Prcessameto de dados = comandos de atribuição

		// expressão é armazenado na variável

		int x, y;
		x = 5;
		y = 2 * x;

		System.out.println(x);
		System.out.println(y);

		// multiplicando números int e double, converte para double, contendo casas
		// decimais
		int w;
		double z;
		w = 5;
		z = 2 * w;

		System.out.println(w);
		System.out.println(z);

		// sempre indicar o tipo do número na variável
		// para double indicar na variável o núnemro, o ponto e um zero. Mesmo que não haja casas decimais		
		double b, B, h, area;

		b = 6.0;
		B = 8.0;
		h = 5.0;

		area = (b + B) / 2.0 * h;

		System.out.println(area);
		
		// para float indicar na variávcel o número e um f
		float b1, B1, h1, area1;

		b1 = 6f;
		B1 = 8f;
		h1 = 5f;

		area1 = (b1 + B1) / 2f * h1;

		System.out.println(area1);
		
		//quando a expressão é de tipos int, mas querendo o resuldao doule
		// o compilador entende que o resultado será inteiro, por achar que seu tipo das variáveis é int, arredondando(trucando) as casas decimais
		int c, d;
		double resultado;
		c = 5;
		d = 2;
		
		resultado = c / d;
		System.out.println(resultado);
		
		// Casting coversão explicita para conversão de dados 	
		
		// para o compilador entender que é para ter resultado com casas decimais temos que configurar com o casting
		// para isso é só colocar o tipo entre parenteses
		
		int e, f;
		double resul;
		e = 5;
		f = 2;
		
		resul = (double) e / f;
		System.out.println(resul);
		
		// quando atribuir um valor de uma variável double para int 
		// o compilador não aceita, então se deve usar o casting
		// não se importando com as casas decimais, pois ele tira.
		double g;
		int i;
		g = 5.0;
		i = ( int) g;
		System.out.println(i);

	}

}
