<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Title</title>
</head>
<body>
	<%
		String userid = request.getParameter("id");
		String password = request.getParameter("pass");
	%>
	
	<p>아이디 : <%=userid %></p>
	<p>비밀번호 : <%=password %></p>
</body>
</html>
