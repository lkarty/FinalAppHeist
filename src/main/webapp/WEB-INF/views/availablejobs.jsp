<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootswatch/4.1.3/lux/bootstrap.min.css" />
<link
	href="https://fonts.googleapis.com/css?family=Dancing+Script&amp;subset=latin-ext"
	rel="stylesheet">


<link rel="stylesheet" href="style.css">


<meta charset="UTF-8">
<title>Heister Portal: Available Bids</title>
</head>
<body>
	<nav class="navbar navbar-expand-lg navbar-dark bg-primary">
		<a class="navbar-brand" href="/">The Art Heist</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarColor01" aria-controls="navbarColor01"
			aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>

		<div class="collapse navbar-collapse" id="navbarColor01">
			<ul class="navbar-nav mr-auto">

				<li class="nav-item"><a class="nav-link" href="shopper">Shopper</a></li>
				<li class="nav-item"><a class="nav-link" href="heister">Curator</a>
				</li>
				<li class="nav-item"><a class="nav-link" href="about">About</a></li>
			</ul>
			<form class="form-inline my-2 my-lg-0">
				<div class="script">Alternate Art Procurement for the
					discerning connoisseur</div>

			</form>
		</div>
	</nav>

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

	</div>

</body>
</html>