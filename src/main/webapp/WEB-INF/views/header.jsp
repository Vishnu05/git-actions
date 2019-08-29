    <!DOCTYPE html>
<html>
<head>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
  <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>Restaurant</title>
 
</head>
  <body>
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
       
    </div> 
   
<c:if test="${sessionScope.username != null}">

<c:if test="${sessionScope.role == 'Role_Admin'}">
 
 <ul class="nav navbar-nav">
  <li><a href="<c:url value = "/adminhome"/>">Admin Page</a>
 <li><a href ="<c:url value = "/Category"/>">Category</a></li>
<li><a href ="<c:url value = "/product"/>">Product</a></li>
<li><a href="<c:url value = "/showproduct"/>">Show Product</a>
<li><a href ="<c:url value = "/supplier"/>">Supplier</a></li>
</ul>
   <ul class="nav navbar-nav navbar-right">
   <li><a href="">Welcome Admin ${username}</a></li>
      <li><a href="<c:url value = "/perform_logout"/>"><span class="glyphicon glyphicon-log-out"></span> logout</a></li></ul>
 
 </c:if>
 <c:if test="${sessionScope.role == 'Role_User'}">
 
 <ul class="nav navbar-nav">
                    <li><a class="active" href="<c:url value = "/userhome"/>">Home</a></li>
                   <li><a href="<c:url value = "/aboutus"/>">About us</a></li>
                   <li><a href="<c:url value= "/contactus"/>">Contact Us</a></li></ul>
                   
                	<ul class="nav navbar-nav navbar-right">
                	<li><a href="<c:url value = "/productdisplay"/>">Product</a> </li>
                	
       <li><a href="<c:url value = "/cart"/>"><span class="glyphicon glyphicon-shopping-cart">Cart</span></a> </li>    
       <li><a href="">Welcome ${username}</a></li>    	
      <li><a href="<c:url value = "/perform_logout"/>">  <span class="glyphicon glyphicon-log-out"></span>logout</a></li>
      </ul>
      </c:if>
                     </c:if>
 
                
    			<c:if test="${sessionScope.username == null}">
  <ul class="nav navbar-nav">
  
</ul>
	 <ul class="nav navbar-nav">
	<li><a href="<c:url value = "home"/>">Home</a>
	<li><a href="<c:url value = "aboutus"/>">About Us</a>
	<li><a href="<c:url value= "contactus"/>">Contact Us</a></li>
	 	<li><a href="productdisplay">Product</a> </li></ul>
   <ul class="nav navbar-nav navbar-right">
   	
   	    <li><a href="<c:url value = "register"/>"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
      <li><a href="login">Login</a></li></ul>
    			
				</c:if>
  </div>
</nav>
 <body>
<p></p>
</body>
</html>


 