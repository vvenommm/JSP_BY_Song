<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Session03</title>
</head>
<body>

	<%
		Enumeration en = session.getAttributeNames(); //id, pass 열거형
		String name;
		String value;
		int i = 0;
		
		//세션 속성 이름이 있을 떄까지 반복
		while(en.hasMoreElements()){
			name = en.nextElement().toString(); //이름을 String으로 가져옴
			value = session.getAttribute(name).toString();
			
			out.print("설정된 세션 속성 명 [" + i + "] : " + name + "<br />");
			out.print("설정된 세션 속성 값 [" + i + "] : " + value + "<br />");
			out.print("<hr />");
		}
	%>
	
</body>
</html>
