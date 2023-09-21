package application;

import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

public class Program_List {

	public static void main(String[] args) {

		/*
		 * List => Interface Interger => wrapper classe list => nomde do meu objeto new
		 * ArrayList => classe que implementa a interface List
		 */

		List<String> list = new ArrayList<>();

		// .add => adiciona um item a lista
		list.add("Maria");
		list.add("Jo�o");
		list.add("Jos�");
		list.add("Lucas");

		// adiciona item a lista na posi��o desejada semm prejudicar o que j� est�
		// definido, utilizaando a segunda carga list.add(0, null) que passa a posi��o e
		// o valor
		list.add(2, "Andr�");
		list.add(4, "Carlos");
		list.add(5, "Antonio");
		
		// imprime valores contido na lista
		for (String lista : list) {
			System.out.println(lista);
		}
		
		System.out.println("------------------------"); 

		// saber o tamanho da lista
		System.out.println(list.size());
		
		System.out.println("------------------------"); 
		
		// remover item da lista pelo valor
		list.remove("Maria");

		// remove item da lista pela posi��o
		list.remove(4);

		// imprime valores contido na lista
		for (String lista : list) {
			System.out.println(lista);
		}

		System.out.println("------------------------");
		// remove item por predicado
		// fun��o lambda
		// remove todo String(tipo) "nome do objeto" tal que "nome do objeto".(tipo
		// primitivo) seja igual a
		// remove todo item do tipo String da List lista tal que lista.charArt(0) seja
		// igual a
		list.removeIf(lista -> lista.charAt(0) == 'J');

		// imprime valores contido na lista
		for (String lista : list) {
			System.out.println(lista);
		}

		System.out.println("------------------------"); 
		
		//encontrar posi��o de um item
		System.out.println("Index of Lucas, posi��o: " + list.indexOf("Lucas"));

		//n�o est� na lista ele retorna -1
		System.out.println("Index of Bob, posi��o: " + list.indexOf("Bob"));
		
		System.out.println("------------------------"); 
		//filtrar/deixar na lista somente/apenas		
		//criar uma nova lista, pegar a lista e filtrar os item, devolvendo com os novos itens
		//primeiro converte para stream, depois filtra com a fun��o lambda, depois converte/volta para lista
		List<String> result = list.stream().filter( lista -> lista.charAt(0) == 'A').collect(Collectors.toList());
		
		// imprime valores contido na lista
		for (String resultado : result) {
			System.out.println(resultado);
		}

		System.out.println("------------------------"); 
		
		//encontrar o primeiro elemento filtrando pelo predicado
		//primeiro converte para stream, depois filtra com a fun��o lambda, chama a fun��o findFirst que vai pegar o primeiro item do stream, se o item n�o existir vai retornar nulo pelo orElse
		String nome = list.stream().filter( lista -> lista.charAt(0) == 'L').findFirst().orElse(null);
		String nome1 = list.stream().filter( lista -> lista.charAt(0) == 'B').findFirst().orElse(null);
		System.out.println(nome);
		System.out.println(nome1);
		
		

	}
}
