<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Title</title>
</head>
<body>
	<%
		String userid = request.getParameter("id");
		String password = request.getParameter("pass");
		
		//헤더에 있는 host라는 name에 맵핑되어 있는 값 보기
		String hostValue = request.getHeader("host");
		//헤더에 있는 accept-language라는 name에 맵핑 되어있는 값 보기
		String alValue = request.getHeader("accept-language");
	%>
	
	<p>아이디 : <%=userid %></p>
	<p>비밀번호 : <%=password %></p>
	<p>호스트명 : <%=hostValue %></p>
	<p>설정 언어 : <%=alValue %></p>
</body>
</html>
