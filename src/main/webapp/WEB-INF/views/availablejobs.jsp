<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
   <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Available Jobs</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootswatch/4.1.3/lux/bootstrap.min.css" />
</head>
<body>

<div class="container">
<h1>Artworks</h1>

	<table class="table">
		<thead>
			<tr>
				
				<th>Title</th>
				<th>Price</th>
				<th>Shopper Email</th>
			
				
			</tr>

		</thead>
		<c:forEach var="v" items="${availablejobs }">
			<tbody>
				<tr>
					<td>${v.title }</td>
					<td>${v.price}</td>
					<td>${v.shoppername }</td>
					<td><a href="accept?title=${v.title }&price=${v.price }&shoppername=${v.shoppername}" class="btn btn-primary">Bid</a></td>
					
					

				</tr>

			</tbody>


		</c:forEach>
	</table>

	<img alt="" src="">
	</div>

</body>
</html>