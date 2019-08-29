<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
 <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Home</title>
</head>
<body>
<%@ include file='header.jsp' %>
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

 
<%@ include file='footer.jsp' %>
</body>
</html>