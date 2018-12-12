<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>




<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootswatch/4.1.3/lux/bootstrap.min.css" />

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Shopper Login</title>
</head>
	<div class="container">

		
			<div class="row">
		<div class="col-lg-3">
			
			<font face="Lucida Handwriting, cursive" color="gray" size= 6 >Welcome, connoiseur of fine art</font>
		
		</div>
		</div>
		Soon you will have the opportunity to peruse our custom catalog of bespoke artwork from around the world, 
		each to made available to you by one of our skilled procurators whose lifes work has all lead 
		to this moment: the opportunity to appropriate a piece for a collector with your fine taste.
		 <br>
		 <br> 
		 To preserve your anonymity, you will only be identified by your email address. 
		 Please enter your email address below to begin. 
		 
		 <br>
		 <br>
		
		<div class="row"> 
		<div class="col-lg-3">
			<form class="mb-2 mr-2" action="resultz">
			
				<div>
					<div >
						<!-- <label class="mx-sm-3 mb-2" for="help">Please Enter Email: </label> -->
						
						<input id="help"  type="email" placeholder= "yourname@example.com" name="email" required>
						<input type="hidden" name="utype" value="shopper">
					
			
					<input type="submit" value="Shop for your artwork"></div></div>
	
			</form>
		</div>
		</div>
				
	</div>


</body>
</html>