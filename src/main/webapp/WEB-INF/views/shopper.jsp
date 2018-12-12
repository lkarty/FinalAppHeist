<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootswatch/4.1.3/united/bootstrap.min.css" />

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Shopper Login</title>
</head>
	<div class="container">

		
			<div class="row">
		<div class="col-lg-3">
			<h1>Welcome Shopper!</h1>
		</div>
		</div>
		<div class="row"> 
		<div class="col-lg-3">
			<form class="mb-2 mr-2" action="resultz">
			
				<div>
					<div >
						<!-- <label class="mx-sm-3 mb-2" for="help">Please Enter Email: </label> -->
						Please Enter Email:
						<input id="help"  type="email" name="email" required>
						<input type="hidden" name="utype" value="shopper">
					
			
					<input type="submit" value="Login"></div></div>
	
			</form>
		</div>
		</div>
				
	</div>


</body>
</html>