      <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
        
   <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Montserrat">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<title>footer</title>
<style>
.fa {
  padding: 20px;
  font-size: 30px;
  width: 50px;
  text-align: center;
  text-decoration: none;
  margin: 5px 2px;
}

.fa:hover {
    opacity: 0.7;
}

.fa-facebook {
  background: #3B5998;
  color: white;
}

.fa-twitter {
  background: #55ACEE;
  color: white;
}

.fa-google {
  background: #dd4b39;
  color: white;
}

.fa-linkedin {
  background: #007bb5;
  color: white;
}

.fa-youtube {
  background: #bb0000;
  color: white;
}

.fa-instagram {
  background: #125688;
  color: white;
}
 input[type=submit] {
    background-color: 	#40E0D0;
    border: none;
    color: white;
    padding: 10px 20px;
    text-decoration: none;
    margin: 4px 2px;
    cursor: pointer;
}
 

 </style>
</head>
<body>
<footer>
<footer class="w3-padding-64 w3-light-grey w3-small w3-center" id="footer">
    <div class="w3-row-padding">
      <div class="w3-col s4">
      
      


<p><h3>Follow us on</h3></p>
<a href="https://www.facebook.com/" class="fa fa-facebook"></a>
<a href="https://twitter.com/" class="fa fa-twitter"></a>
<a href="https://plus.google.com/discover" class="fa fa-google"></a>
<a href="https://www.linkedin.com" class="fa fa-linkedin"></a>
<a href="https://www.youtube.com/" class="fa fa-youtube"></a>
<a href="https://www.instagram.com/" class="fa fa-instagram"></a>
</div>

