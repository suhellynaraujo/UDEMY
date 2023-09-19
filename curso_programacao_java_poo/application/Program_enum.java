package application;

import java.util.Date;

import entities.Order;
import entities.enums.OrderStatus;

public class Program_enum {

	public static void main(String[] args) {
	
		
		Order order = new Order(1080, new Date(), OrderStatus.PENDING_PAYMENT);
		System.out.println(order);
		
		//converter de string para enum
		
		OrderStatus status = OrderStatus.DELIVERED;
		OrderStatus status1 = OrderStatus.valueOf("DELIVERED");
		
		System.out.println(status);
		System.out.println(status1);
	}

}
