<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
<title>Exception</title>
</head>
<body>
	<h2>오류 발생!!!</h2>
	<p>예외 : <%=exception %></p>
	<p>toString() : <%=exception.toString() %></p>
	<p>getClass().getName() : <%=exception.getClass().getName() %></p>
	<p>getMessage() : <%=exception.getMessage() %></p>
</body>
</html>
