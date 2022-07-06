<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Validation05</title>
</head>
<body>
	
	<%
		//문자 인코딩 유형 처리
		request.setCharacterEncoding("utf-8");
	%>
<!-- 	요청 파라미터. 파라미터 목록. name=value => VO 또는 Map -->
<!-- ?id=a001&pass=java -->
<p>아이디 : <%=request.getParameter("id") %></p>
<p>비밀번호 : <%=request.getParameter("pass") %></p>
<p>이름 : <%=request.getParameter("name") %></p>
<p>연락처 : <%=request.getParameter("ph1") %> -
			<%=request.getParameter("ph2") %> -
			<%=request.getParameter("ph3") %></p>
<p>이메일 : <%=request.getParameter("email") %></p>
	
</body>
</html>
