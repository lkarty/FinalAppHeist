<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Artworks</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootswatch/4.1.3/lux/bootstrap.min.css" />

</head>
<body>
	<div class="container">
		<h1>Artworks</h1>

		<table class="table">
			<thead>
				<tr>
					<th>Title</th>
					<th>Medium</th>
					<th>Date</th>
					<th>Height</th>
					<th>Width</th>
					<th>Price</th>
					<th>Image</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="a" items="${art }" varStatus="count">

					<tr>
						<%-- <td>${a.id }</td> --%>
						<td>${a.title }</td>
						<td>${a.medium }</td>
						<td>${a.date }</td>
						<%-- <td>${a.location}</td> --%>
						<td>${a.dimensions.in.height }</td>
						<td>${a.dimensions.in.width }</td>
						<td>$$$$<br>
						<a
							href="add-job?title=${a.title }&medium=${a.medium }&date=${a.date }&i=${count.index}"
							class="btn btn-primary">Add to Job</a></td>
						<td><img src="${a.links.image.img}"></td>

					</tr>
				</c:forEach>
			</tbody>
		</table>

	</div>
</body>
</html>