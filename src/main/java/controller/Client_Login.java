package controller;

import jakarta.servlet.ServletException;

import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.Client;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import connection.DBConn;
import dao.DAOInterfaceImpl;

public class Client_Login extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		response.sendRedirect("login.jsp");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		try(PrintWriter out = response.getWriter()){
			
			String email = request.getParameter("email");
			String pasword = request.getParameter("password");
			try {
				DAOInterfaceImpl impl = new DAOInterfaceImpl(DBConn.getConnectionne());
				Client client = impl.selectClient(email, pasword);
				
				if(client!=null) {
					request.getSession().setAttribute("auth", client);
					response.sendRedirect("index.jsp");
				}else {
					out.print(" Register first ");
					response.sendRedirect("register.jsp");
				}
				
			} catch (ClassNotFoundException | SQLException e) {
				e.printStackTrace();
			}
		}
	}

}
