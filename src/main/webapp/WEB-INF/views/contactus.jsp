<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style >
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
 
html, body  { padding: 0; border: 0px none; }

.notification_error {
	border: 1px solid #A25965;
	height: auto;
	width: 90%;
	padding: 4px;
	background: #F8F0F1;
	text-align: left;
	-moz-border-radius: 5px;
}

.notification_ok {
	border: 1px #567397 solid;
	height: auto;
	width: 90%
	padding: 8px;
	background: #f5f9fd;
	text-align: center;
	-moz-border-radius: 5px;
}

.info_fieldset { -moz-border-radius: 7px; border: 1px #dddddd solid; }

.info_fieldset legend {
	border: 1px #dddddd solid;
	color: black; 

	font: 13px Verdana;

	padding: 2px 5px 2px 5px;
	-moz-border-radius: 3px;
}

.button {
	border: 1px solid #999999;
	border-top-color: #CCCCCC;
	border-left-color: #CCCCCC; 

	background: white;

	color: #333333; 

	font: 11px Verdana, Helvetica, Arial, sans-serif;

	-moz-border-radius: 3px;
}
label {width: 140px; padding-left: 20px; margin: 5px; float: left; text-align: left;}

input, textarea {
	margin: 5px;
	padding: 0px;
	float: left;

	border: 1px solid #999999;
	border-top-color: #CCCCCC;
	border-left-color: #CCCCCC; 

	color: #333333; 

	font: 11px Verdana, Helvetica, Arial, sans-serif;

	-moz-border-radius: 3px;
}
 
br { clear: left; }
</style>
</head>
<%@ include file="header.jsp" %>
<body>
<div align="center">
 
		<h3><b>What do you think about this website?
		give us feed back to improve.</b></h3>
		 <br>
		<div align="left" style="width: 500px;">
		 
		<fieldset class="info_fieldset"><legend>Contact</legend>
		 
		<form id="" action="">
			<label>Name</label><input class="textbox" type="text" name="name" value=""><br />
			 
			<label>E-Mail</label><input class="textbox" type="text" name="email" value=""><br />
			 
			<label>Subject</label><input class="textbox" type="text" name="subject" value=""><br />
			 
			<label>Comments</label><textarea class="textbox" NAME="message" ROWS="5" COLS="25"></textarea><br />
			 
			<label>&nbsp;</label><input class="button" type="submit" name="submit" value="Send Message">
		</form>
		 
		</div>
		 
		</fieldset>
		 
		</div>
		</div>
		<p><center><b>For More Details Contact Us</b></center>
		<center><i class="fa fa-mobile fa-4x"></i>7598693506  <i class="fa fa-envelope fa-4x"></i> vishnuthamiz96@gmail.com</center>
		
		
</body>
<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>

<%@ include file="footer.jsp" %>
</html>