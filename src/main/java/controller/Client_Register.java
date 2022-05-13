package controller;

import jakarta.servlet.ServletException;

import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import model.Client;

import connection.DBConn;
import dao.DAOInterfaceImpl;

public class Client_Register extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.sendRedirect("register.jsp");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String last_name = request.getParameter("lastname");
		String first_name = request.getParameter("firstname");
		String address = request.getParameter("address");
		String city = request.getParameter("city");
		String phone = request.getParameter("phone");
		String email =request.getParameter("email");
		String password = request.getParameter("password");
		
		try {
			DAOInterfaceImpl impl = new DAOInterfaceImpl(DBConn.getConnectionne());
			Client client = new Client(last_name,first_name,address,city,phone, email, password);
			impl.insertClient(client);
			
			response.sendRedirect("login.jsp");
			
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
		
	}

}
