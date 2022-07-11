<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>session01_process.jsp</title>
</head>
<body>
	
	<%
		String id = request.getParameter("id");
		String pass = request.getParameter("pass");
		
		//JSP에는 session 기본 내장 객체가 있음(scope는 session영역)
		//session 객체의 속성명인 userID에 매핑하여 user_id 변수의 값을 입력
		if(id.equals("admin")&&pass.equals("java")){
			
		session.setAttribute("id", id);
		session.setAttribute("pass", pass);
		
		out.print("세션 설정 성공<br />");
		out.print(id + "님 환영");
		}else{
			out.print("세션 설정 실패!");
		}
	%>
	
</body>
</html>
