<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Validation</title>
<script type="text/javascript">
	//핸들러함수
	function checkLogin(){
		let form = document.loginForm;
		if(form.id.value==""){
			alert("아이디를 입력해주세요");
			form.id.focus(); //해당 입력 항목에 커서가 위치함
			return false; //여기서 멈추어라
		}//위의 분기문을 잘 통과했다면
		form.submit(); //validation02_process.jsp를 요청
	}
</script>
</head>
<body>
	<form name="loginForm" action="validation02_process.jsp" method="post">
		<p>아이디 : <input type="text" name="id" /></p>
		<p>비밀번호 : <input type="password" name="pass" /></p>
		<p><input type="button" value="전송" onclick="checkLogin()"/></p>
	</form>
</body>
</html>
