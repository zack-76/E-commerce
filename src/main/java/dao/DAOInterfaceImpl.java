package dao;

import java.sql.Connection;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import connection.DBConn;
import model.Cart;
import model.Client;
import model.Order;
import model.Product;

public class DAOInterfaceImpl implements DAOInterface {

	private Connection conn;
	private PreparedStatement pst;
	private String query;
	private ResultSet rs;

	public DAOInterfaceImpl(Connection conn) {
		this.conn = conn;
	}

	@Override
	public void insertClient(Client client) {

		try {

			pst = conn.prepareStatement(
					"INSERT INTO client(last_name,first_name,address,city,phone,email,password) VALUES(?,?,?,?,?,?,?) ;");
			pst.setString(1, client.getLast_name());
			pst.setString(2, client.getFirst_name());
			pst.setString(3, client.getAddress());
			pst.setString(4, client.getCity());
			pst.setString(5, client.getPhone());
			pst.setString(6, client.getEmail());
			pst.setString(7, client.getPassword());

			pst.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}

	}

	@Override
	public Client selectClient(String email, String password) {
		Client client = null;

		try {

			query = "SELECT * FROM CLIENT WHERE email=? AND password=? ;";
			pst = conn.prepareStatement(query);
			pst.setString(1, email);
			pst.setString(2, password);
			rs = pst.executeQuery();

			if (rs.next()) {
				client = new Client();
				client.setId(rs.getInt("id"));
				client.setLast_name(rs.getString("last_name"));
				client.setFirst_name(rs.getString("first_name"));
				client.setAddress(rs.getString("address"));
				client.setCity(rs.getString("city"));
				client.setPhone(rs.getString("phone"));
				client.setEmail(rs.getString("email"));
			}

		} catch (SQLException e) {
			e.printStackTrace();
		}

		return client;
	}

	@Override
	public List<Product> selectProducts() {
		List<Product> products = new ArrayList<Product>();

		try {
			query = "select * from product ;";
			pst = this.conn.prepareStatement(query);
			rs = pst.executeQuery();
			while (rs.next()) {
				Product product = new Product();
				product.setId(rs.getInt("id"));
				product.setName(rs.getString("name"));
				product.setCategory(rs.getString("category"));
				product.setPrice(rs.getDouble("price"));
				product.setImage(rs.getString("image"));
				products.add(product);
			}

		} catch (SQLException e) {
			e.printStackTrace();
		}

		return products;

	}

	@Override
	public List<Cart> getAllProducts(ArrayList<Cart> cartList) {
		List<Cart> products = new ArrayList<Cart>();

		try {

			if (cartList.size() > 0) {
				for (Cart c : cartList) {
					query = "select * from product where id=?";
					pst = this.conn.prepareStatement(query);
					pst.setInt(1, c.getId());
					rs = pst.executeQuery();
					while (rs.next()) {
						Cart cart = new Cart();
						cart.setId(rs.getInt("id"));
						cart.setName(rs.getString("name"));
						cart.setCategory(rs.getString("category"));
						cart.setPrice(rs.getDouble("price")*c.getQuantity());
						cart.setQuantity(c.getQuantity());
						cart.setImage(rs.getString("image"));
						products.add(cart);
					}
				}
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return products;
	}
	
	public double getTotalCartPrice(ArrayList<Cart> cart_List) {
        double sum = 0;
        try {
            if (cart_List.size() > 0) {
                for (Cart c : cart_List) {
                    query = "select price from product where id=?";
                    pst = this.conn.prepareStatement(query);
                    pst.setInt(1, c.getId());
                    rs = pst.executeQuery();
                    while (rs.next()) {
                        sum+=rs.getDouble("price")*c.getQuantity();
                    }

                }
            }

        } catch (SQLException e) {
            e.printStackTrace();
            
        }
        return sum;
    }
	
	@Override
	public boolean insertOrder(Order order) {
		
		boolean a = false;
		try {
			query="insert into orders(clientid,productid,quantity) values(?,?,?);";
			
			pst=this.conn.prepareStatement(query);
			pst.setInt(1,order.getClientId());
			pst.setInt(2, order.getId());
			pst.setInt(3, order.getQuantity());
			pst.executeUpdate();
			a=true;
			
		}catch(SQLException e) {e.printStackTrace();}
		
		return a ;
		
	}

}




















