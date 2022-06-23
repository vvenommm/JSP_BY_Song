<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Scripting Tag</title>
</head>
<body>
	<h2>Scripting Tag</h2>
	<%!
		//선언문 태그 사용
		//전역변수 선언
		int count = 3;
	
		//전역 메소드. 영문 소문자로 변환하여 리턴
		//String : 리턴타입, data : 파라미터(인수)를 받아들이는 매개변수
		//접근제한자 생략 시 open 범위는? -> 패키지
		String makeItLower(String data){
			return data.toLowerCase();
		}
	%>
	
	<%
		//스크립트릿 태그(자바 로직 코드 작성)
		//지역변수 i를 사용하고 1부터 3까지 1씩 증가
		//out은 JSP의 기본 객체(화면에 출력 대상 문자열을 출력)
		for(int i = 1; i <= count; i++){
			out.println("Java Server Page : " + i + "<br />");
		}
	%>
	<!-- 표현문 태그. 선언문의 메소드 호출 -> 소문자로 변환하여 리턴) -->
	<%=makeItLower("Hello World") %>

</body>
</html>
