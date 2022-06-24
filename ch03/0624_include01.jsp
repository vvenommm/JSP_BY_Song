<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Directives Tag</title>
</head>
<body>
<% String memId = "a001"; %>
	<%@ include file="include01_header.jsp" %>
	<h4>--------현재 페이지 영역-----------</h4>
	<!-- include directive의 가장 큰 단점 : 정적이다. 매개변수가 없기 때문에 ~.jsp?memId=memId처럼 받을 수 없음 -->
<%-- 	<%@ include file="include01_footer.jsp" %> 정적인 방법 --%>
	<jsp:include page="include01_footer.jsp" >
		<jsp:param value="<%=memId%>" name="memId" />
	</jsp:include>
</body>
</html>
