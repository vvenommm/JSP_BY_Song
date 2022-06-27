<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>param01_data.jsp</title>
</head>
<body>
<!-- 	요청이 끝날 때까지 request에 담고있음 -->
	<p>아이디 : <%=request.getParameter("id") %></p>
	<p>이  름 : <%=request.getParameter("name") %></p>
</body>
</html>
