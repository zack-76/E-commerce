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


public class OrderNow extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		try(PrintWriter out = response.getWriter()) {
			Client auth = (Client) request.getSession().getAttribute("auth");
			if(auth != null) {
				
				String id = request.getParameter("id");
				int quantity = Integer.parseInt(request.getParameter("quantity"));
				if(quantity <= 0) {
					quantity=1;
				}
				Order order = new Order();
				order.setId(Integer.parseInt(id));
				order.setClientId(auth.getId());
				order.setQuantity(quantity);
			
				DAOInterfaceImpl impl = new DAOInterfaceImpl(DBConn.getConnectionne());
				boolean a =impl.insertOrder(order);
				
				if(a) {
					ArrayList<Cart> cart_list = (ArrayList<Cart>) request.getSession().getAttribute("cart-list");
					if (cart_list != null) {
						for (Cart c : cart_list) {
							if (c.getId() == Integer.parseInt(id)) {
								cart_list.remove(cart_list.indexOf(c));
								break;
							}
						}
					}
					response.sendRedirect("cart.jsp");
				}else {
					out.print("Order failed");
				}
				
			}else {response.sendRedirect("login.jsp");}	
			
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
