<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>profile page</title>
<%@ include file="all_component/allCss.jsp"%>
</head>
<body style="background-color: #f7f7f7;">
	<%@ include file="all_component/navbar.jsp"%>
	<div class="container">
		<div class="row">
			<div class="col-md-4 offset-md-4">
				<div class="card">
					<div class="card-body">
					<h4 class= "text-center text-primary">Edit Profile</h4>
					
						<c:if test="${not empty failedMsg }">
							<h5 class="text-center text-danger">${failedMsg}</h5>
							<c:remove var="failedMsg" scope="session" />
						</c:if>

                           <c:if test="${not empty succMsg }">
							<h5 class="text-center text-success">${succMsg}</h5>
							<c:remove var="succMsg" scope="session" />
						</c:if>
					
					
					
					<form action = "update_profile" method= "post">
					<input type="hidden" value="${userobj.id}" name="id">
							<div class="form-group">
								<label for="exampleInputEmail1">Name</label> <input type="text"
									class="form-control" id="exampleInputEmail1"
									aria-describedby="emailHelp" value="${userobj.name}" required="required" name="fname">


							</div>
							<div class="form-group">
								<label for="exampleInputEmail1">Email address</label> <input
									type="email" class="form-control" id="exampleInputEmail1"
									aria-describedby="emailHelp" value="${userobj.email}" required="required" name="email">
							</div>
							<div class="form-group">
								<label for="exampleInputEmail1">Phone no.</label> <input
									type="number" class="form-control" id="exampleInputEmail1"
									aria-describedby="emailHelp" value="${userobj.phno}" required="required" name="phno">
							</div>
							<div class="form-group">
								<label for="exampleInputPassword1">Password</label> <input
									type="password" class="form-control" id="exampleInputPassword1"
									placeholder="Password" required="required" name="password">
							</div>
							
							<button type="submit" class="btn btn-primary btn-block btn-sm">Update</button>
						</form>
					
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="fixed-bottom"><%@ include file="all_component/footer.jsp" %></div>
</body>
</html>