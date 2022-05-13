package controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Locale;
import java.util.ResourceBundle;


public class LocaleProducts extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public LocaleProducts() {
        super();
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String[] planguage = request.getParameter("language").split("_");
		String language = planguage[0];
		String country = planguage[1];
		Locale locale = new Locale(language,country);
		request.setAttribute("country", locale.getDisplayCountry());
		
		ResourceBundle rb2 = ResourceBundle.getBundle("prop", locale);
		request.setAttribute("fstring2", rb2.getString("home"));
		
		
		ResourceBundle rb3 = ResourceBundle.getBundle("prop", locale);
		request.setAttribute("fstring3", rb3.getString("shop"));
		
		
		ResourceBundle rb4 = ResourceBundle.getBundle("prop", locale);
		request.setAttribute("fstring4", rb4.getString("logout"));
		
		
		ResourceBundle rb5 = ResourceBundle.getBundle("prop", locale);
		request.setAttribute("fstring5", rb5.getString("featured"));
		
		
		ResourceBundle rb6 = ResourceBundle.getBundle("prop", locale);
		request.setAttribute("fstring6", rb6.getString("here"));
		
		ResourceBundle rb7 = ResourceBundle.getBundle("prop", locale);
		request.setAttribute("fstring7", rb7.getString("email"));
		
		ResourceBundle rb8 = ResourceBundle.getBundle("prop", locale);
		request.setAttribute("fstring8", rb8.getString("phone"));
		
		ResourceBundle rb9 = ResourceBundle.getBundle("prop", locale);
		request.setAttribute("fstring9", rb9.getString("address"));
		
		ResourceBundle rb10 = ResourceBundle.getBundle("prop", locale);
		request.setAttribute("fstring10", rb10.getString("contact_us"));
		
		ResourceBundle rb11= ResourceBundle.getBundle("prop", locale);
		request.setAttribute("fstring11", rb11.getString("featured2"));
		
		ResourceBundle rb12= ResourceBundle.getBundle("prop", locale);
		request.setAttribute("fstring12", rb12.getString("products"));
		
		ResourceBundle rb13= ResourceBundle.getBundle("prop", locale);
		request.setAttribute("fstring13", rb13.getString("price"));
		
		ResourceBundle rb14= ResourceBundle.getBundle("prop", locale);
		request.setAttribute("fstring14", rb14.getString("category"));
		
		ResourceBundle rb15= ResourceBundle.getBundle("prop", locale);
		request.setAttribute("fstring15", rb15.getString("add"));
		
		request.getRequestDispatcher("products.jsp").forward(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
