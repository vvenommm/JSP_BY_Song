<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ page isErrorPage = "true" %>
<!DOCTYPE html>
<html>
<head>
<title>Exception</title>
</head>
<body>
	<h2>오류 발생!!!</h2>
<!-- 	P.361 -->
<!-- 	exception : JSP에서 제공해주는 오류 처리용 기본 내장 객체 -->
<!-- 	<exception-type>java.lang.NullPointerException</exception-type> -->
	<p>예외 유형(toString()) : <%=exception.toString() %></p>
	<p>예외 유형(getClass().getName()) : <%=exception.getClass().getName() %></p>
	<p>오류 메시지 : <%=exception.getMessage() %></p>
</body>
</html>
