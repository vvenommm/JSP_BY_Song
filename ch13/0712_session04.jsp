<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Session04</title>
</head>
<body>
	<!-- 	session01.jsp와 session01_process.jsp를 먼저 수행 후 -->
	<!-- 	session.setAttribute("id", id); //admin -->
	<!-- 	session.setAttribute("pass", pass); //java -->

<!-- 	P.430 -->
	<h4>-------세션 삭제 전--------</h4>
	<%
		String id = (String)session.getAttribute("id"); //admin
		String pass = (String)session.getAttribute("pass"); //java
		
		out.print("설정된 세션 이름 : " + id + "<br />");
		out.print("설정된 세션 비번 : " + pass + "<br />");
		
		out.print("============================<br />");
		
		session.removeAttribute("id");
	%>
	<h4>-------세션 삭제 후--------</h4>
	
	<%
		
		id = (String)session.getAttribute("id"); //admin
		pass = (String)session.getAttribute("pass"); //java
		
		out.print("설정된 세션 이름 : " + id + "<br />");
		out.print("설정된 세션 비번 : " + pass);
	%>

</body>
</html>
