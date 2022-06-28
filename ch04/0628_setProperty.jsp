<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>setProperty.jsp</title>
</head>
<body>
<!-- 현재 값	id : 20181004 / name : 후후 -->
	<jsp:useBean id="person" class="kr.or.ddit.dao.Person" scope="request" />
<!-- 	name : 객체명 / property : 멤버변수 / value : set할 값 -->
	<jsp:setProperty property="id" name="person" value="20182005" />
	<jsp:setProperty property="name" name="person" value="후후" />

	<p>아이디 : <%=person.getId() %></p> 
	<p>이르음 : <%=person.getName() %></p> 

	<%
		
	%>
	
</body>
</html>
