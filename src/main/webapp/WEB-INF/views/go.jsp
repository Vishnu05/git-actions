<%@ page language="java" contentType="text/html"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
 <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>   
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<form:form action="addgo" modelAttribute="go" commandName="go" >

<form:input path="go"/>
<form:input path="go2"/>
<form:input path="go3"/>
<input type="submit">
</form:form>

</body>
</html>