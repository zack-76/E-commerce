package controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import model.Cart;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;


public class Cart_Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		response.setContentType("text/html;charset=UTF-8");
		
		
		try(PrintWriter out = response.getWriter()){
			
			ArrayList<Cart> cartlist = new ArrayList<>();
			
            int id = Integer.parseInt(request.getParameter("id"));
            
            Cart cr = new Cart();
            cr.setId(id);
            cr.setQuantity(1);
            
            
            HttpSession session = request.getSession();
            
            ArrayList<Cart> cart_list = (ArrayList<Cart>) session.getAttribute("cart-list");
            
            if (cart_list == null) {
                cartlist.add(cr);
                session.setAttribute("cart-list", cartlist);
                
                response.sendRedirect("products.jsp");
                
            }else {
            	cartlist = cart_list;

                boolean exist = false;
                for (Cart c : cart_list) {
                    if (c.getId() == id) {
                        exist = true;
                        
                        out.println("<h3 style='color:crimson; text-align: center'>Item Already in Cart. <a href='cart.jsp'>GO to Cart Page</a></h3>");
                   }
                 }
                if(!exist) {
                	cartlist.add(cr);
                	response.sendRedirect("products.jsp");
                }
            }
		}
		
	}

}
