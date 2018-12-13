<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootswatch/4.1.3/lux/bootstrap.min.css" />
<link
	href="https://fonts.googleapis.com/css?family=Dancing+Script&amp;subset=latin-ext"
	rel="stylesheet">
<link rel="stylesheet" href="style.css">


<meta charset="UTF-8">
<title>Art</title>
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

		<form action="search" class="form-inline my-2 my-lg-0">


			Search By Title: <input type="text" placeholder="search title"
				name="q"> <input type="submit" value="Find Art"
				class="btn btn-danger">
		</form>

		<table class="table">
			<thead>
				<tr>
					<th>Title</th>
					<th>Medium</th>
					<th>Date</th>
					<th>Height</th>
					<th>Width</th>
					<th>Price</th>
					<th>Image</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="a" items="${art }" varStatus="count">

					<tr>
						<td>${a.title }</td>
						<td>${a.medium }</td>
						<td>${a.date }</td>
						<%-- <td>${a.location}</td --%>
						<td>${a.dimensions.in.height }</td>
						<td>${a.dimensions.in.width }</td>
						<td> <a
							href="add-job?title=${a.title }&medium=${a.medium }&date=${a.date }&i=${count.index}"
							class="btn btn-primary">Add to Job</a></td>
						<td><img src="${a.links.image.img}"></td>

					</tr>
				</c:forEach>
			</tbody>
		</table>

	</div>
</body>
</html>