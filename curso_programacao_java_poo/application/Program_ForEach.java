package application;

public class Program_ForEach {
	
	public static void main(String[] args) {
		String[] vetor = new String[] {"Maria", "João", "José", "Antônio"};
		
		for(int i = 0; i < vetor.length; i++){
			System.out.println(vetor[i]);
		}
		
		System.out.println("--------------------------------------");
		
		// para cada objeto "obj" do tipo "String" contido na coleção "vetor" do tipo "String" faça:
		for(String obj : vetor) {
			System.out.println(obj);			
		}
		
	}
}
