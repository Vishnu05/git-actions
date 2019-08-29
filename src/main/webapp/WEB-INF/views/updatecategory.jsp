 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<title>Update Category</title>
<style> 
input[type=submit] {
    background-color: 	#40E0D0;
    border: none;
    color: white;
    padding: 10px 20px;
    text-decoration: none;
    margin: 4px 2px;
    cursor: pointer;
}
input[type=text] {
    
    padding: 12px 10px;
    margin: 8px 0;
    box-sizing: border-box;
    border: 3px solid #99ff99;
    -webkit-transition: 0.5s;
    transition: 0.5s;
    outline: none;
}

input[type=text]:focus {
    border: 3px solid #ff66b3;
}

</style>

</head>
<body>
<%@ include file="header.jsp" %>

<form:form action="${pageContext.request.contextPath}/updatecategory" modelAttribute="category" method="post">

<table align="center" cellspacing="2">
	<tr>
		<td colspan="2"><h1>Category Module</h1></td>
	</tr>
	<tr>
		<td>Category ID</td>
		<!--<td><input type="text" name="catId"/></td>-->
		<td><form:input path="catId" type="hidden"  /></td>
	</tr>
	<tr>
		<td>Category Name</td>
		<!-- <td><input type="text" name="catName"/></td> -->
		<td><form:input path="catName" required="required"/></td>
	</tr>
	<tr>
		<td>Category Desc</td>
		<!-- <td><input type="text" name="catDesc"/></td> -->
		<td><form:input path="catDesc" required="required"/></td>
	</tr>
	<tr>
		<td colspan="2">
			<center><input type="submit" value="updatecategory"/><input type="submit" value="Cancel"/></center>
			
		</td>
	</tr>
</table>

</form:form>
<br><br><br><br><br><br><br><br><br><br>
<%@ include file="footer.jsp" %>
</body>
</html>