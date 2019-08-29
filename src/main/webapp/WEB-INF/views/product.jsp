  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ include file="header.jsp" %>
<html>
<head>

<title>Insert title here</title>
<style> 
input[type=submit],delete,UPDATE {
    background-color: 	#40E0D0;
    border: none;
    color: white;
    padding: 10px 20px;
    text-decoration: none;
    margin: 4px 2px;
    cursor: pointer;
}
input[type=text],input[type=textarea] {
    
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
<form:form method="POST" action="InsertProduct" modelAttribute="product" enctype="Multipart/form-data">

<table align="center">
	<tr>
		<td colspan="2"><h1>Product Module</h1></td>
	</tr>	
	<tr>
		<td>Product ID</td>
		<td><form:input path="productId" type="hidden"/></td>
	</tr>
	<tr>
		<td>Product Name</td>
		<td><form:input path="productName" required="required"/></td>
	</tr>
	<tr>
		<td>Product Desc</td>
		<td><form:textarea path="productDesc" required="required"/></td>
	</tr>
	<tr>
		<td>Product Stock</td>
		<td><form:input path="quantity" required="required"/></td>
	</tr>
	<tr>
		<td>Product Price</td>
		<td><form:input path="price" required="required"/></td>
	</tr>
	<tr>
		<td>Category</td>
		<td>
			<form:select path="catId">
				<form:option value="0" label="---Select---" required="required"/>
				<form:options items="${categoryList}"/>
			</form:select>
		</td>
	</tr>
	<tr>
		<td>Supplier</td>
		<td>
		<form:select path="supplierId">
				<form:option value="0" label="Option" required="required"/>
				<form:options items="${supplierList}"/>
			</form:select>
	</td>
	</tr>
	<tr>
		<td>Product Image</td>
		<td><form:input type="file" path="pimage" required="required"/></td>
	</tr>
	<tr>
		<td colspan="2">
			<center><input type="submit" value="Insert"/></center>
		</td>
	</tr>
	 
	
</table>
</form:form>
<br><br><br><br><br><br><br>
<%@ include file="footer.jsp" %>

</body>
</html>