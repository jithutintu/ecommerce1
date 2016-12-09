<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>

<!-- 	navigation Bar -->
<%@ include file="common-header.jsp"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Users</title>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
	<div class="container" id="productTable" style="width:1145px;margin-bottom: 180px;">
		<h2>User Management</h2>
		<p>The List of Users in our Database</p>
		<table class="table table-hover" id="productList">
			<thead>
				<tr>
					<th>User Name</th>
					<th>Address</th>
					<th>Email</th>
					<th>Phone Number</th>
					<th>password</th>
					<th>RoleType</th>
					<th>ZipCode</th>
					<th>DELETE</th>
					
					
					
					
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${users}" var="user">
					<tr>
						<td>${user.name}</td>
						<td>${user.address}</td>
						<td>${user.email}</td>
						<td>${user.mobile}</td>
						<td>${user.password}</td>
						<td>${user.role}</td>
					<td>${user.zipCode}</td>
						
						<td>
						    <a href="delete/${user.name}"> <span
								class="glyphicon glyphicon-trash"></span></a></td>  
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>
