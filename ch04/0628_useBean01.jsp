<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>useBean.jsp</title>
</head>
<body>
	<jsp:useBean id="date" class="java.util.Date" />
	<%
		//8번 라인과 같이 쓰면 duplicate 오류 생김
// 		Date date = new Date();
	%>
	<p>
		<%
			//스크립트릿
			out.print("오늘의 날짜 및 시각 : ");
		%>
	</p>
<!-- 	표현식 -->
	<p><%=date %></p>
</body>
</html>
