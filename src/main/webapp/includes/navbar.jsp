 
 <!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="./includes/style1.css">

</head>
 <!--   
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
		
			<div class="container">
				<a class="navbar-brand" href="index.jsp">Zack-E-World</a>
				<button class="navbar-toggler" type="button"
					data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
					aria-controls="#navbarSupportedContent" aria-expanded="false"
					aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>
				<div class="collapse navbar-collapse justify-content-end align-center" id="#navbarSupportedContent">
					<ul class="navbar-nav mr-auto mb-2 mb-lg-0">
						<li class="nav-item"><a class="nav-link active" aria-current="page" href="index.jsp">Home</a></li>
						<li class="nav-item"><a class="nav-link" href="products.jsp">Products</a></li>
						<li class="nav-item"><a class="nav-link" href="cart.jsp">Cart<span class="badge bg-danger">${cart_list.size() }</span></a></li>
						<%//if(auth != null)*/{ %>
						<li class="nav-item"><a class="nav-link" href="orders.jsp">Orders</a></li>
						<li class="nav-item"><a class="nav-link" href="Client_Logout" >Logout </a></li>
						
						<%//}else{ %>
							<li class="nav-item"><a class="nav-link" href="login.jsp">Login</a></li>
							
						<%//} %>
					</ul>

				</div>
			</div>
		
	</nav>
	-->
	
	
	<nav class="navbar navbar-expand-lg navbar-light bg-light py-3 fixed-top" >
        <div class="container">
          <a class="navbar-brand" href="index.jsp">E-Zack</a>
          <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span ><i id="bar" class="fas fa-bars"></i></span>
          </button>
          <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav ml-auto">
              
              <li class="nav-item">
                <a class="nav-link" href="index.jsp">${fstring2 }</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="products.jsp">${fstring3 }</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="#">Blog</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="cart.jsp"><i class="fas fa-shopping-bag"></i></a>
              </li>
              <% if(auth != null){ %>
              <li class="nav-item">
                <a class="nav-link" href="Client_Logout">${fstring4 } <%= auth.getLast_name()+" "+auth.getFirst_name() %><i class="fas fa-arrow-right"></i></a>
              </li>
              <%}else{ %>
              <li class="nav-item">
                <a class="nav-link" href="login.jsp"><i class="fas fa-user"></i></a>
              </li>
             <%} %>
             </ul>
          </div>
        </div>
    </nav>
	 
