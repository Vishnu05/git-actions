  <!DOCTYPE html>
<html>
<head>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<title> Restaurant </title>
<style>
body, html {
    height: 100%;
    margin: 0;
}

  </style>


<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>

  <nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      
    </div>
    <ul class="nav navbar-nav">
     
      <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Spicy Restaurant<span class="caret"></span></a>
         
    <ul class="dropdown-menu">
    <li><a href="">Briyani</a></li>
    <li><a href="">Shawarma</a></li>
    
    <li><a href="">Grill Chicken</a></li>
    <li><a href="">Tandoori</a></li>
    <li><a href="">Kebab</a></li>
    <li><a href="">Chicken Tika</a></li>
    
    </ul> 
      </li>
        <li><a href="<c:url value= "home"/>">Home</a></li>
   
      <li><a href="<c:url value= "aboutus"/>">About us</a></li>
      <li><a href="<c:url value= "contactus"/>">Contact Us</a></li>
      <li><a href="<c:url value= "productdisplay"/>">Product</a> </li>
      <li><a href="productdesc"></a></li>
     
     
      
      </ul>
     
 <ul class="nav navbar-nav navbar-right">
       <li><a href="<c:url value= "register"/>"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
      <li><a href="<c:url value= "login"/>"><span class="glyphicon glyphicon-log-in"></span> Login</a></li> 
    </ul> 
    
  </div>
</nav>
   
  <div class="bg"></div>
  
  <div class="container">
  <h2>Restaurant</h2>  
  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
      
    </ol>
    
       <div class="carousel-inner">
      <div class="item active">
        <img src=" https://www.whatsuplife.in/hyderabad/blog/wp-content/uploads/2015/09/slider-1-background.jpg" alt="shawrama" style="width:100%;">   
      </div>

      <div class="item">
        <img src="http://hdlatestwallpaper.com/?edmc=5622" alt="kebab" style="width:100%;">
      </div>
    
      <div class="item">
       <img src="https://i.ytimg.com/vi/90pm-leHH7U/maxresdefault.jpg" alt="Briyani" style="width:100%;">
      </div>
    </div>
          
    
    
  
 <a class="left carousel-control" href="#myCarousel" data-slide="prev">
      <span class="glyphicon glyphicon-chsevron-left"></span>
      <span class="sr-only">Previous</span>
    </a>
    
    <a class="right carousel-control" href="#myCarousel" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
</div>
  
  <%@ include file="/WEB-INF/views/footer.jsp"%> 
</body>
</html>


 