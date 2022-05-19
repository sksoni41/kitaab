<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>order success</title>
<%@include file="all_component/allCss.jsp"%>
</head>
<body style="background-color: #f7f7f7;">
	<%@ include file="all_component/navbar.jsp"%>
	<c:if test="${empty userobj }">
		<c:redirect url="login.jsp"></c:redirect>

	</c:if>


<div class="container text-center mt-5">
<i class="fas fa-spinner fa-3x"></i>
<h3>Processing...</h3>
<h2>You will be redirected to your bank's website. It might take a few seconds</h2>
<h5>Please do not "refresh" or go "back".</h5>
<a href="index.jsp" class = "btn btn-danger mt-3">Cancel</a>

</div>
<div class="fixed-bottom"><%@ include file="all_component/footer.jsp" %></div>
</body>
</html>