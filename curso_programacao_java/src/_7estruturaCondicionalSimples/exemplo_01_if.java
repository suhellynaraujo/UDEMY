package _7estruturaCondicionalSimples;

public class exemplo_01_if {

	public static void main(String[] args) {
		
		// Verdadeira = executa o bloco de comandos
		// Falsa = pula o bloco de comandos

		int x = 5;

		System.out.println("Bom dia");
		
		// se for falso ele irá pular essa condição
		if (x < 0) {
			System.out.println("Boa tarde");
		}
		
		System.out.println("Boa noite");
	}

}
