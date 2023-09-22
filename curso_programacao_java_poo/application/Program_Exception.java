package application;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import java.util.Scanner;

import model.entities.Exception;
import model.exceptions.DomainException;

public class Program_Exception {

	public static void main(String[] args) {

		Locale.setDefault(Locale.US);

		Scanner scan = new Scanner(System.in);

		SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy");

		try {
			
			System.out.println("Room number: ");
			int roomNumber = scan.nextInt();
			System.out.println("Check-in date (dd/MM/yyyy): ");
			Date checkIn = sdf.parse(scan.next());
			System.out.println("Check-out date (dd/MM/yyyy): ");
			Date checkOut = sdf.parse(scan.next());
	
		
	
			Exception reserva = new Exception(roomNumber, checkIn, checkOut);
			System.out.println("Reservation: " + reserva);
	
			System.out.println();
			System.out.println("Enter data to update the reservation: ");
			System.out.println("Check-in date (dd/MM/yyyy): ");
			checkIn = sdf.parse(scan.next());
			System.out.println("Check-out date (dd/MM/yyyy): ");
			checkOut = sdf.parse(scan.next());
	
			// tratamento de forma ruim
	
			reserva.updateDates(checkIn, checkOut);		
				System.out.println("Reservation: " + reserva);

		}catch (ParseException e) {
			System.out.println("Invalid date format");
		}catch (DomainException	e) {
			System.out.println("Error in Reservation " + e.getMessage());
		}catch (RuntimeException e) {
			System.out.println("Unexpected error");
		}

		scan.close();

	}
}