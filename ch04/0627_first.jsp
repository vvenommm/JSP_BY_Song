<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Action Tag</title>
</head>
<body>

	<h3>이 파일은 first.jsp입니다.</h3>
<!-- 	둘 중 아무거나 써도 되지만 닫는 태그를 따로 써줄 때는 jsp:param을 같이 써야할 때 주로 씀 -->
<%-- 	<jsp:forward page="second.jsp" /> --%>
	<jsp:forward page="second.jsp">
		<jsp:param value="<%=new java.util.Date() %>" name="date"/>
	</jsp:forward>
 	<p>===first.jsp의 페이지===</p> <!-- -> forward를 만나는 순간 출력버퍼 flush. 이 줄은 버퍼에 쌓이지도 않음 -->
</body>
</html>
