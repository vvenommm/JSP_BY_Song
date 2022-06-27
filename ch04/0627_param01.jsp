<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>param01.jsp</title>
</head>
<body>
 	<h3>param 액션 태그</h3> <!-- -> buffer에서 사라짐 -->
 	<jsp:forward page="param01_data.jsp">
 		<jsp:param name="id" value="admin" />
 		<jsp:param name="name" value="후후" />
 	</jsp:forward>
 	<p>Java Server Page</p> <!-- 읽히지 않을 부분 -->
</body>
</html>
