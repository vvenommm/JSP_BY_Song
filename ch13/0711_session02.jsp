<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Session02</title>
</head>
<body>

	<%
		String id = (String)session.getAttribute("id"); //admin
		String pass = (String)session.getAttribute("pass"); //java
		
		out.print("설정된 세션의 속성 값[1] : " + id + "<br />");
		out.print("설정된 세션의 속성 값[2] : " + pass);
	%>
	
</body>
</html>
