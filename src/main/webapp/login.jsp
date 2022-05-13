<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="java.util.*" %>
     <%@page import="model.*" %>
    <%	Client auth = (Client) request.getSession().getAttribute("auth");
    	if(auth!=null){
    		request.setAttribute("auth", auth);
    		response.sendRedirect("index.jsp");
    	}
    	ArrayList<Cart> cartList = (ArrayList<Cart>) session.getAttribute("cart-list");
    	if(cartList != null){
    		request.setAttribute("cart_list", cartList);
    	}
    %>
<!DOCTYPE html>
<html>
<head>
<%@include file="includes/head.jsp"%>
<link rel="stylesheet" href="./includes/style1.css">
<title>Login</title>
</head>
<body>
	<%@include file="includes/navbar.jsp" %>
		<div class="container" style="margin-top:100px;" >
			<div class="card w-50 mx-auto my-5">
				<div class="card-header text-center">Client Login</div>
				<div class="card-body">
					<form action="Client_Login" method="post">
						<div class="form-group">
							<label>Email address</label> <input type="email" name="email"
								class="form-control" placeholder="Enter email" required>
						</div>
						<div class="form-group">
							<label>Password</label> <input type="password" name="password"
								class="form-control" placeholder="Password" required>
						</div>
						<div class="text-center">
							<button type="submit" class="btn btn-primary">Login</button>
						</div>
						<br>
						<div class="text-center">
							<label>not a client yet?</label>
							<a class="nav-link" href="register.jsp">register now.</a></li> 
						</div>
					</form>
				</div>
			</div>
		</div>

	<%@include file="includes/footer.jsp"%>
</body>
</html>