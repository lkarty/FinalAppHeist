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
<title>Heister Portal: Submit Bid</title>
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


		<h1>Hello, Heister</h1>
		
		<p class="text-danger">Please verify that the artwork you are
			heisting is correct and submit your bid.</p>

		<form action="quote">
			Title<br>
			<input type="text" value="${t }" name="title"><br> <br>
			Job Lister Email<br>
			<input type="text" value="${s}" name="shoppername"><br>
			<br> Original Offer Price<br>
			<input type="text" value="$ ${p}"> <br> <br> Your
			Email<br>
			<input type="text" value="${h}"> <br> <br> Your Bid<br>
			<input type="text" value="$$$$$" name="bid"> <br> <br>
			<input type="submit" value="Submit" class="btn btn-danger">
		</form>





	</div>

</body>
</html>