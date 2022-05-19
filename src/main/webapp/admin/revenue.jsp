<%@page import="com.entity.Book_order"%>
<%@page import="com.entity.Stock"%>
<%@page import="com.DAO.StockImpl"%>
<%@page import="com.entity.BookDtls"%>
<%@page import="java.util.List"%>
<%@page import="com.DB.DBConnect"%>
<%@page import="com.DAO.BookDAOImpl"%>
<%@page import="com.DAO.BookOrderImpl"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>admin: all books</title>
<%@ include file="allCss.jsp"%>
</head>
<body>
	<%@ include file="navbar.jsp"%>
	<c:if test="${empty userobj }">
	<c:redirect url="../login.jsp"/>
	</c:if>
	<h3 class="text-center">Hello Admin</h3>
	<c:if test= "${not empty succMsg }">
						<h5 class = "text-center text-success"> ${succMsg}</h5>
						<c:remove var = "succMsg" scope = "session"/> 
						</c:if >
					
					<c:if test= "${not empty failedMsg }">
						<h5 class = "text-center text-danger"> ${failedMsg}</h5>
						<c:remove var = "failedMsg" scope = "session"/> 
						</c:if >
	<table class="table table-striped">
		<thead class = "bg-primary text-white">
			<tr>
			   
	<th scope="col" class="text-center">Month</th>		
		<th class="text-center"scope="col">No. of book sold</th>
				
				<th class="text-center"scope="col">Revenue</th>
				
				
			</tr>
		</thead>
		<tbody>
		<%
		BookOrderImpl dao =  new BookOrderImpl(DBConnect.getConn());
		List<Book_order>blist =	dao.getRevenue();
		for(Book_order b: blist)
		{%>
		
			
			<tr class="table-warning">
		<td class="col-md-4 text-center "><%=b.getMonth() %>-2022</td>	
			<td class="col-md-4 text-center"><%=b.getTotalSold() %></td>
				<td class="text-center"><%=b.getRevenue() %></td>
				
				
				
				
							
			</tr>
			<%
			
		}
		%>
			
		</tbody>
		<thead class = "bg-primary text-white">
		
		
		<%
		BookOrderImpl dao2 =  new BookOrderImpl(DBConnect.getConn());
		List<Book_order>blist2 =	dao2.getTotRevenue();
		for(Book_order bb: blist2)
		{%>
		
			
			<tr class="table-success">
				<th></th>
				<th class="text-center text-dark">Total Revenue = <%=bb.getTotRevenue()%> .Rs</th>
				<th></th>
						
			</tr>
			<%
			
		}
		%>
			
		</thead>
	</table>
	<div class="fixed-bottom"><%@ include file="footer.jsp" %></div>
</body>
</html>