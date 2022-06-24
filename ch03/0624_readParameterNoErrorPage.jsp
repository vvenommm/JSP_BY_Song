<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ page errorPage="./viewErrorMessage.jsp" %>
<!DOCTYPE html>
<html>
<head>
<title>목적 : 파라미터 출력</title>
</head>
<body>
<!-- readParameterNoErrorPage.jsp?name=후후리 -->
<!-- 클라이언트(크롬), 서버(톰캣) -->
<!-- toUpperCase() 대문자로 변환 -->
<!-- /readParameterNoErrorPage.jsp => 오류 -> null을 대문자로 변환불가 -->
name 파라미터 값 : <%=request.getParameter("name").toUpperCase()%>
<!--
	오류 처리 방법
	1. page 디렉티브의 errorPage 속성에 지정한 오류 페이지
		- 전용 오류 페이지가 필요한 경우
	2. web.xml의 exception-type
		- 범용적인(자주 발생) 오류 코드(404, 500)
	3. web.xml의 error-code
		- 별도로 처리해야 하는 exception(심각할 때..)
-->
	
</body>
</html>
