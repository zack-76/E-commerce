<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="connection.*"%>
<%@page import="java.util.*"%>
<%@page import="dao.*"%>
<%@page import="model.*"%>
<%
Client auth = (Client) request.getSession().getAttribute("auth");
if (auth != null) {
	request.setAttribute("auth", auth);
	
}
	DAOInterfaceImpl impl = new DAOInterfaceImpl(DBConn.getConnectionne());
	List<Product> products = impl.selectProducts();
	
	
	ArrayList<Cart> cartList = (ArrayList<Cart>) session.getAttribute("cart-list");
	if(cartList != null){
		request.setAttribute("cart_list", cartList);
	}
%>
<!DOCTYPE html>
<html>
<head>
<style>
.btn{
background-color:coral;color:white;

}
.ca{
width:253px;
height:230px;}
</style>
<meta charset="UTF-8">
<%@include file="includes/head.jsp"%>
<link rel="stylesheet" href="./includes/style1.css">
<title>Products</title>
</head>
<body>

	<%@include file="includes/navbar.jsp"%>
	
	
<div class="container">
	<div class="card-header my-3">${fstring12}</div>
		
		<div class="row">
		<% if(!(products.isEmpty())){
			for(Product p : products){%>
				<div class="col-md-3 my-3">
				<div class="card text-white bg-dark w-100" style="width: 18rem;">
					<img src="images/<%=p.getImage() %>" class="ca" alt="...">
					<div class="card-body">
						<h5 class="card-title"><%=p.getName() %></h5>
						<h6 class="card-title">${fstring13}: $<%=p.getPrice() %></h6>
						<h6 class="card-title">${fstring14 }: <%=p.getCategory() %></h6>
						<div class="mt-3 d-flex justify-content-between">
							<a href="Add-to-cart?id=<%= p.getId() %>" class="btn" >${fstring15}</a>
						</div>
					</div>
				</div>
			</div>
			<% }
		} %>
			
		</div>
	</div>
	
	<footer class="mt-5 py-5">
      <div class="row container mx-auto pt-5">
        <div class="footer-one col-lg-3 col-md-6 col-12">
          <h2>E-Zack</h2>
          <p class="pt-3">Lorem ipsum dolor sit amet  elit. Pariatur, quam? Quisquam natus dolorum sed iste corporis quas qui rem animi ullam consequuntur eos officia.</p>
        </div>
        <div class="footer-one col-lg-3 col-md-6 col-12 mb-3">
          <h5 class="pb-3">${fstring11 }</h5>
          <ul class="text-uppercase list-unstyled ">
            <li><a href="https://www.rolex.com/">Rolex</a></li>
            <li><a href="https://www.franckmuller.com/mens-collection">Franck Muller</a></li>
            <li><a href="https://www.breitling.com/fr-fr/">Breitlingx</a></li>
            <li><a href="#">Adam Kors</a></li>
            <li><a href="https://www.hublot.com/fr-ch">Hublot</a></li>
            <li><a href="https://www.michaelkors.fr/montres/hommes/_/N-19ul7ma">Michael Kors</a></li>
          </ul>

        </div>
        <div class="footer-one col-lg-3 col-md-6 col-12 mb-3">
          <h5 class="pb-3">${fstring10}</h5>
          <div>
            <h6 class="text-uppercase"> ${fstring9 } </h6>
            <p>ENSA Marrakech</p>
          </div>
          <div>
            <h6 class="text-uppercase">${fstring8 }</h6>
            <p>+(212)671886710</p>
          </div>
          <div>
            <h6 class="text-uppercase">${fstring7 }</h6>
            <p>zakariaessabri@outlook.com</p>
          </div>
        </div>
        <div class="footer-one col-lg-3 col-md-6 col-12">
          <h5 class="pb-3">Instagram</h5>
          <div class="row">
            <img class="img-fluid w-25 h-100 m-2" src="./image/insta/breitlingjpg.jpg" alt="">
            <img class="img-fluid w-25 h-100 m-2" src="./image/insta/franckmuller.jpg" alt="">
            <img class="img-fluid w-25 h-100 m-2" src="./image/insta/rolex.jpg" alt="">
            <img class="img-fluid w-25 h-100 m-2" src="./image/insta/rolex2.jpg" alt="">
            <img class="img-fluid w-25 h-100 m-2" src="./image/insta/franckmuller2.jpg" alt="">
          </div>
         

        </div>
        <div class="footer-one col-lg-3 col-md-6 col-12">
          <h5 class="pb-3">Language</h5>
          <div >
	           <a href="LocaleProducts?language=en_US">US</a> |
			   <a href="LocaleProducts?language=fr_FR">FR</a> <br>
				<h4 style="color: white;">locale of ${country}</h4>
          </div>
         

        </div>
      </div>
    </footer>
	 
	 
	 
	 
	 
	 
	 
	
	<%@include file="includes/footer.jsp"%>
</body>
</html>