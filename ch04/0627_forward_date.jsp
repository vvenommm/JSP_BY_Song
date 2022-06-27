<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>forward_date.jsp</title>
</head>
<body>
	<p>오늘의 날짜 및 시간</p>
<!-- 	toLocaleString 메소드 : 현재 Locale(지역)의 날짜를 얻어옴 -->
	<p><%=(new Date()).toLocaleString() %></p>
	
</body>
</html>
