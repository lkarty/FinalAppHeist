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

Your next job is to heist 
<h1>${accepted }</h1> 

${quote }
<br>
<br>
<br>
<form action="quote">
	Title: <input type="text" value="${t}">
	Job Lister Email: <input type="text" value="${s}">
	Original Offer Price: $<input type="text" value="${p}">
	Your Email: <input type="text" value="${h}">
	Your Bid: $<input type="text" name="bid">
	<input type="submit" value="Submit">



</form>

Would you like to <a href ="/acceptedjobssearch"> view your list of heists?</a>
<br>
(for your security, you will be prompted to re-enter your email address)





</body>
</html>