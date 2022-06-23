<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet"
   href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<title>Welcome</title>
</head>
<body>
	
	<nav class="navbar navbar-expand navbar-dark bg-dark">
		<div class="container">
<!-- 			./ : 상대경로. welcome.jsp가 있는 현재 폴더위치 -->
			<a class="navbar-brand" href="./welcome.jsp">Home</a>
		</div>
	</nav>
	<%!
		//선언문(전역변수)
		String greeting = "Welcome to Web Shopping Mall";
		String tagline = "Welcome to 후후리 Market!";
	%>
	<!-- 표현문 -->
	<div class="jumbotron">
<!-- 	container : 내용이 들어갈 때 -->
		<div class="container">
			<h1 class="display-3"><%=greeting %></h1>
		</div>
	</div>
		<div class="container">
<!-- 		내용을 중간 정렬 -->
			<div class="text-center">
				<h3><%=tagline %></h3>
			</div>
		</div>
<!-- 	footer : 맨 하단에 들어가는 영역 -->
	<footer class="container">
		<p>&copy; HooMarket</p>
	</footer>
	
</body>
</html>
