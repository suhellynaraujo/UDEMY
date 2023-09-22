package model.entities;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.concurrent.TimeUnit;

public class Exception {

	private Integer roomNumber;
	private Date checkIn;
	private Date checkOut;
	
	// static para não criar novos a cada objeto
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

	
	// retirar para não alterar as datas automaticamente
//	public void setCheckIn(Date checkIn) {
//		this.checkIn = checkIn;
//	}

	public Date getCheckOut() {
		return checkOut;
	}
	// retirar para não alterar as datas automaticamente
//	public void setCheckOut(Date checkOut) {
//		this.checkOut = checkOut;
//	}
	public long duration() {
		//pegar a diferença das datas em milisegundos
		long diff = checkOut.getTime() - checkIn.getTime();
		//converter o milisegundos para dias		
		return TimeUnit.DAYS.convert(diff, TimeUnit.MILLISECONDS);
	}
	
	public void updateDates(Date checkIn, Date checkOut) {
		this.checkIn = checkIn;
		this.checkOut = checkOut;
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
