package _1saidaDedados;

public class exemplo_04_concatenar {

	public static void main(String[] args) {
		
		//Saída de dados 

		// vários elementos em um mesmo comando de escrita usando o println

		double x = 10.35784;
		System.out.println(x);
		System.out.println("RESULTADO = " + x + "METROS");

		// vários elementos em um mesmo comando de escrita usando o printf
		// limitando as casas decimais
		
		double y = 10.35784;
		System.out.println(y);
		System.out.printf("RESULTADO = %.2f metros%n" , x);
		
		// vários elementos interpolados em um mesmo comando de escrita usando o println com marcadores para identificar as variáveis
		// marcadores de variáveis :
		// %f ponto flutuante
		// %d inteiro
		// %s texto
		// %n quebra de linha

		String nome = "Maria";
		int idade = 31;
		double renda = 4000.0;
		// indica os marcadores e depois declara as variáveis na ordem dos marcadores
		System.out.printf("%s tem %d anos e ganha R$ %.2f reais%n", nome , idade , renda);
	}

}
