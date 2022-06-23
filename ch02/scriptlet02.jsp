<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>scriptlet02</title>
</head>
<body>

	<%
		//스크립트릿 태그
		for(int i = 0; i <= 10; i++){//0~10
			if(i%2 == 0){//짝수인 경우
				//JSP 기본 객체인 out 객체의 println 메소드를 통해
				//문자열 화면에 출력
				out.println(i + "<br />");
			}
		}
	%>
	
</body>
</html>
