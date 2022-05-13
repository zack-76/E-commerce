package model;

public class Order extends Product {
	
	private int orderId;
	private int clientId;
	private int quantity;
	

	public Order() {	
	}


	public Order( int clientId, int quantity) {
		super();
		this.clientId = clientId;
		
		this.quantity = quantity;
	}


	public int getOrderId() {
		return orderId;
	}


	public void setOrderId(int orderId) {
		this.orderId = orderId;
	}


	public int getClientId() {
		return clientId;
	}


	public void setClientId(int clientId) {
		this.clientId = clientId;
	}


	public int getQuantity() {
		return quantity;
	}


	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}


	
	
	
	

}
