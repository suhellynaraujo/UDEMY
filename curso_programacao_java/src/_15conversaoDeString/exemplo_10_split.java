package _15conversaoDeString;

public class exemplo_10_split {
	
	public static void main(String[] args) {
		// função para recortar a string, criando um vetor, 
		// sendo assim colocando as partes da string em várias posições  
		// de acordo com a quantidade de valores na variáveis
		

		String s = "potato apple lemon";

		String[] vect = s.split("");

		System.out.println(vect[0]);
		System.out.println(vect[1]);
		System.out.println(vect[2]);
		

	}

}
