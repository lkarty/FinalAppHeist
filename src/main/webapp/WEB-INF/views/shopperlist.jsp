<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
   <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootswatch/4.1.3/sketchy/bootstrap.min.css" />
</head>
<body>
<form action= "shopperlistsearch">
Enter your email address to view your personal art repository: <input name= "shoppername">
<input type="submit" value="View Art Repository">
</form>

<table class ="table">
		<c:forEach var="p" items="${shopper-list}">
			<tr>
			<td>${p.title }</td>
			
						</tr>
			
			</c:forEach>
		</table>

</body>
</html>