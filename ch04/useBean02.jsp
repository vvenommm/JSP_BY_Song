<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ page import="kr.or.ddit.dao.Calculator"%>
<!DOCTYPE html>
<html>
<head>
<title>useBean02.jsp</title>
</head>
<body>
<!-- 	자바 빈즈 액션 스크립트(자바빈 클래스는 아님) -->
	<jsp:useBean id="bean" class="kr.or.ddit.dao.Calculator" />
	<%
		//스크립트릿
// 		Calculator bean = new Calculator();
	
		//F3 = 해당 메소드로 이동. ctrl + F6 = 다시 돌아오기
		int m = bean.process(5);
		
		out.print("5의 3제곱 : " + m);
	%>
	
</body>
</html>
