<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>File Upload</title>
</head>
<body>
	<!--
			꼭 기억하기!!!!
								★☆★☆★☆ 1. form태그 2. post방식 3. multipart/form-data 4. file ☆★☆★☆★
	-->
	<form name="fileForm" action="fileupload04_process.jsp" method="post" enctype="multipart/form-data">
		<p>이름 : <input type="text" name="name" /></p>
		<p>제목 : <input type="text" name="subject" /></p>
		<p>파일 : <input type="file" name="filename" /></p>
		<p><input type="text" name="name" /></p>
	</form>
	
	<%
		
	%>
	
</body>
</html>
