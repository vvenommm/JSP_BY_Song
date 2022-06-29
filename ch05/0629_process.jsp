<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Title</title>
</head>
<body>

	<%
		//스크립트릿
		request.setCharacterEncoding("utf-8");
	
		//request 내장 객체가 {name=개똥이} 요청 파라미터를 보유
		String name = request.getParameter("name");
	%>
<!-- 	표현문 -->
	<p>이름 : <%=name %></p>
	
</body>
</html>
