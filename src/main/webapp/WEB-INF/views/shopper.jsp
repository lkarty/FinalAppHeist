<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootswatch/4.1.3/united/bootstrap.min.css" />

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Search Collection</title>
</head>
<body>

	<div class="container">


		<h1>Enter Bag Dimensions</h1>
		<p><em>Please format in inches using decimals</em></p>
		<form action="search">
			Width<input type="text" name="Width"> <input type="submit"
				value="search"><br>
				Height<input type="text" name="Height"> <input type="submit"
				value="search">
		</form>
		<br /> <br />

<%-- 		<div class="row clearfix">
			<div class="col-md-12 column">
				<table class="table table-bordered table-hover" id="tab_logic">
					<thead>
						<tr>
							<th class="text-center">Width</th>
							<th class="text-center">Height</th>
						</tr>
					</thead>
					<tbody>


						<c:forEach var="o" items="${orderlist}">
							<tr id='orders'>
								<td>${o.orderID}</td>
								<td>${o.orderDate}</td>
								<td>${o.shipCity}</td>

							</tr>
						</c:forEach>
						<tr id='orders'></tr>
					</tbody>
				</table>
			</div>
		</div>


	</div>
 --%>


</body>
</html>