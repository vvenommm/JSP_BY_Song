<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>validation03_process</title>
</head>
<body>
	<h3>입력에 성공했습니다.</h3><hr>
	<!-- validation02_process.jsp?id=a001*pass=java -->
	<%
		//문자 인코딩 유형 처리
		request.setCharacterEncoding("utf-8");
	
		//request객체 : JSP 내장 객체(pageContent, session, application, out, response..)
		String id = request.getParameter("id");
		String pass = request.getParameter("pass");
	%>
	<p>아이디 : <%=id %></p>
	<p>비밀번호 : <%=pass %></p>
</body>
</html>
