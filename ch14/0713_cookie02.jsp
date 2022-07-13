<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>cookie02.jsp</title>
</head>
<body>

	<%
		//모든 쿠키 정보 가져와보자 the info saved from cookie01.jsp
		Cookie[] cookies = request.getCookies();
	
		//현재 설정된 쿠키의 개수?
		out.print("현재 설정된 쿠키 개수 : " + cookies.length + "<br />");
		out.print("<hr />");
		
		for(int i = 0; i < cookies.length; i++){
			//쿠키 속성 이름
			out.print("설정된 쿠키의 속성 이름 [" + i + "] : " + cookies[i].getName() + "<br />");
			
			//쿠키 속성 값
			out.print("설정된 쿠키의 속성 이름 [" + i + "] : " + cookies[i].getValue() + "<br />");
			out.print("===========================================<br />");
		}
	%>
	
</body>
</html>
