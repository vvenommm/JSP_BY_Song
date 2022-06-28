<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>getProperty.jsp</title>
</head>
<body>

<!-- 	scope=request : 하나의 요청에 제한 -->
	<jsp:useBean id="person" class="kr.or.ddit.dao.Person" scope="request"/>
	
<!-- 	name : 객체명 / property : 멤버변수명(필드) -->
	<p>아이디 : <jsp:getProperty property="id" name="person" /></p>
	<p>이르음 : <jsp:getProperty property="name" name="person" /></p>
	
</body>
</html>
