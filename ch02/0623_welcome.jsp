<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet"
   href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<title>Welcome</title>
</head>
<body>
	
	<nav class="navbar navbar-expand navbar-dark bg-dark">
		<div class="container">
			<a class="navbar-brand" href="./welcome.jsp">Home</a>
		</div>
	</nav>
	<%!
		//선언문(전역변수)
		String greeting = "Welcome to Web Shopping Mall";
		String tagline = "Welcome to 후후리 Market!";
	%>
	<!-- 표현문 -->
	<h1><%=greeting %></h1>
	<h2><%=tagline %></h2>
	
</body>
</html>
