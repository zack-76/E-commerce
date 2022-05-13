package dao;

import java.util.ArrayList;
import java.util.List;

import model.Cart;
import model.Client;
import model.Order;
import model.Product;

public interface DAOInterface {
	
	public Client selectClient(String email,String password) ;
	
	public void insertClient(Client client ) ;
	
	public List<Product> selectProducts();
	
	public List<Cart> getAllProducts(ArrayList<Cart> cartList);
	
	public boolean insertOrder(Order order);

}
