<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin:home</title>
<%@ include file="allCss.jsp"%>
<style type = "text/css">
a {

text-decoration: none;
color: black;
}
a:hover {
text-decoration: none;
color : black;
}

</style>
</head>
<body>
	<%@ include file="navbar.jsp"%>
	<c:if test="${empty userobj }">
	<c:redirect url="../login.jsp"/>
	</c:if>
	
	<div class="container">
		<div class="row p-5">
			<div class="col-md-4">
			<a href = "add_book.jsp">
				<div class="card">
					<div class="card-body text-center">
						<i class="fas fa-plus-square fa-3x text-success"></i><br>
						<h4>Add Books</h4>
						-------------
					</div>
				</div>
                 </a>
			</div>
			<div class="col-md-4">
			<a href = "all_books.jsp">
				<div class="card">
					<div class="card-body text-center">
						<i class="fas fa-book fa-3x text-warning"></i><br>
						<h4>All Books</h4>
						-------------
					</div>
				</div>
                  </a>
			</div>
			<div class="col-md-4">
			<a href = "orders.jsp">
				<div class="card">
					<div class="card-body text-center">
						<i class="fas fa-cart-arrow-down fa-3x text-primary"></i><br>
						<h4>orders</h4>
						-------------
					</div>
				</div>
</a>
			</div>
			<div class="col-md-4 mt-3">
			<a href = "stock.jsp">
				<div class="card">
					<div class="card-body text-center">
						<i class="fas fa-warehouse fa-3x text-primary"></i><br>
						<h4>stock management</h4>
						-------------
					</div>
				</div>
</a>
			</div>
			<div class="col-md-4 mt-3">
			<a href = "revenue.jsp">
				<div class="card">
					<div class="card-body text-center">
						<i class="fas fa-hand-holding-usd fa-3x text-success"></i><br>
						<h4>Revenue</h4>
						-------------
					</div>
				</div>
</a>
			</div>
			<div class="col-md-4 mt-3">
				<a href = "#" data-toggle="modal" data-target="#exampleModalCenter">
				<div class="card">
					<div class="card-body text-center text-danger">
						<i class="fas fa-sign-out-alt fa-3x"></i><br>
						<h4>Logout</h4>
						-------------
					</div>
				</div> </a> 
              </div>
			</div>
		</div>
	
<!--logout modal start -->



<!-- Modal -->
<div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLongTitle"></h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <div class ="text-center">
        <h4>Do You want logout</h4>
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        <a href="../logout" type="button" class="btn btn-primary text-white">Logout</a>
        </div>
      </div>
      <div class="modal-footer">
        
      </div>
    </div>
  </div>
</div>
<!--logout modal end -->
	<div class="fixed-bottom"><%@ include file="footer.jsp" %></div>
</body>
</html>