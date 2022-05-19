<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>





<div class="container-fluid p-3 bg-dark ">
	<div class="row">
		<div class="col-md-3 text-success">
			<h3>
				<i class="fas fa-book"></i>Kitaab.com
			</h3>
		</div>
		<div class=" col-md-6 ">
			<!-- <form class="input-group " action= "search.jsp" method="post">
				<input class=" form-control input-group mr-sm-2" type="search" name="ch"
					placeholder="Search Book,Author etc..." aria-label="Search">
				<button class=" btn btn-primary my-2 my-sm-0 rounded-circle" type="submit">Search</button>
			 </form> -->
			 <form class="input-group" action= "search.jsp" method="post">
    <div class="input-group">
      <div class="input-group-prepend">
        <span class="input-group-text bg-light border-right-0" type="submit"><i class="fas fa-search"></i></span>
      </div>
      <input type="search" name="ch" class="form-control border-left-0" placeholder="Search" aria-label="Username" aria-describedby="basic-addon1">
    </div>
  </form> 
  
  
		</div>
		
		<c:if test="${not empty userobj}">
		<div class="col-md-3 text-right">
		<a href = "checkout.jsp" class = "btn btn-primary"><i class="fas fa-shopping-cart"></i>Cart</a>
			<a  href = "" class="btn btn-success "><i class="fas fa-user"></i> ${userobj.name}</a> 
			<a href="logout"	class="btn btn-danger"><i class="fas fa-sign-in-alt"></i> Logout</a>
					</div>	
					</c:if>
		<c:if test="${empty userobj}">
		
		<div class="col-md-3 text-right">
			<a href="login.jsp" class="btn btn-success"><i class="fas fa-sign-in-alt"></i> Login</a> 
			<a href="Register.jsp"	class="btn btn-primary"><i class="fas fa-user-plus"></i> Register</a>
					</div>
		
		</c:if>
			
		
	</div>
</div>


<nav class="navbar navbar-expand-lg navbar-dark bg-dark ">
	<a class="navbar-brand" href="#"><i class="fas fa-home"></i></a>
	<button class="navbar-toggler" type="button" data-toggle="collapse"
		data-target="#navbarSupportedContent"
		aria-controls="navbarSupportedContent" aria-expanded="false"
		aria-label="Toggle navigation">
		<span class="navbar-toggler-icon"></span>
	</button>

	<div class="collapse navbar-collapse" id="navbarSupportedContent">
		<ul class="navbar-nav mr-auto">
			<li class="nav-item active"><a class="nav-link" href="index.jsp">Home
					<span class="sr-only">(current)</span>
			</a></li>
			<li class="nav-item active"><a class="nav-link" href="all_recent_book.jsp"><i
					class="fas fa-atlas"> </i> Recent Book</a></li>
			<li class="nav-item active"><a class="nav-link" href="all_new_book.jsp"><i
					class="fas fa-book-open"></i> New Book</a></li>
			<li class="nav-item active"><a class="nav-link" href="all_old_book.jsp"><i
					class="fas fa-book-open"></i> Old Book</a></li>
		</ul>
		<form class="form-inline my-2 my-lg-0">
			<a href = "setting.jsp" class="btn btn-light my-2 my-sm-0 ml-1" type="submit">
				<i class="fas fa-cog"></i> Setting
			</a>
			<a  href= "customer_care.jsp" class="btn btn-light my-2 my-sm-0 ml-1" type="submit">
				<i class="fas fa-address-book"></i> Contact Us
			</a>
		</form>
	</div>
</nav>