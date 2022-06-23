<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Welcome</title>
</head>
<body>

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
