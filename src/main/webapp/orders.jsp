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
	
    %><!DOCTYPE html>
<html>
<head>
<%@include file="includes/head.jsp" %>
<link rel="stylesheet" href="./includes/style1.css">
<title>Orders </title>
</head>
<body>
	<%@include file="includes/navbar.jsp" %>
	<h2>hello world</h2>
	
	<%@include file="includes/footer.jsp" %>
</body>
</html>