<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Implicit Objects</title>
</head>
<body>
	<p>이 페이지는 5초마다 새로고침</p>
	
	<%
		response.setIntHeader("Refresh", 5);
	%>
	<p><%=new Date().toLocaleString() %></p>
</body>
</html>
