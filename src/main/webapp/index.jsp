<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="java.util.*" %>
    <%@page import="model.*" %>
    <%		Client auth = (Client) request.getSession().getAttribute("auth");
	if(auth!=null){
		request.setAttribute("auth", auth);
	}
	ArrayList<Cart> cartList = (ArrayList<Cart>) session.getAttribute("cart-list");
	if(cartList != null){
		request.setAttribute("cart_list", cartList);
	}
    %>
<!DOCTYPE html>
<html>
<head>

<%@include file="./includes/head.jsp" %>
<link rel="stylesheet" href="./style1.css">
<title>E-zack</title>
</head>
<body>
	
	<!--
	<a href="LocaleDemo?language=en_US">US</a> |
	<a href="LocaleDemo?language=fr_FR">FR</a>
	<h3>locale of ${country}</h3>
	 Format Number : ${fnumber }
	<br>
	Format Currency : ${fcurrency }
	<br>
	Format percent: ${fpercent }
	<br>
	Format Date: ${fdate }
	<br>
	Format String: ${fstring }
	-->

	<%@include file="includes/navbar.jsp" %>
	
	 
    <section id="home">
      <div class="container">
        <div>
            <h5>LOREM IPSUM.</h5>
            <h1><span>Lorem Ipsum</span> Dolor Sitok.</h1>
            <p>Lorem ipsum dolor sit amet.Lorem ipsum dolor sit amet,<br> consectetur adipisicing elit. Sint, cumque?</p>
            <a href="products.jsp"><button>${fstring1 }</button></a>
        </div>
      </div>
    </section>

    <section id="brand" class="container">
      <div class="row m-0 py-5">
        <img class="img-fluid col-lg-2 col-md-4 col-6" src="./images/brand1/Rolex.png" alt="">
        <img class="img-fluid col-lg-2 col-md-4 col-6" src="./images/brand1/hublot.jpg" alt="">
        <img class="img-fluid col-lg-2 col-md-4 col-6" src="./images/brand1/franckmuller.png" alt="">
        <img class="img-fluid col-lg-2 col-md-4 col-6" src="./images/brand1/breitling.jpg" alt="">
        <img class="img-fluid col-lg-2 col-md-4 col-6" src="./images/brand1/micharlkors.png" alt="">
        <img class="img-fluid col-lg-2 col-md-4 col-6" src="./images/brand1/adamkimmel.png" alt="">
      </div>

    </section>

    <section id="new" class="w-100">
      <div class="row p-0 m-0">
        <div class="one col-lg-4 col-md-12 col-12 p-0">
          <img class="img-fluid" src="./images/new1/rolexnew.jpg" alt="">
          <div class="details">
            <h2>${fstring12 } Rolex ${fstring13 } </h2>
            <a href="products.jsp"><button class="text-uppercase">${fstring1 }</button></a>
          </div>
        </div>
        <div class="one col-lg-4 col-md-12 col-12 p-0">
          <img class="img-fluid" src="./images/new1/franckmullernew.jpg" alt="">
          <div class="details">
            <h2>  Franck Muller ${fstring13 } </h2>
            <a href="products.jsp"><button class="text-uppercase">${fstring1 }</button></a>
          </div>
        </div>
        <div class="one col-lg-4 col-md-12 col-12 p-0">
          <img class="img-fluid" src="./images/new1/breitlingnew.jpg" alt="">
          <div class="details">
            <h2>${fstring12 } Breitling ${fstring13 } </h2>
            <a href="products.jsp"><button class="text-uppercase">${fstring1 }</button></a>
          </div>
        </div>
      </div>

    </section>
    <section id="featured" class="my-5 pb-5">
      <div class="container text-center mt-3 py-5">
        <h3>${fstring5 }</h3>
        <hr class="mx-auto">
        <p>${fstring6 }</p>
      </div>
      <div class="row mx-auto container-fluid">
        <div class="product text-center col-lg-3 col-md-4 col-12">
          <img class="img-fluid mb-3" src="./images/featured1/navitimer.jpg" alt="">
          <div class="star">
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
          </div>
          <h5 class="p-name">Breitling Navitimer</h5>
          <button class="buy-btn">31-03-2022</button>
        </div>
        <div class="product text-center col-lg-3 col-md-4 col-12">
          <img class="img-fluid mb-3" src="./images/featured1/cosmograph.jpg" alt="">
          <div class="star">
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
          </div>
          <h5 class="p-name">Rolex Cosmograph</h5>
          <button class="buy-btn">31-03-2022</button>
        </div>
        <div class="product text-center col-lg-3 col-md-4 col-12">
          <img class="img-fluid mb-3" src="./images/featured1/breckenmk.jpg" alt="">
          <div class="star">
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
          </div>
          <h5 class="p-name">Michael Kors Brecken Gold</h5>
          <button class="buy-btn">01-04-2022</button>
        </div>
        <div class="product text-center col-lg-3 col-md-4 col-12">
          <img class="img-fluid mb-3" src="./images/featured1/vanguard.jpg" alt="">
          <div class="star">
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
          </div>
          <h5 class="p-name">Franck Muller Vanguard</h5>
          <button class="buy-btn">10-04-2022</button>
        </div>

      </div>
    </section>
     
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
	           <a href="LocaleDemo?language=en_US">US</a> |
			   <a href="LocaleDemo?language=fr_FR">FR</a> <br>
				<h4 style="color: white;">locale of ${country}</h4>
          </div>
         

        </div>
      </div>
    </footer> 	
     	
     	
     	
     	
     	
	<%@include file="./includes/footer.jsp" %>
	

</body>
</html>