package model.entities;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.concurrent.TimeUnit;

public class Exception {

	private Integer roomNumber;
	private Date checkIn;
	private Date checkOut;
	
	// static para n�o criar novos a cada objeto
	private static SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy");
	
	public Exception(Integer roomNumber, Date checkIn, Date checkOut) {		
		this.roomNumber = roomNumber;
		this.checkIn = checkIn;
		this.checkOut = checkOut;
	}

	public Integer getRoomNumber() {
		return roomNumber;
	}

	public void setRoomNumber(Integer roomNumber) {
		this.roomNumber = roomNumber;
	}

	public Date getCheckIn() {
		return checkIn;
	}

	
	// retirar para n�o alterar as datas automaticamente
//	public void setCheckIn(Date checkIn) {
//		this.checkIn = checkIn;
//	}

	public Date getCheckOut() {
		return checkOut;
	}
	// retirar para n�o alterar as datas automaticamente
//	public void setCheckOut(Date checkOut) {
//		this.checkOut = checkOut;
//	}
	public long duration() {
		//pegar a diferen�a das datas em milisegundos
		long diff = checkOut.getTime() - checkIn.getTime();
		//converter o milisegundos para dias		
		return TimeUnit.DAYS.convert(diff, TimeUnit.MILLISECONDS);
	}
	
	public String updateDates(Date checkIn, Date checkOut) {
		Date now = new Date();
		if(checkIn.before(now) || checkOut.before(now)) {
			return "Error in reservation: Reservation dates for update must be future dates";
			
		}
		 if(!checkOut.after(checkIn)){
			return "Error in reservation: Check-out date must be after check-in date";
		}
		this.checkIn = checkIn;
		this.checkOut = checkOut;
		
		return null;
	}

	@Override
	public String toString() {
		return "Room " 
				+ roomNumber 
				+ ", checkIn : " 
				+ sdf.format(checkIn) 
				+ ", checkOut : " 
				+ sdf.format(checkOut) 
				+ ", "
				+ duration()
				+ " nights";
	}
	

	
}
