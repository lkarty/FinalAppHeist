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
<h1>You have selected</h1>
<br>
<br>

<h1>${test }</h1>
<br>
<br>
Would you like to <a href="/shopper"> add another artwork? (</a>
(for your security, you will be prompted to re-enter your email address)

<br>
<br>
Would you like to <a href ="/shopperlistsearch"> view your personal art repository?</a>
(for your security, you will be prompted to re-enter your email address)
<%-- <table class ="table">
		<c:forEach var="d" items="${dummyart}">
			<tr>
			
			<td>${d.objectid}</td>
			<td>${d.title}</td>
			<td>${d.artist }</td>
			<td>${d.price }</td>
			
			
			</tr>
			
			</c:forEach>
		</table> --%>
</body>
</html>