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
<title>Shopper Portal</title>
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

		<h1 class="script">Welcome, connoiseur of fine art</h1>

		<p>Soon you will have the opportunity to peruse our custom catalog
			of bespoke artwork from around the world, each to made available to
			you by one of our skilled curators whose lives work has all lead to
			this moment: the opportunity to appropriate a piece for a collector
			with fine taste.</p>
		<p>To preserve your anonymity, you will only be identified by your
			email address. Please enter your email address below to begin.</p>
		<div class="row">
			<div class="col-lg-6">
				<form class="mb-2 mr-2" action="resultz">



					<input id="shopperemail" type="email" placeholder="name@email.com"
						name="email" required> <input type="hidden" name="utype"
						value="shopper"> <input type="submit"
						value="Shop for artwork" class="btn btn-primary">


				</form>
			</div>
		</div>

	</div>


</body>
</html>