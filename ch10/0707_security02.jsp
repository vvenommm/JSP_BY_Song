<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Security02</title>
</head>
<body>
<!-- 	security를 통해 로그인 한 사용자 아이디 role1=> {"role1", "both"} -->
	<p>사용자명 : <%= request.getRemoteUser()%></p>
	<p>인증방법 : <%= request.getAuthType()%></p> <!-- <role>에서 어떤 방법으로 인증한 것인지 -->
	<p>인증한 사용자명이 role(역할) "tomcat"에 속하는 사용자인가요?<br>
	-><%=request.isUserInRole("tomcat") %> </p> <!-- ture, false 반환 -->
	<p>인증한 사용자명이 role(역할) "role1"에 속하는 사용자인가요?<br>
	-><%=request.isUserInRole("role1") %> </p> <!-- ture, false 반환 -->
	
</body>
</html>