<div class="w3-col s4">
<h3>Subscribe to our news letter to Know latest offers</h3>
<div class="col-lg-8">
<form action="AddSubscribe" modelAttribute="subscribe"  method="POST">
<div class="form-group">
<input path="email" placeholder="Enter your email address" class="form-control"/>
</div></div>
<input type="submit" value="Subscribe!"></p>
<form>
<h4>Download Spicy app</h4>
<a href="https://www.microsoft.com/en-us/store/apps/windows?icid=CNavAppsWindowsApps"><img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADIAAAAyBAMAAADsEZWCAAAABGdBTUEAALGPC/xhBQAAAAFzUkdCAK7OHOkAAAAJcEhZcwAADsMAAA7DAcdvqGQAAAAwUExURQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAFo/HAsAAAAQdFJOUx4B/izyt55G4lXQeI0OZk6aMr4EAAABZ0lEQVQ4EWMQxAUYcEkI0l9G+GjeRWTnwF3A06SktECAESEHk5F0UlJS0mjS2AiXgskYKSlFHwJKqmHIJGk8EBQFyigVwqRgepr0BQXFlGKvKgWiyzgpg2QSJZUW4pCRxyPjFhF3EawNZg/ItGtKrU0gR7h9BEnBZbS3rQCJgoEKI0yG/U0WTFAr5v0RJSVDqIwwTOnScwVAIcEvqDJeOc8ZQcJAIIIko7bTFiKIIeMIERf+nQ1iIOsBysha8kYoKaliyqQ2KX0AOgSLjJMSfWQYGBguAjE4GFFd/XPmTN6ZM2dOx3Q1vdz2JgJXGAgKCtw9ughbuIFcKyjI/hJEovoHJAIDyDLujDBREI0so6QETRxgBagywFjTCNsPSQ0IGdltwHiGgNbsyRetF8HTDtCIy7+B0Q0BKkDKECgES71ApjnQtxCw+iKqDJAnUHd0iZLWBiALRQ+YD/QtI4SBZBpUBkZRVwYANoKknEE77G0AAAAASUVORK5CYII="></a>
<a href="https://www.apple.com/retail/"><img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADIAAAAyCAMAAAAp4XiDAAAABGdBTUEAALGPC/xhBQAAAAFzUkdCAK7OHOkAAAAJcEhZcwAADsMAAA7DAcdvqGQAAADJUExURevv8e3v8evv8e3v8ejo6Ozv8evx8UdwTOvv8UdwTO3v8e3v8evv8e3v8e3x8e3x8ezv8e3v8e3v8enW4u/MxvWZhujs7/xvQeqgvFRnvvNzaufA1MqZ1aI0te7k4+tyneozcetKgSemm9rX6Zmq2eyGo/NYUcZpuq9RvcPL4+hVjEdYuB2x89e54M7T55bU7MXe5z+667jc2sfk8XLL8/Doye+5tmS+wfmHYqmd09Xn58HH46ePz3yJy/Pfmf/DDKF2yamx2X6ByQFbg9cAAAASdFJOU7tSodoLrjMAwwB+zoGjVjbXfKGWpAQAAAHXSURBVEgN5ZVpU8IwEIahgGWAgbq9KDctBaQUFRFUvP//jzJXj0i2M/BR84GE3ffZ3WwnSUk/e5TOJvS/i3RaWulkaK2O1KP89tsVQEalnIMypFpD9Mxcq6ZQilSbRQRAM2VSpDAHjVZL0iRIuzgH9Sb7SRB051koQ6QRSCfz4KsrzgikhQszT0NCtMyBrzQJKeHCzCMqElM9c+CrupSFI84jriceFfL+4RDPyHZd1zYZbY4nk2lXBFIhLMvIfbJGlj3fE6E5CU2zuxhwRoUwj2uzaT8necZjug6GATOpEIuord6I+WEVAqx4TQGtV70XywWwe5yA7gpgIOJzkzILkfd4XQD9BYCzGH7ObkQMZcesOUCY9CceUmnw9RZ5x+IsIdsx0QyWXAjObP3AlqrC+lOA7kQoX5/FAuD+thBxlvwrbKINON4d0xYhpEkQDylz9Gbkd0dLcg4+3uSYlR9/R54XUQKc3frg+z7PpewYVdERHDc8LoG22xduVH/KxIfMcscuOGIaElgyywe5IfmQP/J1ccGlpBtI5JzZ4Ec/fSvLOR+y/H3B6jVEmJpPrnH9gsdCP/9JInsroz0wkn3QDojbUjTjqqF6Xq/FlS9EMiKMxdM/R34AY9iC1C7tKboAAAAASUVORK5CYII="></a>
<a href="https://play.google.com/store?hl=en"><img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADIAAAAyBAMAAADsEZWCAAAABGdBTUEAALGPC/xhBQAAAAFzUkdCAK7OHOkAAAAJcEhZcwAADsMAAA7DAcdvqGQAAAAkUExURXyzQXuzQnaxPXqzQHy0QXq1QnuzQXuzQXu0QnuzQXuzQXqzQDGpEuwAAAAMdFJOU/ipAWgTRS6OO91yeX6FQY8AAAEOSURBVDgR3dO9TgJBEAfwv2DAiw2QEChxXE/Aht6GbEJCi9H+ch1WaGmF9wQXCx6AAlqjJS/n3mZnWFavhcRp9uN3mZ2b2wOVBcqAji9tW8tMKpIK+kjNZoyMSYQaq23zbX7G4FWdoIjz3xLnVqKUSbIlFoBVKCrHs7ENolBuEd0Yecjx5YizDVwy4COQpchFIO9Njm4gbukN9hyV0uSJ45FiXTxgJYn0SM6pqrwmssDak2vURRp49eQOtq0223+Twx4MvR6U901l5HWHplr6Zia+FPvuK5ixXMbg4FvKd0fdL3C5+0T9WxepTLAQLVGhHvjmnELGaNHVX38W9Tua1EtmKz6sWrbcZP8+p5If7lWWeNYy3D4AAAAASUVORK5CYII="></a>
</div>



<div class="w3-col s4">
<h3><p>Order Spicy Restaurant online</p></h3>
<p><a href="">Briyani</a></p>
<p><a href="">Kebab</a></p>
<p><a href="">Grill chicken</a></p>
<p><a href="">Tandoori</a></p>
<p><a href="">Shwarma</a></p>
</div>
<br>
<p>
<center><p>� Copyright 2016 Restaurant. All Rights Reserved</p></center>
<p>Food shown are for illustration purpose only. Actual product may differ from the images shown in this website. Prices indicated above is not valid in the states of Kerala.* The Restaurant name, logos, and related marks are trademarks of Spicy, Inc.</p>
</footer>

</body>
</html>