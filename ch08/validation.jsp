<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Validation</title>
</head>
<script type="text/javascript">
	function checkForm(){
		var id = document.loginForm.id.value;
		var pass = document.loginForm.pass.value;
		alert("아이디 : " + id + "\n비밀번호 : " + pass);
	}
</script>
<body>
<!-- body와 body 사이 = document -->
	<form name="loginForm">
		<p>아이디 : <input type="text" name="id" /></p>
		<p>비밀번호 : <input type="password" name="pass" /></p>
		<p><input type="submit" value="전송" onclick="checkForm()"/></p> <!-- onclick에 핸들러 함수 작성 -->
	</form>
</body>
</html>
