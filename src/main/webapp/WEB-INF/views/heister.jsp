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
<title>Heister Portal</title>
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



		<h1>Hello Heister</h1>

		<p>People want to be you.</p>
		<p>Movies are made about you and video games emmulate you. Society
			spend millions trying to find you. You are no petty thief. You are
			what happens when skill and cunning meet. You are the Artful Dodger
			in every sense of the phrase.</p>

		<p>Today you embark on your pinnacle project: setting your price
			for the priceless.</p>


		<p>
			Enter your email to begin. Carpe diem. <br> <br> <br>
		<form class="mb-2 mr-2" action="availablejobs">



			<label class="mx-sm-3 mb-2" for="help"> </label> <input id="help"
				placeholder="DannyOcean@mail.com" type="email" name="email" required>
			<input id="usertype" type="hidden" name="type" value="heister">


			<input class="btn btn-primary" type="submit"
				value="Enter your email to begin">


		</form>

	</div>


</body>
</html>