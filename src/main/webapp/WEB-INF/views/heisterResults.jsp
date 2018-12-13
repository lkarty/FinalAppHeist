<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

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
<title>Heist Portal</title>
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

		<h1>Success!</h1>
		<p><strong>You have selected to heist:</strong></p>
		<div class="alert alert-dismissible alert-warning">
			<p>${success }</p>
		</div>

		<p>
			<strong>Would you like to <a href="/acceptedjobs"> view your completed
				heists?</a></strong>
		</p>
		<br>
		
		<blockquote class="blockquote text-right"><p class="script">${quote }</p></blockquote>
		

	</div>

</body>
</html>