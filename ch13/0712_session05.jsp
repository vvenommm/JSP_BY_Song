<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Session05</title>
</head>
<body>
	<h4>-------세션 삭제 전-------</h4>
	<%
		String name;
		String value;
		//세션의 모든 이름을 열거형으로 가져오자
		Enumeration en = session.getAttributeNames();
		
		//세션의 개수 카운트
		int i = 0;
	
		while(en.hasMoreElements()){
			//name : 세션명
			name = en.nextElement().toString();
		
			//세션의 이름에 매핑된 값
			value = session.getAttribute(name).toString();
			
			out.print("설정된 세션의 이름[" + ++i + "] : " + name + "<br />");
			out.print("설정된 세션의 값 [" + ++i + "] : " + value + "<br />");
		}
		
		session.removeAttribute("id");
	%>
	<h4>-------세션 삭제 후-------</h4>
	
	<%
		i = 0;
		en = session.getAttributeNames();
	
		while(en.hasMoreElements()){
			//name : 세션명
			name = en.nextElement().toString();
		
			//세션의 이름에 매핑된 값
			value = session.getAttribute(name).toString();
			
			out.print("설정된 세션의 이름[" + ++i + "] : " + name + "<br />");
			out.print("설정된 세션의 값 [" + ++i + "] : " + value + "<br />");
		}
	%>
	
</body>
</html>
