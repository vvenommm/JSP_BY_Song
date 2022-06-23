<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Scripting Tag 3</title>
</head>
<body>
	<%!
		//선언문 태그 작성 -> 여기서 선언되면 전역변수
		//int : 리턴 타입(정수형), a / b : 정수형 매개변수
		//접근 제한자 생량 = 같은 패키지 내에서 접근 가능
		//전역 메소드
		int sum(int a, int b){
			return a + b;
		}
	%>
	<%
		//sum이라는 전역 메소드를 호출(두 개의 파라미터 전달)
		//out은 JSP에서 제공해주는 기본 객체
		out.println("<h2>2 + 3 = " + sum(2,3) + "</h2>");
		//스크립트릿에서 선언되는 변수는 지역변수
	%>
</body>
</html>
