<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="java.util.*" %>
     <%@page import="model.Client" %>
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
<%@include file="includes/head.jsp" %>
<link rel="stylesheet" href="./includes/style1.css">
<title>Register</title>
</head>
<body>
	<%@include file="includes/navbar.jsp" %>
	
	<div class="container" style="margin-top:100px;">
			<div class="card w-50 mx-auto my-5">
				<div class="card-header text-center">Client Register</div>
				<div class="card-body">
					<form action="Client_Register" method="post">
						<div class="form-group">
							<label>Last name</label> <input type="text" name="lastname"
								class="form-control" placeholder="Enter Last name" required>
						</div>
						<div class="form-group">
							<label>First name</label> <input type="text" name="firstname"
								class="form-control" placeholder="Enter First name" required>
						</div>
						
						<div class="form-group">
							<label>Address</label> <input type="text" name="address"
								class="form-control" placeholder="Enter address" required>
						</div>
						<div class="form-group">
							<label>City</label> <input type="text" name="city"
								class="form-control" placeholder="Enter City" required>
						</div>
						<div class="form-group">
							<label>Phone</label> <input type="text" name="phone"
								class="form-control" placeholder="Enter Phone" required>
						</div>
						
						<div class="form-group">
							<label>Email address</label> <input type="email" name="email"
								class="form-control" placeholder="Enter email" required>
						</div>
						<div class="form-group">
							<label>Password</label> <input type="password" name="password"
								class="form-control" placeholder="Password" required>
						</div>
						<div class="text-center">
							<button type="submit" class="btn btn-primary">Register</button>
						</div>
					</form>
				</div>
			</div>
		</div>
	
	<%@include file="includes/footer.jsp" %>
</body>
</html>