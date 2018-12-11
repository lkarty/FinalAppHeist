<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>

<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootswatch/4.1.3/minty/bootstrap.min.css" />

<meta charset="UTF-8">
<title>Results</title>
</head>
<body>

	<div class="container">
		<h1>Results</h1>


		<div class="row clearfix">
			<div class="col-md-12 column">
				<table class="table">
					<thead>
						<tr>
							<!-- <th>ID</th> -->
							<th>Title</th>
							<th>Medium</th>
							<th>Date</th>
							<!-- <th>Location</th> -->
							<th>Height</th>
							<th>Width</th>
							<th>Job Price</th>
							<th>Image</th>
						</tr>

					</thead>
					<c:forEach var="a" items="${art }">
						<tbody>
							<tr>
								<%-- <td>${a.id }</td> --%>
								<td>${a.title }</td>
								<td>${a.medium }</td>
								<td>${a.date }</td>
								<%-- <td>${a.location}</td> --%>
								<td>${a.dimensions.in.height }</td>
								<td>${a.dimensions.in.width }</td>
								<td>$$$$$</td>
								<td><img src="${a.links.image.img}"></td>

							</tr>

						</tbody>


					</c:forEach>
				</table>
			</div>
		</div>
	</div>

</body>
</html>