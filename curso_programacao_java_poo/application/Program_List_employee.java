package application;

import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import java.util.Scanner;

import entities.Employee;

public class Program_List_employee {

	public static void main(String[] args) {

		/*
		 * Fazer um programa para ler um n�mero inteiro N e depois os dados (id, nome e
		 * salario) de N funcion�rios. N�o deve haver repeti��o de id. Em seguida,
		 * efetuar o aumento de X por cento no sal�rio de um determinado funcion�rio.
		 * Para isso, o programa deve ler um id e o valor X. Se o id informado n�o
		 * existir, mostrar uma mensagem e abortar a opera��o. Ao final, mostrar a
		 * listagem atualizada dos funcion�rios, conforme exemplos. Lembre-se de aplicar
		 * a t�cnica de encapsulamento para n�o permitir que o sal�rio possa ser mudado
		 * livremente. Um sal�rio s� pode ser aumentado com base em uma opera��o de
		 * aumento por porcentagem dada
		 */
		Locale.setDefault(Locale.US);

		Scanner scan = new Scanner(System.in);

		List<Employee> lista = new ArrayList<>();

		System.out.print("How many employees will be registered? ");

		int numero = scan.nextInt();

		for (int i = 0; i < numero; i++) {

			System.out.println();

			System.out.println("Emplyoee #" + (i + 1) + ":");

			System.out.print("Id: ");
			Integer id = scan.nextInt();

			while (hasId(lista, id)) {
				System.out.println("Id already taken! Try again: ");
				id = scan.nextInt();
			}

			System.out.print("Name: ");
			scan.nextLine();
			String name = scan.nextLine();

			System.out.print("Salary: ");
			Double salary = scan.nextDouble();

			Employee employee = new Employee(id, name, salary);

			lista.add(employee);
		}

		System.out.println("Enter the employee id that will have salary increase : ");

		int idSalary = scan.nextInt();

		Employee emp = lista.stream().filter(x -> x.getId() == idSalary).findFirst().orElse(null);

		if (emp == null) {
			System.out.println("This id not existe!");
		} else {
			System.out.println("Enter the percentage: ");
			double percent = scan.nextDouble();
			emp.increaseSalary(percent);
		}

		System.out.println();
		System.out.println("List of employees:");
		for (Employee e : lista) {
			System.out.println(e);
		}

		scan.close();
	}

	public static Integer position(List<Employee> list, int id) {
		for (int i = 0; i < list.size(); i++) {
			if (list.get(i).getId() == id) {
				return i;
			}
		}
		return null;
	}

	public static boolean hasId(List<Employee> list, int id) {
		Employee emp = list.stream().filter(x -> x.getId() == id).findFirst().orElse(null);
		return emp != null;
	}
}
