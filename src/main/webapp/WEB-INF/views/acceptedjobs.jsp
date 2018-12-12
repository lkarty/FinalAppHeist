<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
   <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>My Jobs</h1>
<table class ="table">
		<c:forEach var= "p" items= "${acceptedjobs }">
			<tr>
			
			<td>${p.title }</td>
			<td><img src="${p.image}"></td>
			
						</tr>
			
			</c:forEach>
		</table>


</body>
</html>