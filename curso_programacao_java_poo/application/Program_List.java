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
		list.add("João");
		list.add("José");
		list.add("Lucas");

		// adiciona item a lista na posição desejada semm prejudicar o que já está
		// definido, utilizaando a segunda carga list.add(0, null) que passa a posição e
		// o valor
		list.add(2, "André");
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

		// remove item da lista pela posição
		list.remove(4);

		// imprime valores contido na lista
		for (String lista : list) {
			System.out.println(lista);
		}

		System.out.println("------------------------");
		// remove item por predicado
		// função lambda
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
		
		//encontrar posição de um item
		System.out.println("Index of Lucas, posição: " + list.indexOf("Lucas"));

		//não está na lista ele retorna -1
		System.out.println("Index of Bob, posição: " + list.indexOf("Bob"));
		
		System.out.println("------------------------"); 
		//filtrar/deixar na lista somente/apenas		
		//criar uma nova lista, pegar a lista e filtrar os item, devolvendo com os novos itens
		//primeiro converte para stream, depois filtra com a função lambda, depois converte/volta para lista
		List<String> result = list.stream().filter( lista -> lista.charAt(0) == 'A').collect(Collectors.toList());
		
		// imprime valores contido na lista
		for (String resultado : result) {
			System.out.println(resultado);
		}

		System.out.println("------------------------"); 
		
		//encontrar o primeiro elemento filtrando pelo predicado
		//primeiro converte para stream, depois filtra com a função lambda, chama a função findFirst que vai pegar o primeiro item do stream, se o item não existir vai retornar nulo pelo orElse
		String nome = list.stream().filter( lista -> lista.charAt(0) == 'L').findFirst().orElse(null);
		String nome1 = list.stream().filter( lista -> lista.charAt(0) == 'B').findFirst().orElse(null);
		System.out.println(nome);
		System.out.println(nome1);
		
		

	}
}
