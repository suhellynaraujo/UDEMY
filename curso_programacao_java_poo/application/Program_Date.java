package application;

import java.time.Duration;
import java.time.Instant;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.ZoneId;
import java.time.format.DateTimeFormatter;
import java.time.temporal.ChronoUnit;

public class Program_Date {

	public static void main(String[] args) {

		// site Oracle
		// https://docs.oracle.com/en/java/javase/11/docs/api/java.base/java/time/format/DateTimeFormatter.html

		//DateTimeFormatter format = DateTimeFormatter.ofPattern("dd/MM/yyyy HH:mm");
		// DateTimeFormatter frmt = DateTimeFormatter.ofPattern("dd/MM/yyyy");

		System.out.println("\n-------------data local----------------\n");
		// imprimir data local agora
		LocalDate data1 = LocalDate.now();

		System.out.println("Date1 = " + data1);

		System.out.println("\n----------data local com hora----------\n");
		// imprime a data local agora com hora

		LocalDateTime data2 = LocalDateTime.now();
		System.out.println("Date2 = " + data2);

		System.out.println("\n------------- data global--------------\n");
		// imprime a data global agora com hora e padrão z, indicando data-hora GMT, com
		// fuso horario de londres

		Instant data3 = Instant.now();
		System.out.println("Date3 = " + data3);

		System.out.println("\n-------data no formato ISO 8601--------\n");
		// imprimir a data no formato ISO 8601,
		LocalDate data4 = LocalDate.parse("2023-09-17");
		System.out.println("Date4 = " + data4.toString());

		LocalDateTime data5 = LocalDateTime.parse("2023-09-17T22:25:05");
		System.out.println("Date5 = " + data5.toString());

		Instant data6 = Instant.parse("2023-09-17T22:25:05z");
		System.out.println("Date6 = " + data6.toString());

		// Instant data7 = Instant.parse("2023-09-17T22:25:05-03:00");
		// System.out.println(data7.toString());

		LocalDate data8 = LocalDate.parse("17/09/2023", DateTimeFormatter.ofPattern("dd/MM/yyyy"));
		System.out.println("Date8 = " + data8.toString());

		LocalDate data9 = LocalDate.parse("17/09/2023 22:49", DateTimeFormatter.ofPattern("dd/MM/yyyy HH:mm"));
		System.out.println("Date9 = " + data9.toString());// nnão está mostrando hora-min ver o pq não est´´a trazendo

		System.out.println("\n------data com texto customizado------\n");
		// imprimir data com texto customizado
		// nesse formato o objeto ´´e reaproveitado enquanto o escopo da variavel
		// estiver sendo usado

		DateTimeFormatter fmt1 = DateTimeFormatter.ofPattern("dd/MM/yyyy ");
		LocalDate data10 = LocalDate.parse("2023-09-19");
		System.out.println("Date10 = " + data10);
		System.out.println("Date10 = " + data10.format(fmt1));
		System.out.println("Date10 = " + fmt1.format(data10));

		// nesse formato é executado no momento da connversão
		// System.out.println("Date10 = " +
		// data10.format(DateTimeFormatter.ofPattern("dd/MM/yyyy")));

		DateTimeFormatter fmt2 = DateTimeFormatter.ofPattern("dd/MM/yyyy HH:mm");
		LocalDateTime data11 = LocalDateTime.parse("2023-09-19T10:00");
		System.out.println("Date11 = " + data11);
		System.out.println("Date11 = " + data11.format(fmt2));
		System.out.println("Date11 = " + fmt2.format(data11));

		// para o Instant pegar o fuso horÁrio local do usuário com
		// withZone(ZoneId.systemDefault()

		DateTimeFormatter fmt3 = DateTimeFormatter.ofPattern("dd/MM/yyyy HH:mm").withZone(ZoneId.systemDefault());
		Instant date12 = Instant.parse("2023-09-19T10:18:26Z");

		// Instant date12 = Instant.parse("2012-02-22T02:06:58.147Z");

		System.out.println("Date12 = " + date12);
		System.out.println("Date12 = " + fmt3.format(date12));

		// usar no lugar do padrão .ofPattern para data local sem fuso horário

		DateTimeFormatter fmt4 = DateTimeFormatter.ISO_DATE_TIME;
		LocalDateTime data13 = LocalDateTime.parse("2023-09-19T15:46:35");
		System.out.println("Date13 = " + data13.format(fmt4));

		// usar no lugar do padrão .ofPattern para data local com fuso horário

		DateTimeFormatter fmt5 = DateTimeFormatter.ISO_INSTANT;
		Instant data14 = Instant.parse("2023-09-19T15:46:35z");
		System.out.println("Date13 = " + fmt5.format(data14));

		System.out.println("\n--Converter data-hora gobal para local--\n");
		// Converter data-hora gobal para local usando ZoneId.systemDefault()

	/*	for (String string : ZoneId.getAvailableZoneIds()) {
			// nomes para fuso horário
			// System.out.println(string);
		}*/

		Instant data15 = Instant.parse("2023-09-19T15:46:35z");
		LocalDate resultado1 = LocalDate.ofInstant(data15, ZoneId.systemDefault());
		System.out.println("Resultado1 = " + resultado1);

		LocalDateTime resultado2 = LocalDateTime.ofInstant(data15, ZoneId.systemDefault());
		System.out.println("Resultado2 = " + resultado2);

		System.out.println("\n---Obter dados de uma data-hora local---\n");
		// Obter dados de uma data-hora local

		LocalDate data16 = LocalDate.parse("2023-09-19");
		System.out.println("Date16 dia = " + data16.getDayOfMonth());// mostra o dia
		System.out.println("Date16 mês = " + data16.getMonthValue());// mostra o mes
		System.out.println("Date16 ano = " + data16.getYear());// mostra o ano

		LocalDateTime data17 = LocalDateTime.parse("2023-09-19T15:46:35");
		System.out.println("Date17 ano = " + data17.getHour());// pega a hora
		System.out.println("Date17 ano = " + data17.getMinute());// pega os minutos

		System.out.println("\n-------Cálculo com datas LocalDate-------\n");

		// calculo com datas
		// semana passada, (7) dias anteriores
		LocalDate pastWeekLocalDate = data16.minusDays(7);
		System.out.println("pastWeekLocalDate = " + pastWeekLocalDate);

		// semana que vem, (7) dias para frente
		LocalDate nextWeekLocalDate = data16.plusDays(7);
		System.out.println("nextWeekLocalDate = " + nextWeekLocalDate);

		// mes passado
		LocalDate pastMonthLocalDate = data16.minusYears(7);
		System.out.println("pastMonthLocalDate = " + pastMonthLocalDate);
		// anos a frente
		LocalDate nextMontLocalDate = data16.plusYears(7);
		System.out.println("nextMontLocalDate = " + nextMontLocalDate);

		// anos passado
		LocalDate pastYearLocalDate = data16.minusYears(7);
		System.out.println("pastYearLocalDate = " + pastYearLocalDate);
		// anos a frente
		LocalDate nextYearLocalDate = data16.plusYears(7);
		System.out.println("nextYearLocalDate = " + nextYearLocalDate);

		System.out.println("\n------Cálculo com datas LocalDateTime------\n");

		// semana passada, (7) dias anteriores
		LocalDateTime pastWeekLocalDateTime = data17.minusDays(7);
		System.out.println("pastWeekLocalDateTime = " + pastWeekLocalDateTime);

		// semana que vem, (7) dias para frente
		LocalDateTime nextWeekLocalDateTime = data17.plusDays(7);
		System.out.println("nextWeekLocalDateTime = " + nextWeekLocalDateTime);

		// mes passado
		LocalDateTime pastMonthLocalDateTime = data17.minusYears(7);
		System.out.println("pastMonthLocalDateTime = " + pastMonthLocalDateTime);
		// anos a frente
		LocalDateTime nextMoontLocalDateTime = data17.plusYears(7);
		System.out.println("nextMoontLocalDateTime = " + nextMoontLocalDateTime);

		// anos passado
		LocalDateTime pastYearLocalDateTime = data17.minusYears(7);
		System.out.println("pastYearLocalDateTime = " + pastYearLocalDateTime);
		// anos a frente
		LocalDateTime nextYearLocalDateTime = data17.plusYears(7);
		System.out.println("nextYearLocalDateTime = " + nextYearLocalDateTime);

		System.out.println("\n---------Cálculo com datas Instant---------\n");

		// semana passada, (7) dias anteriores
		Instant pastWeekInstant= data15.minus(7, ChronoUnit.DAYS);
		System.out.println("pastWeekInstant = " + pastWeekInstant);

		// semana que vem, (7) dias para frente
		Instant nextWeekInstant = data15.plus(7, ChronoUnit.DAYS);
		System.out.println("nextWeekInstant = " + nextWeekInstant);

		// mes passado não funcionou
		/*Instant pastMonthInstant = data15.minus(7, ChronoUnit.MONTHS);
		System.out.println("pastMonthInstant = " + pastMonthInstant);
		// anos a frente
		Instant nextMoontInstant = data15.plus(7, ChronoUnit.MONTHS);
		System.out.println("nextMoontInstant = " + nextMoontInstant);*

		// anos passado
		Instant pastYearInstant = data15.minus(7, ChronoUnit.YEARS);
		System.out.println("pastYearInstant = " + pastYearInstant);
		// anos a frente
		Instant nextYearInstant = data15.plus(7, ChronoUnit.YEARS);
		System.out.println("nextYearInstant = " + nextYearInstant);*/
		
		System.out.println("\n-----------------Duração-----------------\n");
		//calcular duração entre duas datas-horas
		
		//converter localDate para um LocalDateTime e calcular a duração
		Duration duracao1 = Duration.between(pastWeekLocalDate.atStartOfDay(), data16.atStartOfDay());
		System.out.println("Duração = " + duracao1.toDays() + " dias");
		
		Duration duracao2 = Duration.between(pastWeekLocalDateTime, data17);
		System.out.println("Duração = " + duracao2.toDays() + " dias");
		
		Duration duracao3 = Duration.between(pastWeekInstant, data15);
		System.out.println("Duração = " + duracao3.toDays() + " dias");
	}

}
