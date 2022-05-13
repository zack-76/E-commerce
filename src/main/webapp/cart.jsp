<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.util.*"%>
<%@page import="java.text.*"%>
<%@page import="model.*"%>
<%@page import="dao.*"%>
<%@page import="connection.*"%>
<%
DecimalFormat dcf = new DecimalFormat("#.##");
request.setAttribute("dcf",dcf);
Client auth = (Client) request.getSession().getAttribute("auth");
if (auth != null) {
	request.setAttribute("auth", auth);

}

	ArrayList<Cart> cartList = (ArrayList<Cart>) session.getAttribute("cart-list");
	List<Cart> productCartList = null;
	if(cartList != null){
		DAOInterfaceImpl impl = new DAOInterfaceImpl(DBConn.getConnectionne());
		productCartList = impl.getAllProducts(cartList);
		double total = impl.getTotalCartPrice(cartList);
		request.setAttribute("cart_list", cartList);
		request.setAttribute("total", total);
	}
%>
<!DOCTYPE html>
<html>
<head>
<style>
#btn1{
background-color:coral;
color:white;
}
</style>
<%@include file="includes/head.jsp"%>
<link rel="stylesheet" href="./includes/style1.css">
<title>cart</title>
<style type="text/css">
.table tbody td {
	vertical-align: middle;
}

.btn-incre, .btn-decre {
	box-shadow: none;
	font-size: 25px;
}
</style>
</head>
<body>
	<%@include file="includes/navbar.jsp"%>
	<div class="container" style="margin-top:100px;">
		<div class="d-flex py-3">
			<h3>Total price:$ ${ (total>0)?dcf.format(total):0.0 }</h3>
			<a href="check-out" class="mx-5 btn btn-dark">Buy all products</a>
		</div>
		<table class="table table-light">
			<thead>
				<tr>
					<th scope="col">Image</th>
					<th scope="col">Name</th>
					<th scope="col">Category</th>
					<th scope="col">Price</th>
					<th scope="col">Buy Now</th>
					<th scope="col">Cancel</th>
				</tr>
			</thead>
			<tbody>
			<%if(cartList != null){
				for(Cart c : productCartList){%>
					<tr>
					
					<td><img style="width:230px;height:130px;" src="./images/<%= c.getImage()%>" alt=""></td>
					<td>  <%= c.getName() %></td>
					<td><%= c.getCategory() %></td>
					<td>$<%= dcf.format(c.getPrice()) %></td>
					
					<td>
						<form action="order-now" method="post" class="form-inline">
							<input type="hidden" name="id" value="<%= c.getId() %>" class="form-input" />
							<div class="form-group d-flex justify-content-between w-50">
								<a class="btn bnt-sm btn-decre" href="quentity-incre-decre?action=dec&id=<%= c.getId() %>"><i
									class="fas fa-minus-square"></i></a> <input type="text"
									name="quantity" class="form-control" value="<%= c.getQuantity() %>" readonly>

								<a class="btn bnt-sm btn-incre" href="quentity-incre-decre?action=inc&id=<%= c.getId() %>"><i
									class="fas fa-plus-square"></i></a>
									<button type="submit" id="btn" class="btn btn-md mx-3">Buy</button>
							</div>
							
							
						</form>
					</td>
					
					<td><a class="btn btn-md btn-danger" href="remove-product?id=<%= c.getId()%>">remove from cart</a></td>

				</tr>
				<% }
			} %>
				
			</tbody>
		</table>
	</div>
	<%@include file="./footer.jsp"%>
	<%@include file="includes/footer.jsp"%>
</body>
</html>