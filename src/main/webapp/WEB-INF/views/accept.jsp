<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootswatch/4.1.3/lux/bootstrap.min.css" />
</head>
<body>
<h1>Hello, Heister</h1>
<h1>Please verify that the artwork you are heisting is correct and submit your bid</h1>
<div class="container">
<form action="quote">
	Title: <input type="text" value= "${t }" name="title">
	Job Lister Email: <input type="text" value="${s}" name="shoppername">
	Original Offer Price: $<input type="text" value="${p}">
	Your Email: <input type="text" value="${h}">
	Your Bid: $<input type="text" name="bid">
	<input type="submit" value="Submit">
</form>





</div>

</body>
</html>