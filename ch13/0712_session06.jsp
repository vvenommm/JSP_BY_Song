<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Session06</title>
</head>
<body>
	<!-- 	session01.jsp와 session01_process.jsp를 먼저 수행 후 -->
	<!-- 	session.setAttribute("id", id); //admin -->
	<!-- 	session.setAttribute("pass", pass); //java -->
	
	<h4>-------세션 삭제 전--------</h4>

	<%
		String id = (String)session.getAttribute("id"); //admin
		String pass = (String)session.getAttribute("pass"); //java
		
		//request 객체에 포함된 클라이언트 세션이 유효한지 체킹
		if(request.isRequestedSessionIdValid() == true){
			out.print("세션 유효");
		}else{
			out.print("세션 유효 X");
		}
		
		//세션에 저장된 모든 세션 속성 삭제 - 다중 세션 삭제
		session.invalidate();
		
	%>
	
	<h4>-------세션 삭제 후--------</h4>
	
	<%
		//request 객체에 포함된 클라이언트 세션이 유효한지 체킹
		if(request.isRequestedSessionIdValid() == true){
			out.print("세션 유효");
		}else{
			out.print("세션 유효 X");
		}
	%>
</body>
</html>
