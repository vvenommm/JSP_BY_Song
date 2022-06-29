<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Implicit Object(내장 객체)</title>
</head>
<body>

	<%
		//모든 헤더의 이름을 가져와보자 => 담길 그릇 필요 => 리턴 타입 : Enumeration(열거형)
		Enumeration en = request.getHeaderNames();
		
		//hasMoreElements() : 값이 있을 때에만 반복
		while(en.hasMoreElements()){
			//현재 헤더 이름 가져옴(Object(컵) -> String(텀블러)로 downcasting)
			String headerName = (String)en.nextElement();
			
			//request.getHeader("host"); headerName : host
			String headerValue = request.getHeader(headerName);
			out.print(headerName + " : " + headerValue + "<br>");
		}
	%>
</body>
</html>
