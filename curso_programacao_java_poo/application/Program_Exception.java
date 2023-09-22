package application;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import java.util.Scanner;

import model.entities.Exception;

public class Program_Exception {

	public static void main(String[] args) throws ParseException {

		Locale.setDefault(Locale.US);

		Scanner scan = new Scanner(System.in);

		SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy");
				
		System.out.println("Room number: ");
		int roomNumber = scan.nextInt();
		System.out.println("Check-in date (dd/MM/yyyy): ");
		Date checkIn = sdf.parse(scan.next());
		System.out.println("Check-out date (dd/MM/yyyy): ");
		Date checkOut = sdf.parse(scan.next());
		
		if(!checkOut.after(checkIn)) {
			System.out.println("Error in reservation: Check-out date must be after check-in date");
		}
		else {
			Exception reserva = new Exception(roomNumber, checkIn, checkOut);
			System.out.println("Reservation: " + reserva);
			
			System.out.println();
			System.out.println("Enter data to update the reservation: ");
			System.out.println("Check-in date (dd/MM/yyyy): ");
			checkIn = sdf.parse(scan.next());
			System.out.println("Check-out date (dd/MM/yyyy): ");
			checkOut = sdf.parse(scan.next());
			
			//tratamento de forma ruim
			Date now = new Date();
			if(checkIn.before(now) || checkOut.before(now)) {
				System.out.println("Error in reservation: Reservation dates for update must be future dates");
				
			}else if(checkIn.before(now) || checkOut.before(now)){
				System.out.println("Error in reservation: Check-out date must be after check-in date");
			}else {
				reserva.updateDates(checkIn, checkOut);
				System.out.println("Reservation: " + reserva);
				
			}
			
		}
		
		
		
		
		
		
		
		
		
		scan.close();

	}
}