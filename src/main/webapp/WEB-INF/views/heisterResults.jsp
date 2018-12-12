<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
   <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Heister</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootswatch/4.1.3/lux/bootstrap.min.css" />



</head>
<h1>Success!</h1>
<body>




<%-- 	<form action = "addshopper">
			Name: <input type ="text" name="shoppername">
					<input type="submit" value="Request">
		</form>
		
		
		<table class ="table">
		<c:forEach var="s" items="${joblist}">
			<tr>
			
			<td>${s.title}</td>
			<td>${s.shoppername}</td>
			
			
			</tr>
			
			</c:forEach>
		</table> --%>		
<h1>You have selected to heist</h1>		 
<font size= 4>${success } </font>
<br>

<font face="Lucida Handwriting, cursive" color="black" size= 6 >${quote }</font>
 <br>
 <br>
 <br>
 Would you like to <a href ="/acceptedjobs"> view your completed heists?</a>

</body>
</html>