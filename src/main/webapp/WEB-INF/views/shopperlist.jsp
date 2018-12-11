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

<h1>My Jobs</h1>
<table class ="table">
		<c:forEach var="p" items="${shopperlist}">
			<tr>
			
			<td>${p.title }</td>
			<td><img src="${p.image}"></td>
			
						</tr>
			
			</c:forEach>
		</table>

<h1>Bids</h1>
<table class ="table">
		<c:forEach var="p" items="${bidslist}">
			<tr>
			
			<td>${p.title }</td>
			<td>${p.price }</td>
			<td>${p.heisteremail }</td>
			<%-- <td><img src="${p.image}"></td> --%>
			
						</tr>
			
			</c:forEach>
		</table>
</body>
</html>