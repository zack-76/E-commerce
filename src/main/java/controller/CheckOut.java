package controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.Cart;
import model.Client;
import model.Order;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.ArrayList;

import connection.DBConn;
import dao.DAOInterfaceImpl;


public class CheckOut extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		try(PrintWriter out = response.getWriter()){
			ArrayList<Cart> cart_list = (ArrayList<Cart>) request.getSession().getAttribute("cart-list");
			Client auth = (Client) request.getSession().getAttribute("auth");
			if(cart_list != null && auth!=null) {
				for(Cart c:cart_list) {
					Order order = new Order();
					order.setId(c.getId());
					order.setClientId(auth.getId());
					order.setQuantity(c.getQuantity());
					
					DAOInterfaceImpl impl = new DAOInterfaceImpl(DBConn.getConnectionne());
					boolean result = impl.insertOrder(order);
					if(!result) break;
				}
				cart_list.clear();
				response.sendRedirect("cart.jsp");
			}else {
				if(auth==null) {
					response.sendRedirect("login.jsp");
				}
				
			}
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
