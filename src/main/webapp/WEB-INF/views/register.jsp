
 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html>
<%@ include file='header.jsp'%>

<html>
<head>

<meta name="google-signin-scope" content="profile email">
<meta name="google-signin-client_id"
	content="692497048950-g2nabehv96kjqp5v7ifsd9qfetd636lm.apps.googleusercontent.com">
<script src="https://apis.google.com/js/platform.js" async defer></script>


<link
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
	rel="stylesheet">
<link
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"
	rel="stylesheet">
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">


<script src="https://apis.google.com/js/platform.js" async defer></script>

<title>Register</title>
</head>

<style>
body, html {
	height: 100%;
	margin: 0;
}

body {
	/* The image used */
	background-image: url(" ");
	/* Full height */
	height: 100%;
	/* Center and scale the image nicely */
	background-position: center;
	background-repeat: no-repeat;
	background-size: cover;
}

input[type=submit] {
	background-color: #00BFFF;
	border: none;
	color: white;
	padding: 16px 32px;
	text-decoration: none;
	margin: 4px 2px;
	cursor: pointer;
}

input[type=text] {
	padding: 12px 10px;
	margin: 8px 0;
	box-sizing: border-box;
	border: 3px solid #ffccff;
	-webkit-transition: 0.5s;
	transition: 0.5s;
	outline: none;
}

input[type=password] {
	padding: 12px 10px;
	margin: 8px 0;
	box-sizing: border-box;
	border: 3px solid #ffccff;
	-webkit-transition: 0.5s;
	transition: 0.5s;
	outline: none;
}

input[type=number] {
	padding: 12px 10px;
	margin: 8px 0;
	box-sizing: border-box;
	border: 3px solid #ffccff;
	-webkit-transition: 0.5s;
	transition: 0.5s;
	outline: none;
}

input[type=datetime-local] {
	padding: 12px 10px;
	margin: 8px 0;
	box-sizing: border-box;
	border: 3px solid #ffccff;
	-webkit-transition: 0.5s;
	transition: 0.5s;
	outline: none;
}
</style>

<div class="g-signin2" data-onsuccess="onSignIn" data-theme="dark"></div>
<script>
	function onSignIn(googleUser) {
		// Useful data for your client-side scripts:
		var profile = googleUser.getBasicProfile();
		console.log("checking ")
		console.log("ID: " + profile.getId()); // Don't send this directly to your server!
		console.log('Full Name: ' + profile.getName());
		console.log('Given Name: ' + profile.getGivenName());
		console.log('Family Name: ' + profile.getFamilyName());
		console.log("Image URL: " + profile.getImageUrl());
		console.log("Email: " + profile.getEmail());

		// The ID token you need to pass to your backend:
		var id_token = googleUser.getAuthResponse().id_token;
		console.log("ID Token: " + id_token);
	}
	;
</script>

<body>


	<div class="container">

		<a href="">Create Account</a>
		<hr>
		<div class="col-lg-8 col-md-offset-3">
			<div class="row">
				<form:form action="AddRegister" modelAttribute="register"
					method="POST">
					<div class="col-lg-8">

						<div class="form-group">
							<label>Name</label>
							<form:input path="name" type="text" placeholder="Enter the Name"
								pattern="[A-Z][A-za-z\s]{2,30}" minlength="2" maxlength="20"
								title="Should starts with Caps.Should not contain any special characters,minlenth is 2"
								required="required" class="form-control" />
						</div>


						<div class="form-group">
							<label>UserName</label>
							<form:input path="username" placeholder="Enter Username"
								pattern="[a-z]{3,10}[1-9]{1-3}"
								title="It does not contain any space.Should starts with small e.g. abc01"
								required="required" class="form-control" />
						</div>

						<div class="form-group">
							<label>Email</label>
							<form:input path="email" placeholder="Enter email id"
								pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}$"
								title="example abc@xxx.com" required="required"
								class="form-control" />
						</div>


						<div class="form-group">
							<label>Password</label>
							<form:input path="password" type="Password"
								placeholder="password"
								pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}"
								title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters"
								required="required" class="form-control" />
						</div>

						<div class="form-group">
							<label>Phone</label>
							<form:input path="phoneNo" placeholder="Mobile number"
								pattern="[789][0-9]{9}"
								title="Should be 10 digits starting from 7,8 or 9"
								required="required" class="form-control" />
						</div>

						<div class="form-group">
							<label>DOB</label>
							<form:input path="dob" type="datetime-local" name="bdaytime"
								required="required" class="form-control" />
						</div>


						<div class="form-group">
							<label>Gender</label>
							<form>
								<input type="radio" name="gender" value="male" checked>
								Male<br> <input type="radio" name="gender" value="female">
								Female<br> <input type="radio" name="gender" value="other">
								Other
							</form>
						</div>


						<div class="form-group">
							<label>Address</label>
							<form:input path="Address" type="text" placeholder="Address"
								required="required" class="form-control" />
						</div>

						<P>By clicking Create an account, you agree to our Terms and
							confirm that you have read our Data Policy, including our Cookie
							Use Policy. You may receive SMS message notifications from
							Restaurant and can opt out at any time</P>

						<div class="container">
							<input type="submit" value="SignUp" />
							<hr>
						</div>

					</div>

				</form:form>

			</div>
		</div>
	</div>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<%@ include file='footer.jsp'%>
</body>


</html>