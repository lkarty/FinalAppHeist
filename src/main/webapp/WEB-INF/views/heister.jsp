<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootswatch/4.1.3/united/bootstrap.min.css" />

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Heister Login</title>
</head>
	<div class="container">

		
			<div class="row">
		<div class="col-lg-3">
			<h1>Welcome Heister!</h1>
		</div>
		</div>
		<div class="row"> 
		<div class="col-lg-3">
			<form class="mb-2 mr-2" action="availablejobs">
			
				<div class="form-group mx-sm-3 mb-2 ">
					<div class="form-group">
						<label class="mx-sm-3 mb-2" for="help">Please Enter Email: </label>
						<input id="help" class="form-control mx-sm-3 mb-2"  type="text" name="email" required>
						<input id="usertype" type="hidden" name="type" value="heister">
					</div>
			
					<input class="form-control btn btn-primary mx-sm-3 mb-2" type="submit" value="Login"></div>
	
			</form>
		</div>
		</div>
				
	</div>


</body>
</html>