<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home Page</title>
</head>
<body>
	<div>
		<h3>Welcome to e-Library Service (FrontController With FlowManager)</h3>
		<c:set var="name" scope="session" value="${auth_user.username}"/>
		<c:if test="${not empty name}">
			<p><font color="blue">Logged in as: ${name}</font></p>
		</c:if>		
		<p><font color="red">${message}</font></p>
	</div>

	<div class="text-left">
		<p>
			<a href="/library">Home</a> | <a href="do/viewbooks">View Books</a> | 
			<a href="do/addbookform">Add Book</a> 
		</p>		
	</div>

	<div>
		<c:if test="${not empty name}">
			<a href="do/logout">Logout</a>
		</c:if>
	</div>

</body>
</html>