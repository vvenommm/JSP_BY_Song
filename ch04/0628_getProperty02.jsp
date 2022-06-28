<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>getProperty02.jsp</title>
</head>
<body>
	<jsp:useBean id="person" class="kr.or.ddit.dao.Person" scope="request"/>
<!-- 	id : 20182005 / name : 후후 -->
	<jsp:setProperty property="id" name="person" value="20182005"/>
	<jsp:setProperty property="name" name="person" value="후후"/>
	
	<p>ID : <jsp:getProperty property="id" name="person"/></p>
	<p>NM : <jsp:getProperty property="name" name="person"/></p>
	
</body>
</html>
