<%@page import="com.entity.Book_order"%>
<%@page import="java.util.List"%>
<%@page import="com.DB.DBConnect"%>
<%@page import="com.DAO.BookOrderImpl"%>
<%@page import="com.entity.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin: All Orders</title>
<%@ include file="allCss.jsp"%>
</head>
<body>
	<c:if test="${empty userobj }">
		<c:redirect url="login.jsp"></c:redirect>

	</c:if>
	<%@ include file="navbar.jsp"%>
	<h3 class="text-center">Hello Admin</h3>
	<table class="table table-striped">
		<thead class = "bg-primary text-white">
			<tr>
				<th scope="col">Order Id</th>
				<th scope="col">Name</th>
				<th scope="col">Email</th>
				<th scope="col">Address</th>
				<th scope="col">Ph No</th>
				<th scope="col">Book Name</th>
				<th scope="col">Author</th>
				<th scope="col">Price</th>
				<th scope="col">Payment type</th>
				<th scope="col">Date</th>
			</tr>
		</thead>
		<tbody>
		
			<%
			User u= (User)session.getAttribute("userobj");
			BookOrderImpl dao =  new BookOrderImpl(DBConnect.getConn());
		List<Book_order>blist =	dao.getBook();
		for(Book_order b: blist)
		{%>
			<tr>
					<th scope="row"><%= b.getOrderId()%></th>
					<td><%=b.getUsername()%></td>
					<td><%=b.getEmail() %></td>
					<td><%=b.getFulladd() %></td>
					<td><%=b.getPhno() %></td>
					<td><%=b.getBook_name()%></td>
					<td><%=b.getAuthor()%></td>
					<td><%=b.getPrice()%></td>
					<td><%=b.getPaymentType() %></td>
					<td><%=b.getDate()%></td>
					
				</tr>
			
			
		<%}
			
			%>
				
		
			
			
		</tbody>
	</table> 
	<div  class="fixed-bottom"><%@ include file="footer.jsp"%></div>
</body>
</html>